glabel func_80B57CB4
/* 04904 80B57CB4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04908 80B57CB8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0490C 80B57CBC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 04910 80B57CC0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 04914 80B57CC4 948E0344 */  lhu     $t6, 0x0344($a0)           ## 00000344
/* 04918 80B57CC8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0491C 80B57CCC 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 04920 80B57CD0 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 04924 80B57CD4 A48F0344 */  sh      $t7, 0x0344($a0)           ## 00000344
/* 04928 80B57CD8 96060344 */  lhu     $a2, 0x0344($s0)           ## 00000344
/* 0492C 80B57CDC 94840346 */  lhu     $a0, 0x0346($a0)           ## 00000346
/* 04930 80B57CE0 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 04934 80B57CE4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 04938 80B57CE8 0C01BE6F */  jal     func_8006F9BC              
/* 0493C 80B57CEC 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 04940 80B57CF0 26020348 */  addiu   $v0, $s0, 0x0348           ## $v0 = 00000348
/* 04944 80B57CF4 26030354 */  addiu   $v1, $s0, 0x0354           ## $v1 = 00000354
/* 04948 80B57CF8 C4640000 */  lwc1    $f4, 0x0000($v1)           ## 00000354
/* 0494C 80B57CFC C4420000 */  lwc1    $f2, 0x0000($v0)           ## 00000348
/* 04950 80B57D00 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 04954 80B57D04 46022181 */  sub.s   $f6, $f4, $f2              
/* 04958 80B57D08 46060202 */  mul.s   $f8, $f0, $f6              
/* 0495C 80B57D0C 46081280 */  add.s   $f10, $f2, $f8             
/* 04960 80B57D10 E48A0000 */  swc1    $f10, 0x0000($a0)          ## 00000024
/* 04964 80B57D14 C4700004 */  lwc1    $f16, 0x0004($v1)          ## 00000358
/* 04968 80B57D18 C44C0004 */  lwc1    $f12, 0x0004($v0)          ## 0000034C
/* 0496C 80B57D1C C6080360 */  lwc1    $f8, 0x0360($s0)           ## 00000360
/* 04970 80B57D20 460C8481 */  sub.s   $f18, $f16, $f12           
/* 04974 80B57D24 46120102 */  mul.s   $f4, $f0, $f18             
/* 04978 80B57D28 46046180 */  add.s   $f6, $f12, $f4             
/* 0497C 80B57D2C 46083280 */  add.s   $f10, $f6, $f8             
/* 04980 80B57D30 E48A0004 */  swc1    $f10, 0x0004($a0)          ## 00000028
/* 04984 80B57D34 C4700008 */  lwc1    $f16, 0x0008($v1)          ## 0000035C
/* 04988 80B57D38 C44E0008 */  lwc1    $f14, 0x0008($v0)          ## 00000350
/* 0498C 80B57D3C 460E8481 */  sub.s   $f18, $f16, $f14           
/* 04990 80B57D40 46120102 */  mul.s   $f4, $f0, $f18             
/* 04994 80B57D44 46047180 */  add.s   $f6, $f14, $f4             
/* 04998 80B57D48 E4860008 */  swc1    $f6, 0x0008($a0)           ## 0000002C
/* 0499C 80B57D4C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 049A0 80B57D50 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 049A4 80B57D54 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 049A8 80B57D58 03E00008 */  jr      $ra                        
/* 049AC 80B57D5C 00000000 */  nop
