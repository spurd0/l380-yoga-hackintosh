# macOS on Lenovo ThinkPad L380 Yoga

This repository contains a sample configuration to run macOS (Mojave `10.14`) on a Lenovo ThinkPad L380 Yoga

## Used Hardware Configuration

- Lenovo ThinkPad L380 Yoga
  - Intel i5-8250U
  - Broadcom BCM94352Z (original Intel AC8265 not working)
  - Realtek ALC257 by `AppleALC.kext` with `layout-id` 11 (requies a [patch][alc], already patched in this repo)
  - Intel UHD Graphics 620
  - Integrated camera (works out of the box)
  - Keyboard/Elan Touchpad (PS/2) using `VoodooPS2Controller.kext`.

- Disabled devices
  - SD card reader
  - Fingerprint scanner
  - Thunderbolt 3 (USB type-c maybe too)
  - Limited Touchpad functional using `VoodooI2CHID`, `VoodooI2CELAN.kext` doesn't support our touchpad.
- Firmware Revisions
  - BIOS version `1.20`
- WIP
  - USB mapping

## Preparation

* Disable Secure Boot in BIOS
* Boot from USB, Install macOS.
* Install CLOVER to disk, select UEFI only.
* Copy all repo files to EFI/CLOVER.
* Install all kexts from folder into Library/Extensions. I used [Hackintool](http://headsoft.com.au/download/mac/Hackintool.zip) for it.
* Apply patches from `patches` directory. Used [MaciASL](https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads/RehabMan-MaciASL-2018-0507.zip). Save as asl & put it to `ACPI/patched`.
* OSX power managment
  - Disable "Wake for Network Access" & "Power Nap"
  - Execute in terminal: `sudo pmset -a proximitywake 0`
  - Go to `/Library/Preferences` and delete all the com.apple.PowerManagement.* files then reboot
* Enjoy!

## Credits

- [linusyang92/macOS-ThinkPad-T480s](https://github.com/linusyang92/macOS-ThinkPad-T480s) - thanks for starting
- [Sniki/Lenovo-V330-15IKB](https://github.com/Sniki/Lenovo-V330-15IKB) - thanks for fixing
