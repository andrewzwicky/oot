glabel func_800E0C80
/* B57E20 800E0C80 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B57E24 800E0C84 AFBF0014 */  sw    $ra, 0x14($sp)
/* B57E28 800E0C88 80820002 */  lb    $v0, 2($a0)
/* B57E2C 800E0C8C 10A20005 */  beq   $a1, $v0, .L800E0CA4
/* B57E30 800E0C90 00000000 */   nop   
/* B57E34 800E0C94 10C20003 */  beq   $a2, $v0, .L800E0CA4
/* B57E38 800E0C98 00000000 */   nop   
/* B57E3C 800E0C9C 54400004 */  bnezl $v0, .L800E0CB0
/* B57E40 800E0CA0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800E0CA4:
/* B57E44 800E0CA4 0C038259 */  jal   func_800E0964
/* B57E48 800E0CA8 00E02825 */   move  $a1, $a3
/* B57E4C 800E0CAC 8FBF0014 */  lw    $ra, 0x14($sp)
.L800E0CB0:
/* B57E50 800E0CB0 27BD0018 */  addiu $sp, $sp, 0x18
/* B57E54 800E0CB4 03E00008 */  jr    $ra
/* B57E58 800E0CB8 00000000 */   nop   

