import argparse
import serial
import sys
import time


def main():
    parser = argparse.ArgumentParser(description="UART Echo Server Test Script")
    parser.add_argument("port", help="COM port (e.g., COM3 or /dev/ttyUSB0)")
    parser.add_argument(
        "--baud", type=int, default=115200, help="Baud rate (default: 115200)"
    )

    args = parser.parse_args()

    try:
        # Open the serial port with a short timeout for reading
        ser = serial.Serial(args.port, args.baud, timeout=0.5)
        print(f"Connected to {args.port} at {args.baud} baud.")
        print("Type a message and press Enter to send. Type 'exit' to quit.\n")

        while True:
            # Get input from the user
            user_input = input("Send: ")

            if user_input.strip().lower() == "exit":
                print("Closing connection.")
                break

            # Convert string to bytes
            # We append \r\n so you can see if the terminal handles line endings correctly
            data_to_send = (user_input + "\r\n").encode("utf-8")

            # Send the data to the FPGA
            ser.write(data_to_send)

            # Wait briefly to allow the CPU to read the RX FIFO and write to the TX FIFO
            time.sleep(0.05)

            # Read all available bytes sitting in the OS receive buffer
            response_bytes = ser.read_all()

            if response_bytes:
                # Decode the response, ignoring any garbage characters caused by noise
                response_str = response_bytes.decode("utf-8", errors="replace").strip()
                print(f"Echo: {response_str}\n")
            else:
                print(
                    "Echo: [No response received - check your UART TX/RX wiring or baud rate]\n"
                )

    except serial.SerialException as e:
        print(f"\nSerial port error: {e}")
        sys.exit(1)
    except KeyboardInterrupt:
        print("\nExiting script.")
    finally:
        if "ser" in locals() and ser.is_open:
            ser.close()


if __name__ == "__main__":
    main()
