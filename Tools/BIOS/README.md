# Modify BIOS For Advanced Setting
 1. [Extract BIOS](#extract-bios)
 2. [Extract Modula AMITSE](#extract-modula-amitse)
 3. [Modify AMITSE](#modify-amitse)
 4. [Merge](#merge)
 5. [Flash BIOS](#flash-bios)
 6. [Modified BIOS Firmware Download](#modified-bios-firmware-download)
 7. [Thanks](#thanks)

---

## [Extract BIOS](#extract-bios)
 #### 1. Download [Intel CSME System Tools]

 > Or Find it on [Intel Management Engine] Page

 #### 2. Command Line   
```
    FPTW64.exe -d backup.bin -bios
```

## [Extract Modula AMITSE](#extract-modula-amitse)
  #### 1. Download [UEFITool]
    
  #### 2. Search `AMITSE`, And find the on with 'PE32 image section'
  
  ![UEFITool-img]

  #### 3. Extract it’s Body

## [Modify AMITSE](#modify-amitse)
  #### 1. Download [HexFiend]
    
  #### 2. Find `4A10 597B 0DC0 5841 87FF F04D 6396 A915`
    
  ![Original-img]
    
  #### 3. Section Chart To Hex

|  Hex  | Section |
| ----- | ------- |
| 11 27 | Main |
| 12 27 | Advanced |
| 13 27 | Chipset |
| 14 27 | Security |
| 15 27 | Boot |
| 16 27 | Save & Exit |

  #### 3.  Change Hex Value

  ![Modified-img]
  
  #### 4. !!! Don’t break the File !!!

  ![Attention-img]

## [Merge](#merge)
  #### Back to UEFITool And Replace Body

  ![Replace-img]

## [Flash BIOS](#flash-bios)
```
 FPTW64.exe -f bios_all_new.rom -bios
```

---

## [Modified BIOS Firmware Download](#modified-bios-firmware-download)

#### 1.Modified Advanced Setting
[IN1V105_Hasee-Advanced.rom]
#### 2.Modified Advanced Setting & Updated GOPDriver & vbt
[IIN1V105_Hasee-Advanced-GOP-vbt.rom]

> Intel GopDriver v14.0.1039 for IceLake CPU Graphics Adapters
Intel vbt v230 for IceLake CPU Graphics Adapters
from [Phoenix48]
(Use at your own risk)


## [Thanks](#thanks)
[m0d16l14n1] For uploading IN1V105 firmware.



[UEFITool]:<https://github.com/LongSoft/UEFITool/releases>
[HexFiend]:<https://ridiculousfish.com/hexfiend/>
[Intel Management Engine]:<https://www.win-raid.com/t596f39-Intel-Management-Engine-Drivers-Firmware-amp-System-Tools.html>
[Intel CSME System Tools]:<https://mega.nz/file/GMlyCCLa#j2EG3Pzj3ooa9q6bunec-Zr4RzYNWU5urgFNRk3uHU4>
[Phoenix48]:<https://www.win-raid.com/t5360f13-EFI-LAN-BIOS-Intel-GopDriver-modules.html>

[UEFITool-img]: img/UEFITool.png
[Original-img]: img/Original.png
[Modified-img]: img/Modified.png
[Attention-img]: img/Attention.png
[Replace-img]: img/Replace.png

[IN1V105_Hasee-Advanced.rom]: firmware/IN1V105_Hasee-Advanced.rom
[IIN1V105_Hasee-Advanced-GOP-vbt.rom]: firmware/IIN1V105_Hasee-Advanced-GOP-vbt.rom

[m0d16l14n1]:<https://github.com/m0d16l14n1>
