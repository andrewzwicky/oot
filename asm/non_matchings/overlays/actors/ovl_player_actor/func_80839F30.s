glabel func_80839F30
/* 07D20 80839F30 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 07D24 80839F34 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 07D28 80839F38 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 07D2C 80839F3C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 07D30 80839F40 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 07D34 80839F44 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 07D38 80839F48 3C068084 */  lui     $a2, %hi(func_808407CC)    ## $a2 = 80840000
/* 07D3C 80839F4C 24C607CC */  addiu   $a2, $a2, %lo(func_808407CC) ## $a2 = 808407CC
/* 07D40 80839F50 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 07D44 80839F54 0C20D716 */  jal     func_80835C58              
/* 07D48 80839F58 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 07D4C 80839F5C 0C20CCCE */  jal     func_80833338              
/* 07D50 80839F60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07D54 80839F64 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 07D58 80839F68 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 07D5C 80839F6C 0C20CAC3 */  jal     func_80832B0C              
/* 07D60 80839F70 00403025 */  or      $a2, $v0, $zero            ## $a2 = 00000000
/* 07D64 80839F74 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 07D68 80839F78 A60E083C */  sh      $t6, 0x083C($s0)           ## 0000083C
/* 07D6C 80839F7C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 07D70 80839F80 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 07D74 80839F84 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 07D78 80839F88 03E00008 */  jr      $ra                        
/* 07D7C 80839F8C 00000000 */  nop
