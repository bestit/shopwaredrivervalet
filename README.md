# ShopwareValetDriver
## General
This is a shopware custom driver for valet additionally shipped with a build file to automate install process of shopware in general.
## Requirements
Your host need to have the following packages:
* valet (with all his deps)
* ant (for shopware)

## Configuration
The shipped build.sh file contains database credentials, adjust to your needs.

## Installation
1. Just clone this repository to your local Workspace.
2. Symlink the driver to your valet install dir e.g.:
```
cd ~/.valet/Drivers
ln -s ~/Workspace/shopwaredrivervalet/ShopwareValetDriver.php .
```
3. Copy the shipped build.sh file to your shopware directory
```
cp ~/Workspace/shopwarevaletdriver/build.sh ~/Workspace/shopware-5.2.24/
```
4. run the build file to install shopware and load the images
```
~/Workspace/shopware-5.2.24/build.sh
```
5. Open e.g. http://shopware-5.2.24.dev/ (depends on your valet config) and you're done.