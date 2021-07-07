;Written by H4v0c21
;Derived from https://github.com/FredYeye/Unveiled K. Rool Script
;Original asm file by FredYeye and emptysys
;7/7/21

math pri on : math round off : hirom

macro goto(offset)
	;jumps to specified address
	;goto 0 is a special case and jumps to the current pattern's starting point
	dw $0002, <offset>
endmacro

macro goto_if(a)
	;wait x amount of frames
	dw $000D, <a>
endmacro

org $B6F9CD

1A00 3C00 0002
0500 0102 5D02
1A00 3C00 0102
0500 0002 0000
%goto_if($FAC7)	;pattern2
1300
0000 B001 3001 0300
0400 0020
0000 B001 5801 0200
1800
0600
0000 B001 1501 0200
1C00
0400 0030
1B00 0030
0900
0C00 0000
0A00
1200 FFFF 0100 0100
1A00 1400 0002
0700 0000
0800 0002
1A00 3200 0002
0000 5D02 7F01 0200
0000 5E02 8D01 0200
0500 0002 0000
0000 5E02 9901 0200
0000 5E02 B401 0300
0000 5E02 CD01 0300
0500 0102 0000
0000 5002 D201 0300
0000 4002 D501 0300
0000 3002 D701 0300
0000 0402 D801 0300
0000 5C01 D801 0300
0000 4701 D301 0300
0000 2901 B901 0200
0000 1901 8C01 0200
0000 1501 5701 0200
0000 2B01 4B01 0200
0500 0002 0000
%goto(0)

pattern2:
%goto_if($F9E5)
1300
0000 B001 3001 0300
1C00
0400 0020
0000 B001 5801 0200
1800
0600
0000 B001 1501 0200
0400 0030
1B00 0030
0900
0C00 0000
0A00
1200 0100 0100 0100
1A00 1400 0002
0700 0100
0800 0002
1A00 3200 0002
0000 2301 7F01 0200
0000 2201 8D01 0200
0500 0002 0000
0000 2201 9901 0200
0000 2201 B401 0300
0000 2201 CD01 0300
0500 0102 0000
0000 3001 D201 0300
0000 4001 D501 0300
0000 5001 D701 0300
0000 7C01 D801 0300
0000 2402 D801 0300
0000 3902 D301 0300
0000 5702 B901 0200
0000 6702 8C01 0200
0000 6B02 5701 0200
0000 5502 4B01 0200
0500 0002 0000
%goto(0)

1300
0000 B001 6201 0200
1C00
0000 0002 6201 0100
0000 0602 6401 0100
0000 1002 6701 0200
0000 2502 7601 0200
0000 2A02 7C01 0200
0000 2D02 8101 0200
0000 2A02 8401 0200
0000 2502 8B01 0200
0000 1002 9901 0300
0000 0602 9D01 0300
0000 0002 9F01 0300
0000 D301 9F01 0400
%goto_if($FC4D)
0B00 0010 0004
1500 ECFF ECFF
1600
0500 0002 0902
0E00
1000
0000 F001 9F01 0200
0000 0002 9F01 0100
1100
0F00 0002
1900 04AF 34AF
0000 B001 9F01 0200
0000 6001 9F01 0200
0000 5701 9D01 0200
0000 4D01 9901 0200
0000 3801 8B01 0200
0000 3301 8401 0200
0000 3001 8101 0200
0000 3301 7C01 0200
0000 3801 7601 0200
0000 4D01 6701 0200
0000 5701 6401 0200
0000 6001 6201 0200
0000 B001 6201 0200
0000 0002 6201 0200
0000 0602 6401 0200
0000 1002 6701 0200
0000 2502 7601 0200
0000 2A02 7C01 0200
0000 2D02 8101 0200
0000 2A02 8401 0200
0000 2502 8B01 0200
0000 1002 9901 0200
0000 0602 9D01 0200
0000 0002 9F01 0200
%goto(0)

1300
0000 B001 6201 0200
1C00
0000 6001 6201 0100
0000 5701 6401 0100
0000 4D01 6701 0200
0000 3801 7601 0200
0000 3301 7C01 0200
0000 3001 8101 0200
0000 3301 8401 0200
0000 3801 8B01 0200
0000 4D01 9901 0300
0000 5701 9D01 0300
0000 6001 9F01 0300
0000 8D01 9F01 0400
%goto_if($FDB5)
0B00 0010 0004
1500 1400 ECFF
1600
0500 0002 0902
0E00
1000
0000 7001 9F01 0200
0000 6001 9F01 0100
1100
0F00 0002
1900 04AF 34AF
0000 0002 9F01 0200
0000 0602 9D01 0200
0000 1002 9901 0200
0000 2502 8B01 0200
0000 2A02 8401 0200
0000 2D02 8101 0200
0000 2A02 7C01 0200
0000 2502 7601 0200
0000 1002 6701 0200
0000 0602 6401 0200
0000 0002 6201 0200
0000 B001 6201 0200
0000 6001 6201 0200
0000 5701 6401 0200
0000 4D01 6701 0200
0000 3801 7601 0200
0000 3301 7C01 0200
0000 3001 8101 0200
0000 3301 8401 0200
0000 3801 8B01 0200
0000 4D01 9901 0200
0000 5701 9D01 0200
0000 6001 9F01 0200
0000 B001 9F01 0200
%goto(0)

???
1400 A9FB 11FD
%goto(33FA)
15FB
0500 0002 0402
1400 E5F9 C7FA
%goto(0)
0500 0002 0402
1400 A9FB 11FD
1800

02 00 00 00 02 00 00 00 02 00 00 00 02 00 00 00 FE FF 00 00 FE FF 00 00 FE FF 00 00 00 00 C9 FE E5 FE 01 FF 1D FF 0A 00 64 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 50 00 78 00 01 00 00 00 0A 00 64 00 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 78 00 B4 00 01 00 00 00 2C 01 50 00 50 00 02 00 00 00 0E 00 00 00 00 00 C8 00 08 00 00 00 00 00 02 00 02 00 68 01 50 00 50 00 01 00 00 00 0C 00 00 00 00 00 C8 00 0A 00 00 00 00 00 02 00 02 00 20 3D FF 6B 22 D8 FE BC 22 C0 FE BC 22 10 A3 B3 A0 36 10 22 32 84 BB A6 64 60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
