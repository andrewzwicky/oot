glabel func_8093285C
/* 0628C 8093285C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 06290 80932860 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 06294 80932864 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 06298 80932868 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0629C 8093286C 808E0195 */  lb      $t6, 0x0195($a0)           ## 00000195
/* 062A0 80932870 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 062A4 80932874 55C00038 */  bnel    $t6, $zero, .L80932958     
/* 062A8 80932878 920903E4 */  lbu     $t1, 0x03E4($s0)           ## 000003E4
/* 062AC 8093287C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 062B0 80932880 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 062B4 80932884 A2020195 */  sb      $v0, 0x0195($s0)           ## 00000195
/* 062B8 80932888 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 062BC 8093288C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 062C0 80932890 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 062C4 80932894 24060800 */  addiu   $a2, $zero, 0x0800         ## $a2 = 00000800
/* 062C8 80932898 820A0194 */  lb      $t2, 0x0194($s0)           ## 00000194
/* 062CC 8093289C 86190016 */  lh      $t9, 0x0016($s0)           ## 00000016
/* 062D0 809328A0 820F0195 */  lb      $t7, 0x0195($s0)           ## 00000195
/* 062D4 809328A4 000A5B00 */  sll     $t3, $t2, 12               
/* 062D8 809328A8 032B2821 */  addu    $a1, $t9, $t3              
/* 062DC 809328AC 00052C00 */  sll     $a1, $a1, 16               
/* 062E0 809328B0 01E2C024 */  and     $t8, $t7, $v0              
/* 062E4 809328B4 A2180195 */  sb      $t8, 0x0195($s0)           ## 00000195
/* 062E8 809328B8 00052C03 */  sra     $a1, $a1, 16               
/* 062EC 809328BC 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 062F0 809328C0 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 062F4 809328C4 24060800 */  addiu   $a2, $zero, 0x0800         ## $a2 = 00000800
/* 062F8 809328C8 820C0195 */  lb      $t4, 0x0195($s0)           ## 00000195
/* 062FC 809328CC 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 06300 809328D0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 06304 809328D4 01826824 */  and     $t5, $t4, $v0              
/* 06308 809328D8 A20D0195 */  sb      $t5, 0x0195($s0)           ## 00000195
/* 0630C 809328DC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 06310 809328E0 24060800 */  addiu   $a2, $zero, 0x0800         ## $a2 = 00000800
/* 06314 809328E4 82050194 */  lb      $a1, 0x0194($s0)           ## 00000194
/* 06318 809328E8 820E0195 */  lb      $t6, 0x0195($s0)           ## 00000195
/* 0631C 809328EC 260400B8 */  addiu   $a0, $s0, 0x00B8           ## $a0 = 000000B8
/* 06320 809328F0 00A00821 */  addu    $at, $a1, $zero            
/* 06324 809328F4 00052880 */  sll     $a1, $a1,  2               
/* 06328 809328F8 00A12821 */  addu    $a1, $a1, $at              
/* 0632C 809328FC 00052AC0 */  sll     $a1, $a1, 11               
/* 06330 80932900 00052C00 */  sll     $a1, $a1, 16               
/* 06334 80932904 01C27824 */  and     $t7, $t6, $v0              
/* 06338 80932908 A20F0195 */  sb      $t7, 0x0195($s0)           ## 00000195
/* 0633C 8093290C 00052C03 */  sra     $a1, $a1, 16               
/* 06340 80932910 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 06344 80932914 24060800 */  addiu   $a2, $zero, 0x0800         ## $a2 = 00000800
/* 06348 80932918 82180195 */  lb      $t8, 0x0195($s0)           ## 00000195
/* 0634C 8093291C 2604019E */  addiu   $a0, $s0, 0x019E           ## $a0 = 0000019E
/* 06350 80932920 2405F254 */  addiu   $a1, $zero, 0xF254         ## $a1 = FFFFF254
/* 06354 80932924 03025024 */  and     $t2, $t8, $v0              
/* 06358 80932928 A20A0195 */  sb      $t2, 0x0195($s0)           ## 00000195
/* 0635C 8093292C 0C01DE5F */  jal     Math_ApproxS
              
/* 06360 80932930 240601F4 */  addiu   $a2, $zero, 0x01F4         ## $a2 = 000001F4
/* 06364 80932934 82190195 */  lb      $t9, 0x0195($s0)           ## 00000195
/* 06368 80932938 03225824 */  and     $t3, $t9, $v0              
/* 0636C 8093293C A20B0195 */  sb      $t3, 0x0195($s0)           ## 00000195
/* 06370 80932940 820C0195 */  lb      $t4, 0x0195($s0)           ## 00000195
/* 06374 80932944 5180001F */  beql    $t4, $zero, .L809329C4     
/* 06378 80932948 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0637C 8093294C 1000001C */  beq     $zero, $zero, .L809329C0   
/* 06380 80932950 A2000114 */  sb      $zero, 0x0114($s0)         ## 00000114
/* 06384 80932954 920903E4 */  lbu     $t1, 0x03E4($s0)           ## 000003E4
.L80932958:
/* 06388 80932958 312D0002 */  andi    $t5, $t1, 0x0002           ## $t5 = 00000000
/* 0638C 8093295C 51A00019 */  beql    $t5, $zero, .L809329C4     
/* 06390 80932960 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 06394 80932964 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
/* 06398 80932968 312EFFFC */  andi    $t6, $t1, 0xFFFC           ## $t6 = 00000000
/* 0639C 8093296C A20E03E4 */  sb      $t6, 0x03E4($s0)           ## 000003E4
/* 063A0 80932970 904F03E4 */  lbu     $t7, 0x03E4($v0)           ## 000003E4
/* 063A4 80932974 3C038094 */  lui     $v1, %hi(D_80938C90)       ## $v1 = 80940000
/* 063A8 80932978 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 063AC 8093297C 31F8FFFC */  andi    $t8, $t7, 0xFFFC           ## $t8 = 00000000
/* 063B0 80932980 A05803E4 */  sb      $t8, 0x03E4($v0)           ## 000003E4
/* 063B4 80932984 8C638C90 */  lw      $v1, %lo(D_80938C90)($v1)  
/* 063B8 80932988 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 063BC 8093298C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 063C0 80932990 906A03E4 */  lbu     $t2, 0x03E4($v1)           ## 809403E4
/* 063C4 80932994 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 063C8 80932998 3159FFFC */  andi    $t9, $t2, 0xFFFC           ## $t9 = 00000000
/* 063CC 8093299C A07903E4 */  sb      $t9, 0x03E4($v1)           ## 809403E4
/* 063D0 809329A0 860700B6 */  lh      $a3, 0x00B6($s0)           ## 000000B6
/* 063D4 809329A4 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 063D8 809329A8 0C00BDC7 */  jal     func_8002F71C              
/* 063DC 809329AC E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 063E0 809329B0 8FAB002C */  lw      $t3, 0x002C($sp)           
/* 063E4 809329B4 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
/* 063E8 809329B8 0C00BDF7 */  jal     func_8002F7DC              
/* 063EC 809329BC 8D641C44 */  lw      $a0, 0x1C44($t3)           ## 00001C44
.L809329C0:
/* 063F0 809329C0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809329C4:
/* 063F4 809329C4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 063F8 809329C8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 063FC 809329CC 03E00008 */  jr      $ra                        
/* 06400 809329D0 00000000 */  nop
