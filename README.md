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
|[PRO+](http://code-ing.com/pixierepo/release/images/PixieQP4GCoreImage.zip)|QuadPlus Core, 4GB of RAM, LTE 4G |
|[PRO](http://code-ing.com/pixierepo/release/images/PixieQCoreImage.zip) | Quad Core, 2GB of RAM, LTE 4G |
|[DUO](http://code-ing.com/pixierepo/release/images/PixieDLCoreImage.zip) | Dual Lite Core, 1GB of RAM, GSM 3G |

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

