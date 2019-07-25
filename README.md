# pixieboard-setup

Here we'll link to many resources that allow for a fast an effective setup of Pixieboard. All items previously in Treats4geeks.org will be migrated here.

## About Pixieboard and Resources

Pixieboard is a hardware platform that runs Linux and has amazing wireless features created by [Code & Modules Inc.](https://codeandmodules.com)

A countinuous effor to publish tutorials and how-to guides is available in [Medium Pixieboard](https://medium.com/pixieboard)

If you just got your pixieboard and don't know where to start, I recommend to follow [this guide](https://medium.com/pixieboard/getting-started-with-pixieboard-7e977ee6d276).

## OS Images

We maintain a set of Arch Linux images that you can download from the links below:

|Version | Description                      |
|--------|----------------------------------|
|[PRO+](https://s3-us-west-1.amazonaws.com/pxlinux/LATEST/PXBoardQP4G-latest.img.zip)|QuadPlus Core, 4GB of RAM, LTE 4G |
|[PRO](https://s3-us-west-1.amazonaws.com/pxlinux/LATEST/PXBoardQ-latest.img.zip) | Quad Core, 2GB of RAM, LTE 4G |
|[DUO](https://code-ing.com/pixierepo/release/images/latest/PixieDLCoreImage.zip) | Dual Lite Core, 1GB of RAM, GSM 3G |

If you have any questions, please contact @rhimmelbauer for support.


## Quick setup:

For a quick automated setup, just follow the steps below (script is very simple so theres no guarantee): 
Clone this repo and run quick setup script
```
sudo pacman -Sy
sudo pacman -S git
git clone https://github.com/pixierepo/pixieboard-setup
cd pixieboard-setup/scripts
sudo sh quick-conf.sh
```

## Change Log
### 11-12-2018 USB enabled after Modem is Enabled
- Rule 'blacklist option' added in /etc/modprobe.d/blacklist.conf
- New file 51-gsm.rules created under /etc/udev/rules.d/
  This file is a udev rule that loads the 'option' kernel module to enable the ttyUSB ports for the gsm module.
  The kernel module is loaded when the parameters in the file match with the events of the kernels
  
  
