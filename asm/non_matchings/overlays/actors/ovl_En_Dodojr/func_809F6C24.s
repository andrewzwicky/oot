.late_rodata
glabel D_809F7F88
    .float -0.8

.text
glabel func_809F6C24
/* 00864 809F6C24 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00868 809F6C28 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 0086C 809F6C2C 44812000 */  mtc1    $at, $f4                   ## $f4 = 12.00
/* 00870 809F6C30 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00874 809F6C34 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00878 809F6C38 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0087C 809F6C3C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00880 809F6C40 3C050600 */  lui     $a1, %hi(D_06000724)                ## $a1 = 06000000
/* 00884 809F6C44 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00888 809F6C48 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 0088C 809F6C4C 24A50724 */  addiu   $a1, $a1, %lo(D_06000724)           ## $a1 = 06000724
/* 00890 809F6C50 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00894 809F6C54 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00898 809F6C58 3C074100 */  lui     $a3, 0x4100                ## $a3 = 41000000
/* 0089C 809F6C5C E7A40010 */  swc1    $f4, 0x0010($sp)
/* 008A0 809F6C60 0C029468 */  jal     Animation_Change

/* 008A4 809F6C64 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 008A8 809F6C68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008AC 809F6C6C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 008B0 809F6C70 24053826 */  addiu   $a1, $zero, 0x3826         ## $a1 = 00003826
/* 008B4 809F6C74 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 008B8 809F6C78 3C01809F */  lui     $at, %hi(D_809F7F88)       ## $at = 809F0000
/* 008BC 809F6C7C E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 008C0 809F6C80 E600005C */  swc1    $f0, 0x005C($s0)           ## 0000005C
/* 008C4 809F6C84 E6000064 */  swc1    $f0, 0x0064($s0)           ## 00000064
/* 008C8 809F6C88 C4287F88 */  lwc1    $f8, %lo(D_809F7F88)($at)
/* 008CC 809F6C8C E608006C */  swc1    $f8, 0x006C($s0)           ## 0000006C
/* 008D0 809F6C90 8FBF002C */  lw      $ra, 0x002C($sp)
/* 008D4 809F6C94 8FB00028 */  lw      $s0, 0x0028($sp)
/* 008D8 809F6C98 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 008DC 809F6C9C 03E00008 */  jr      $ra
/* 008E0 809F6CA0 00000000 */  nop
