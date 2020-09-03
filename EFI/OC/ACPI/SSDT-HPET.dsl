
//Fix HPET,RTC,TIMR
DefinitionBlock ("", "SSDT", 2, "OCLT", "HRTfix", 0)
{
    External (_SB.PCI0.LPCB, DeviceObj)
    External (_SB.PCI0.LPCB.RTC, DeviceObj)
    External (_SB.PCI0.LPCB.TIMR, DeviceObj)
    External (HPTE, IntObj)
    External (STAS, IntObj)
    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            HPTE =0
        }
    }
    
    //disable RTC
    Scope (_SB.PCI0.LPCB.RTC)
    {
        Method (_STA, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Return (0)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }
    
    //disable TIMR
    Scope (_SB.PCI0.LPCB.TIMR)
    {
        Method (_STA, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Return (0)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }
    
    Scope (_SB.PCI0.LPCB)
    {
        //Fake HPE0
        Device (HPE0)
        {
            Name (_HID, EisaId ("PNP0103"))
            Name (_UID, Zero)
            Name (BUF0, ResourceTemplate ()
            {
                IRQNoFlags() { 0,1,2,8,11,12,13,15 }
                Memory32Fixed (ReadWrite,
                    0xFED00000,         // Address Base
                    0x00000400,         // Address Length
                    _Y59)
            })
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                If (HPTE)
                {
                    Return (0x0F)
                }

                Return (Zero)
                }
            }
            Method (_CRS, 0, Serialized)
            {
                Return (BUF0)
            }
        }

        //Fake RTC0
        Device (RTC0)
        {
            Name (_HID, EisaId ("PNP0B00"))
            Name (_CRS, ResourceTemplate ()
            {
                IO (Decode16,
                    0x0070, 
                    0x0070, 
                    0x01, 
                    0x08
                    )
            })
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                If ((STAS == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
                }
            }
        }
        
        //Fake TIM0
        Device (TIM0)
        {
            Name (_HID, EisaId ("PNP0100"))
            Name (_CRS, ResourceTemplate ()
            {
                IO (Decode16,
                    0x0040,
                    0x0040,
                    0x01,
                    0x04,
                    )
                IO (Decode16,
                    0x0050,
                    0x0050,
                    0x10,
                    0x04,
                    )
            })
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (0)
                }
            }
        }
    }
}