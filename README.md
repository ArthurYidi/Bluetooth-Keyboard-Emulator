# Bluetooth Keyboard Emulator
Swift Bluetooth HID Keyboard Emulator

### After the release of macOS Catalina (10.15), I‘m unable to pair devices and publish HID services using Bluetooth Classic. Also Bluetooth LE (Low Energy) as provided by the “Core Bluetooth” APIs explicitly disallows publishing HID GATT service (0x1812) since macOS ~10.11. 🤷‍♂️

## How to Use

- Run the Xcode project

From your phone/tablet:

- Go to Bluetooth settings
- If already paired with desktop, then "Forget the Device"
- Connect to your dekstop.
- Start Typing!

## Source Files

- **BTKeyboard.swift**

  Creates a Bluetooth SDP service using **SerialPortDictionary.plist** and listens for incoming connections.

- **KeyCodes.swift**

  Converts virtual key codes (the number assigned to keys according NSEvent) to HID key codes (as specified in the USB specification).

- **AppDelegate.swift**

  Initializes BTKeyboard then uses CGEventTap to get keyboard events and send them to the connected Bluetooth device.

- **SerialPortDictionary.plist**

  A service record with a Human Interface Device Profile (HID). The HID profile describes a keyboard and the report used is outlined in **HIDReportDescriptor.txt**

- **HIDReportDescriptor.txt**

  The parsed HIDReportDescriptor outlines how the bytes are described for a generic keyboard. 
