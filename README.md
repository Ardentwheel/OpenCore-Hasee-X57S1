# OpenCore For Hasee KingBook X57S1

 - OpenCore 0.6.1
 - Intel Core i7-1065G7
 - Hasee HINS02   ( Intel 495 Series Chipset, Intel Ice Point-LP, Intel Ice Lake-U )
 - Memory 8 GB DDR4-2666 x2
 - Realtek ALC256
 - Intel(R) Wi-Fi 6 AX201 160MHz
 - BOEhydis NV156FHM-N61 [15.6" LCD]
 - [Geekbench Score] / [OpenCL Score] / [Metal Score]

---

### Functionality
 - [x] CPU Speedstep (XCPM)
 - [x] [4CH Audio] (4 Speaker )
 - [ ] Headphone
 - [ ] HDMI (Video And Audio)
 - [x] Battery Management
 - [x] Usb (Built In)
 - [ ] Thunderbolt 3
 - [x] Wireless Network (AX201)
 - [x] Bluetooth
 - [x] Backlight
 - [x] Fn Brightness Keys
 - [x] I2C Touchpad (GPIO Mode) (IPIC IRQ 2 Disable)(Big Thanks to [ben9923])
 - [x] Sleep From (Fn+Esc Key)
 - [ ] Sleep From (Lid)
 - [ ] Wake Up (Usb Device)(Can not wake when lid have been closed)
 - [ ] Wake Up (PS/2 Keyboard)
 - [ ] Wake Up (Lid)
 - [ ] Power Nap
 - [x] WebCam
 - [x] SDHC CardReader


#### How To Use
 1. Copy EFI folder to ESP/EFI Partition in bootable USB flash drive.
 2. Install Mac OS X.
 3. Copy EFI folder to ESP/EFI Partition in HDD/SSD disk.
 5. [Modify BIOS For Advanced Setting] (Possible Collapse BIOS, IF YOU NOT DO IT RIGHT)
 6. Disable CFG Lock, Change DVMT to 128MB, And Disable CFG Fix in config.plist


### Tools
  - [OpenCorePkg]
  - [Hackintool]
  - [Maciasl]
  - [DarwinDumper]
  - [BootDiskUtility]


### Reference
  - [Brightness-Keys](https://www.tonymacx86.com/threads/guide-patching-dsdt-ssdt-for-laptop-backlight-control.152659/)
  - [Battery Patching](https://github.com/daliansky/OC-little/tree/master/08-%E7%94%B5%E6%B1%A0%E8%A1%A5%E4%B8%81)
  - [I2C Patching](https://www.penghubingzhou.cn/2019/01/06/VoodooI2C%20DSDT%20Edit/)


### Thanks
* Collaborateur [m0d16l14n1]
* I2C Touchpad Helper [ben9923] & [zhen-zen]
* [OC-little]


[Geekbench Score]:<https://browser.geekbench.com/v5/cpu/3534153>
[OpenCL Score]:<https://browser.geekbench.com/v5/compute/1430453>
[Metal Score]:<https://browser.geekbench.com/v5/compute/1430464>

[OpenCorePkg]: <https://github.com/acidanthera/OpenCorePkg>
[Hackintool]: <https://github.com/headkaze/Hackintool>
[Maciasl]: <https://sourceforge.net/projects/maciasl/>
[DarwinDumper]: <https://bitbucket.org/blackosx/darwindumper>
[BootDiskUtility]: <http://cvad-mac.narod.ru/>

[Modify BIOS For Advanced Setting]: <https://github.com/Ardentwheel/OpenCore-Hasee-X57S1/tree/master/Tools/BIOS>
[4CH Audio]: <https://github.com/acidanthera/AppleALC/pull/601>

[ben9923]: <https://github.com/ben9923>
[m0d16l14n1]: <https://github.com/m0d16l14n1>
[zhen-zen]: <https://github.com/zhen-zen>

[OC-little]: <https://github.com/daliansky/OC-little>
