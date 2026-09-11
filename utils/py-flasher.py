import argparse
import serial
import sys
import os
import struct

SYNC_BYTE = 0x55
CMD_WRITE = 0x01
UART_ACK = 0x06
UART_NACK = 0x15


def calculate_checksum(cmd, addr_bytes, data_bytes):
    """
    CHECKSUM = command XOR address bytes XOR data bytes.
    Sync byte is not included.
    """
    checksum = cmd
    for b in addr_bytes:
        checksum ^= b
    for b in data_bytes:
        checksum ^= b
    return checksum


def send_write_packet(ser, address, data_word):
    """
    Sends one bootloader WRITE packet and waits for an ACK.
    """
    # Convert address to 4 bytes (Big Endian)
    addr_bytes = struct.pack(">I", address)

    # Calculate checksum
    checksum = calculate_checksum(CMD_WRITE, addr_bytes, data_word)

    # Construct packet
    packet = bytearray([SYNC_BYTE, CMD_WRITE])
    packet.extend(addr_bytes)
    packet.extend(data_word)
    packet.append(checksum)

    # Send over UART
    ser.write(packet)

    # Wait for response (1 byte)
    response = ser.read(1)

    if len(response) == 0:
        raise TimeoutError(
            f"UART timeout waiting for response at address 0x{address:08X}"
        )

    resp_byte = response[0]
    if resp_byte == UART_ACK:
        return True
    elif resp_byte == UART_NACK:
        raise RuntimeError(
            f"NACK (0x15) received from bootloader at address 0x{address:08X}"
        )
    else:
        raise RuntimeError(
            f"Unexpected response (0x{resp_byte:02X}) at address 0x{address:08X}"
        )


def main():
    parser = argparse.ArgumentParser(
        description="UART Binary Uploader based on VHDL Testbench"
    )
    parser.add_argument("port", help="COM port (e.g., COM3 or /dev/ttyUSB0)")
    parser.add_argument("file", help="Path to the binary file to upload")
    parser.add_argument(
        "--baud", type=int, default=115200, help="Baud rate (default: 115200)"
    )
    parser.add_argument(
        "--address",
        type=lambda x: int(x, 0),
        default=0x00000000,
        help="Base address to start writing (default: 0x00000000)",
    )

    args = parser.parse_args()

    if not os.path.exists(args.file):
        print(f"Error: File '{args.file}' not found.")
        sys.exit(1)

    # Read the binary file
    with open(args.file, "rb") as f:
        bin_data = f.read()

    # The VHDL writes in 32-bit (4-byte) words. Pad the file if it's not a multiple of 4.
    padding_needed = (4 - (len(bin_data) % 4)) % 4
    if padding_needed > 0:
        print(
            f"Padding binary file with {padding_needed} bytes of 0xFF to align to 32-bit words."
        )
        bin_data += b"\xff" * padding_needed

    total_words = len(bin_data) // 4
    print(
        f"Uploading {len(bin_data)} bytes ({total_words} words) to {args.port} at {args.baud} baud..."
    )

    try:
        # Open serial port
        with serial.Serial(args.port, args.baud, timeout=1.0) as ser:
            current_address = args.address

            for i in range(total_words):
                # Extract 4-byte chunk
                chunk_start = i * 4
                data_word = bin_data[chunk_start : chunk_start + 4]

                # Send the packet
                send_write_packet(ser, current_address, data_word)

                # Print progress
                if (i + 1) % 128 == 0 or i == total_words - 1:
                    progress = (i + 1) / total_words * 100
                    print(
                        f"\rProgress: [{int(progress)}%] Wrote to 0x{current_address:08X}",
                        end="",
                    )

                # Increment address by 4 bytes for the next word
                current_address += 4

            print("\nUpload complete successfully!")

    except serial.SerialException as e:
        print(f"\nSerial Port Error: {e}")
        sys.exit(1)
    except Exception as e:
        print(f"\nUpload Failed: {e}")
        sys.exit(1)


if __name__ == "__main__":
    main()
