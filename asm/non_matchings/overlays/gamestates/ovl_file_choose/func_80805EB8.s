glabel func_80805EB8
/* 02178 80805EB8 27BDFFF0 */  addiu   $sp, $sp, 0xFFF0           ## $sp = FFFFFFF0
/* 0217C 80805EBC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02180 80805EC0 AFB2000C */  sw      $s2, 0x000C($sp)           
/* 02184 80805EC4 AFB10008 */  sw      $s1, 0x0008($sp)           
/* 02188 80805EC8 AFB00004 */  sw      $s0, 0x0004($sp)           
/* 0218C 80805ECC 34228000 */  ori     $v0, $at, 0x8000           ## $v0 = 00018000
/* 02190 80805ED0 3C0C8013 */  lui     $t4, %hi(D_8012A4E0)
/* 02194 80805ED4 258CA4E0 */  addiu   $t4, %lo(D_8012A4E0)
/* 02198 80805ED8 00821821 */  addu    $v1, $a0, $v0              
/* 0219C 80805EDC 2410004C */  addiu   $s0, $zero, 0x004C         ## $s0 = 0000004C
/* 021A0 80805EE0 24110044 */  addiu   $s1, $zero, 0x0044         ## $s1 = 00000044
/* 021A4 80805EE4 24120041 */  addiu   $s2, $zero, 0x0041         ## $s2 = 00000041
/* 021A8 80805EE8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 021AC 80805EEC 240D0045 */  addiu   $t5, $zero, 0x0045         ## $t5 = 00000045
/* 021B0 80805EF0 240B005A */  addiu   $t3, $zero, 0x005A         ## $t3 = 0000005A
/* 021B4 80805EF4 846E4A38 */  lh      $t6, 0x4A38($v1)           ## 00004A38
.L80805EF8:
/* 021B8 80805EF8 00063840 */  sll     $a3, $a2,  1               
/* 021BC 80805EFC 00877821 */  addu    $t7, $a0, $a3              
/* 021C0 80805F00 10CE0022 */  beq     $a2, $t6, .L80805F8C       
/* 021C4 80805F04 0006C840 */  sll     $t9, $a2,  1               
/* 021C8 80805F08 01E24021 */  addu    $t0, $t7, $v0              
/* 021CC 80805F0C 85184A74 */  lh      $t8, 0x4A74($t0)           ## 00004A74
/* 021D0 80805F10 01877021 */  addu    $t6, $t4, $a3              
/* 021D4 80805F14 2719FFE7 */  addiu   $t9, $t8, 0xFFE7           ## $t9 = FFFFFFE7
/* 021D8 80805F18 A5194A74 */  sh      $t9, 0x4A74($t0)           ## 00004A74
/* 021DC 80805F1C 8C9801E0 */  lw      $t8, 0x01E0($a0)           ## 000001E0
/* 021E0 80805F20 95CF0000 */  lhu     $t7, 0x0000($t6)           ## 00000000
/* 021E4 80805F24 01F84821 */  addu    $t1, $t7, $t8              
/* 021E8 80805F28 9139001C */  lbu     $t9, 0x001C($t1)           ## 0000001C
/* 021EC 80805F2C 51790011 */  beql    $t3, $t9, .L80805F74       
/* 021F0 80805F30 850F4A86 */  lh      $t7, 0x4A86($t0)           ## 00004A86
/* 021F4 80805F34 912E001D */  lbu     $t6, 0x001D($t1)           ## 0000001D
/* 021F8 80805F38 51AE000E */  beql    $t5, $t6, .L80805F74       
/* 021FC 80805F3C 850F4A86 */  lh      $t7, 0x4A86($t0)           ## 00004A86
/* 02200 80805F40 912F001E */  lbu     $t7, 0x001E($t1)           ## 0000001E
/* 02204 80805F44 520F000B */  beql    $s0, $t7, .L80805F74       
/* 02208 80805F48 850F4A86 */  lh      $t7, 0x4A86($t0)           ## 00004A86
/* 0220C 80805F4C 9138001F */  lbu     $t8, 0x001F($t1)           ## 0000001F
/* 02210 80805F50 52380008 */  beql    $s1, $t8, .L80805F74       
/* 02214 80805F54 850F4A86 */  lh      $t7, 0x4A86($t0)           ## 00004A86
/* 02218 80805F58 91390020 */  lbu     $t9, 0x0020($t1)           ## 00000020
/* 0221C 80805F5C 52590005 */  beql    $s2, $t9, .L80805F74       
/* 02220 80805F60 850F4A86 */  lh      $t7, 0x4A86($t0)           ## 00004A86
/* 02224 80805F64 912E0021 */  lbu     $t6, 0x0021($t1)           ## 00000021
/* 02228 80805F68 556E000E */  bnel    $t3, $t6, .L80805FA4       
/* 0222C 80805F6C 24C60001 */  addiu   $a2, $a2, 0x0001           ## $a2 = 00000001
/* 02230 80805F70 850F4A86 */  lh      $t7, 0x4A86($t0)           ## 00004A86
.L80805F74:
/* 02234 80805F74 85074A74 */  lh      $a3, 0x4A74($t0)           ## 00004A74
/* 02238 80805F78 25F8FFE1 */  addiu   $t8, $t7, 0xFFE1           ## $t8 = FFFFFFE1
/* 0223C 80805F7C A5184A86 */  sh      $t8, 0x4A86($t0)           ## 00004A86
/* 02240 80805F80 A5074A80 */  sh      $a3, 0x4A80($t0)           ## 00004A80
/* 02244 80805F84 10000006 */  beq     $zero, $zero, .L80805FA0   
/* 02248 80805F88 A5074A7A */  sh      $a3, 0x4A7A($t0)           ## 00004A7A
.L80805F8C:
/* 0224C 80805F8C 00997021 */  addu    $t6, $a0, $t9              
/* 02250 80805F90 01C24021 */  addu    $t0, $t6, $v0              
/* 02254 80805F94 850F4A7A */  lh      $t7, 0x4A7A($t0)           ## 00004A7A
/* 02258 80805F98 25F8FFE7 */  addiu   $t8, $t7, 0xFFE7           ## $t8 = FFFFFFE7
/* 0225C 80805F9C A5184A7A */  sh      $t8, 0x4A7A($t0)           ## 00004A7A
.L80805FA0:
/* 02260 80805FA0 24C60001 */  addiu   $a2, $a2, 0x0001           ## $a2 = 00000002
.L80805FA4:
/* 02264 80805FA4 00063400 */  sll     $a2, $a2, 16               
/* 02268 80805FA8 00063403 */  sra     $a2, $a2, 16               
/* 0226C 80805FAC 28C10003 */  slti    $at, $a2, 0x0003           
/* 02270 80805FB0 5420FFD1 */  bnel    $at, $zero, .L80805EF8     
/* 02274 80805FB4 846E4A38 */  lh      $t6, 0x4A38($v1)           ## 00004A38
/* 02278 80805FB8 84794A6E */  lh      $t9, 0x4A6E($v1)           ## 00004A6E
/* 0227C 80805FBC 846F4A70 */  lh      $t7, 0x4A70($v1)           ## 00004A70
/* 02280 80805FC0 84664A38 */  lh      $a2, 0x4A38($v1)           ## 00004A38
/* 02284 80805FC4 272EFFF1 */  addiu   $t6, $t9, 0xFFF1           ## $t6 = FFFFFFD8
/* 02288 80805FC8 3C058081 */  lui     $a1, %hi(D_808124AC)       ## $a1 = 80810000
/* 0228C 80805FCC A46E4A6E */  sh      $t6, 0x4A6E($v1)           ## 00004A6E
/* 02290 80805FD0 25F8000F */  addiu   $t8, $t7, 0x000F           ## $t8 = 0000000F
/* 02294 80805FD4 00063040 */  sll     $a2, $a2,  1               
/* 02298 80805FD8 24A524AC */  addiu   $a1, $a1, %lo(D_808124AC)  ## $a1 = 808124AC
/* 0229C 80805FDC A4784A70 */  sh      $t8, 0x4A70($v1)           ## 00004A70
/* 022A0 80805FE0 0086C821 */  addu    $t9, $a0, $a2              
/* 022A4 80805FE4 03224021 */  addu    $t0, $t9, $v0              
/* 022A8 80805FE8 00A67021 */  addu    $t6, $a1, $a2              
/* 022AC 80805FEC 85CA0000 */  lh      $t2, 0x0000($t6)           ## FFFFFFD8
/* 022B0 80805FF0 85094A52 */  lh      $t1, 0x4A52($t0)           ## 00004A52
/* 022B4 80805FF4 012A3823 */  subu    $a3, $t1, $t2              
/* 022B8 80805FF8 04E00003 */  bltz    $a3, .L80806008            
/* 022BC 80805FFC 00073023 */  subu    $a2, $zero, $a3            
/* 022C0 80806000 10000001 */  beq     $zero, $zero, .L80806008   
/* 022C4 80806004 00E03025 */  or      $a2, $a3, $zero            ## $a2 = 00000000
.L80806008:
/* 022C8 80806008 846F4A50 */  lh      $t7, 0x4A50($v1)           ## 00004A50
/* 022CC 8080600C 00CF001A */  div     $zero, $a2, $t7            
/* 022D0 80806010 15E00002 */  bne     $t7, $zero, .L8080601C     
/* 022D4 80806014 00000000 */  nop
/* 022D8 80806018 0007000D */  break 7
.L8080601C:
/* 022DC 8080601C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 022E0 80806020 15E10004 */  bne     $t7, $at, .L80806034       
/* 022E4 80806024 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 022E8 80806028 14C10002 */  bne     $a2, $at, .L80806034       
/* 022EC 8080602C 00000000 */  nop
/* 022F0 80806030 0006000D */  break 6
.L80806034:
/* 022F4 80806034 00003812 */  mflo    $a3                        
/* 022F8 80806038 00073C00 */  sll     $a3, $a3, 16               
/* 022FC 8080603C 012A082A */  slt     $at, $t1, $t2              
/* 02300 80806040 14200004 */  bne     $at, $zero, .L80806054     
/* 02304 80806044 00073C03 */  sra     $a3, $a3, 16               
/* 02308 80806048 0127C023 */  subu    $t8, $t1, $a3              
/* 0230C 8080604C 10000003 */  beq     $zero, $zero, .L8080605C   
/* 02310 80806050 A5184A52 */  sh      $t8, 0x4A52($t0)           ## 00004A52
.L80806054:
/* 02314 80806054 0127C821 */  addu    $t9, $t1, $a3              
/* 02318 80806058 A5194A52 */  sh      $t9, 0x4A52($t0)           ## 00004A52
.L8080605C:
/* 0231C 8080605C 846E4A50 */  lh      $t6, 0x4A50($v1)           ## 00004A50
/* 02320 80806060 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 02324 80806064 00240821 */  addu    $at, $at, $a0              
/* 02328 80806068 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFD7
/* 0232C 8080606C A42FCA50 */  sh      $t7, -0x35B0($at)          ## 0001CA50
/* 02330 80806070 84784A50 */  lh      $t8, 0x4A50($v1)           ## 00004A50
/* 02334 80806074 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02338 80806078 5700003D */  bnel    $t8, $zero, .L80806170     
/* 0233C 8080607C 8FB00004 */  lw      $s0, 0x0004($sp)           
/* 02340 80806080 84794A38 */  lh      $t9, 0x4A38($v1)           ## 00004A38
.L80806084:
/* 02344 80806084 00063840 */  sll     $a3, $a2,  1               
/* 02348 80806088 00877021 */  addu    $t6, $a0, $a3              
/* 0234C 8080608C 10D9001E */  beq     $a2, $t9, .L80806108       
/* 02350 80806090 0006C040 */  sll     $t8, $a2,  1               
/* 02354 80806094 01C24021 */  addu    $t0, $t6, $v0              
/* 02358 80806098 A5004A74 */  sh      $zero, 0x4A74($t0)         ## 00004A74
/* 0235C 8080609C 01877821 */  addu    $t7, $t4, $a3              
/* 02360 808060A0 95F80000 */  lhu     $t8, 0x0000($t7)           ## FFFFFFD7
/* 02364 808060A4 8C9901E0 */  lw      $t9, 0x01E0($a0)           ## 000001E0
/* 02368 808060A8 03194821 */  addu    $t1, $t8, $t9              
/* 0236C 808060AC 912E001C */  lbu     $t6, 0x001C($t1)           ## 0000001C
/* 02370 808060B0 516E0011 */  beql    $t3, $t6, .L808060F8       
/* 02374 808060B4 85074A74 */  lh      $a3, 0x4A74($t0)           ## 00004A74
/* 02378 808060B8 912F001D */  lbu     $t7, 0x001D($t1)           ## 0000001D
/* 0237C 808060BC 51AF000E */  beql    $t5, $t7, .L808060F8       
/* 02380 808060C0 85074A74 */  lh      $a3, 0x4A74($t0)           ## 00004A74
/* 02384 808060C4 9138001E */  lbu     $t8, 0x001E($t1)           ## 0000001E
/* 02388 808060C8 5218000B */  beql    $s0, $t8, .L808060F8       
/* 0238C 808060CC 85074A74 */  lh      $a3, 0x4A74($t0)           ## 00004A74
/* 02390 808060D0 9139001F */  lbu     $t9, 0x001F($t1)           ## 0000001F
/* 02394 808060D4 52390008 */  beql    $s1, $t9, .L808060F8       
/* 02398 808060D8 85074A74 */  lh      $a3, 0x4A74($t0)           ## 00004A74
/* 0239C 808060DC 912E0020 */  lbu     $t6, 0x0020($t1)           ## 00000020
/* 023A0 808060E0 524E0005 */  beql    $s2, $t6, .L808060F8       
/* 023A4 808060E4 85074A74 */  lh      $a3, 0x4A74($t0)           ## 00004A74
/* 023A8 808060E8 912F0021 */  lbu     $t7, 0x0021($t1)           ## 00000021
/* 023AC 808060EC 556F000A */  bnel    $t3, $t7, .L80806118       
/* 023B0 808060F0 24C60001 */  addiu   $a2, $a2, 0x0001           ## $a2 = 00000001
/* 023B4 808060F4 85074A74 */  lh      $a3, 0x4A74($t0)           ## 00004A74
.L808060F8:
/* 023B8 808060F8 A5004A86 */  sh      $zero, 0x4A86($t0)         ## 00004A86
/* 023BC 808060FC A5074A80 */  sh      $a3, 0x4A80($t0)           ## 00004A80
/* 023C0 80806100 10000004 */  beq     $zero, $zero, .L80806114   
/* 023C4 80806104 A5074A7A */  sh      $a3, 0x4A7A($t0)           ## 00004A7A
.L80806108:
/* 023C8 80806108 0098C821 */  addu    $t9, $a0, $t8              
/* 023CC 8080610C 03227021 */  addu    $t6, $t9, $v0              
/* 023D0 80806110 A5C04A7A */  sh      $zero, 0x4A7A($t6)         ## 00004A52
.L80806114:
/* 023D4 80806114 24C60001 */  addiu   $a2, $a2, 0x0001           ## $a2 = 00000002
.L80806118:
/* 023D8 80806118 00063400 */  sll     $a2, $a2, 16               
/* 023DC 8080611C 00063403 */  sra     $a2, $a2, 16               
/* 023E0 80806120 28C10003 */  slti    $at, $a2, 0x0003           
/* 023E4 80806124 5420FFD7 */  bnel    $at, $zero, .L80806084     
/* 023E8 80806128 84794A38 */  lh      $t9, 0x4A38($v1)           ## 00004A38
/* 023EC 8080612C 84664A38 */  lh      $a2, 0x4A38($v1)           ## 00004A38
/* 023F0 80806130 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 023F4 80806134 00240821 */  addu    $at, $at, $a0              
/* 023F8 80806138 00063040 */  sll     $a2, $a2,  1               
/* 023FC 8080613C 00A67821 */  addu    $t7, $a1, $a2              
/* 02400 80806140 85F80000 */  lh      $t8, 0x0000($t7)           ## FFFFFFD7
/* 02404 80806144 0086C821 */  addu    $t9, $a0, $a2              
/* 02408 80806148 03227021 */  addu    $t6, $t9, $v0              
/* 0240C 8080614C 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 02410 80806150 A5D84A52 */  sh      $t8, 0x4A52($t6)           ## 00004A2A
/* 02414 80806154 A42FCA50 */  sh      $t7, -0x35B0($at)          ## 0001CA50
/* 02418 80806158 84794A3E */  lh      $t9, 0x4A3E($v1)           ## 00004A3E
/* 0241C 8080615C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 02420 80806160 00240821 */  addu    $at, $at, $a0              
/* 02424 80806164 27380001 */  addiu   $t8, $t9, 0x0001           ## $t8 = FFFFFFE8
/* 02428 80806168 A438CA3E */  sh      $t8, -0x35C2($at)          ## 0001CA3E
/* 0242C 8080616C 8FB00004 */  lw      $s0, 0x0004($sp)           
.L80806170:
/* 02430 80806170 8FB10008 */  lw      $s1, 0x0008($sp)           
/* 02434 80806174 8FB2000C */  lw      $s2, 0x000C($sp)           
/* 02438 80806178 03E00008 */  jr      $ra                        
/* 0243C 8080617C 27BD0010 */  addiu   $sp, $sp, 0x0010           ## $sp = 00000000
