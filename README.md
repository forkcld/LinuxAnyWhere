LinuxAnyWhere
===============================================

This is an chroot system manager running as a magisk mod.

## Installation
+ Install magisk: <https://github.com/topjohnwu/Magisk>
+ Download the zip file and install it via the Magisk Manager app.

## Configuration

Copy a linux sysroot directory to /data/{your linux sysroot}

## Usage

Create a file at /data/adb/modules/linuxbase_bc86fef53bb3/etc/system.up.list.d/{your linux sysroot} which is named same as /data/{your linux sysroot}.
Do not forget enable mod start up in magisk manager.
Finally reboot your device, linux system will be running.

## Uninstallation

Remove mod via magisk manager uninstall panel
