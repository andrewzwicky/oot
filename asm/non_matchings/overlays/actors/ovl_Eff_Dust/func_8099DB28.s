.late_rodata
glabel D_8099EC00
    .float 0.05

.text
glabel func_8099DB28
/* 00258 8099DB28 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 0025C 8099DB2C F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 00260 8099DB30 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00264 8099DB34 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 00268 8099DB38 AFB60060 */  sw      $s6, 0x0060($sp)           
/* 0026C 8099DB3C AFB30054 */  sw      $s3, 0x0054($sp)           
/* 00270 8099DB40 3C01809A */  lui     $at, %hi(D_8099EC00)       ## $at = 809A0000
/* 00274 8099DB44 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 00278 8099DB48 AFBF006C */  sw      $ra, 0x006C($sp)           
/* 0027C 8099DB4C AFBE0068 */  sw      $s8, 0x0068($sp)           
/* 00280 8099DB50 AFB70064 */  sw      $s7, 0x0064($sp)           
/* 00284 8099DB54 AFB5005C */  sw      $s5, 0x005C($sp)           
/* 00288 8099DB58 AFB40058 */  sw      $s4, 0x0058($sp)           
/* 0028C 8099DB5C AFB20050 */  sw      $s2, 0x0050($sp)           
/* 00290 8099DB60 AFB1004C */  sw      $s1, 0x004C($sp)           
/* 00294 8099DB64 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 00298 8099DB68 F7BE0040 */  sdc1    $f30, 0x0040($sp)          
/* 0029C 8099DB6C F7BC0038 */  sdc1    $f28, 0x0038($sp)          
/* 002A0 8099DB70 F7BA0030 */  sdc1    $f26, 0x0030($sp)          
/* 002A4 8099DB74 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 002A8 8099DB78 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 002AC 8099DB7C AFA50074 */  sw      $a1, 0x0074($sp)           
/* 002B0 8099DB80 2482014C */  addiu   $v0, $a0, 0x014C           ## $v0 = 0000014C
/* 002B4 8099DB84 C422EC00 */  lwc1    $f2, %lo(D_8099EC00)($at)  
/* 002B8 8099DB88 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 002BC 8099DB8C 24030040 */  addiu   $v1, $zero, 0x0040         ## $v1 = 00000040
.L8099DB90:
/* 002C0 8099DB90 C4400000 */  lwc1    $f0, 0x0000($v0)           ## 0000014C
/* 002C4 8099DB94 26730004 */  addiu   $s3, $s3, 0x0004           ## $s3 = 00000004
/* 002C8 8099DB98 4616003C */  c.lt.s  $f0, $f22                  
/* 002CC 8099DB9C 00000000 */  nop
/* 002D0 8099DBA0 45020004 */  bc1fl   .L8099DBB4                 
/* 002D4 8099DBA4 C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000150
/* 002D8 8099DBA8 46020100 */  add.s   $f4, $f0, $f2              
/* 002DC 8099DBAC E4440000 */  swc1    $f4, 0x0000($v0)           ## 0000014C
/* 002E0 8099DBB0 C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000150
.L8099DBB4:
/* 002E4 8099DBB4 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000150
/* 002E8 8099DBB8 4616003C */  c.lt.s  $f0, $f22                  
/* 002EC 8099DBBC 00000000 */  nop
/* 002F0 8099DBC0 45020004 */  bc1fl   .L8099DBD4                 
/* 002F4 8099DBC4 C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000154
/* 002F8 8099DBC8 46020180 */  add.s   $f6, $f0, $f2              
/* 002FC 8099DBCC E4460000 */  swc1    $f6, 0x0000($v0)           ## 00000150
/* 00300 8099DBD0 C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000154
.L8099DBD4:
/* 00304 8099DBD4 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000154
/* 00308 8099DBD8 4616003C */  c.lt.s  $f0, $f22                  
/* 0030C 8099DBDC 00000000 */  nop
/* 00310 8099DBE0 45020004 */  bc1fl   .L8099DBF4                 
/* 00314 8099DBE4 C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000158
/* 00318 8099DBE8 46020200 */  add.s   $f8, $f0, $f2              
/* 0031C 8099DBEC E4480000 */  swc1    $f8, 0x0000($v0)           ## 00000154
/* 00320 8099DBF0 C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000158
.L8099DBF4:
/* 00324 8099DBF4 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000158
/* 00328 8099DBF8 4616003C */  c.lt.s  $f0, $f22                  
/* 0032C 8099DBFC 00000000 */  nop
/* 00330 8099DC00 45000003 */  bc1f    .L8099DC10                 
/* 00334 8099DC04 00000000 */  nop
/* 00338 8099DC08 46020280 */  add.s   $f10, $f0, $f2             
/* 0033C 8099DC0C E44A0000 */  swc1    $f10, 0x0000($v0)          ## 00000158
.L8099DC10:
/* 00340 8099DC10 1663FFDF */  bne     $s3, $v1, .L8099DB90       
/* 00344 8099DC14 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 0000015C
/* 00348 8099DC18 3C014580 */  lui     $at, 0x4580                ## $at = 45800000
/* 0034C 8099DC1C 4481E000 */  mtc1    $at, $f28                  ## $f28 = 4096.00
/* 00350 8099DC20 3C014600 */  lui     $at, 0x4600                ## $at = 46000000
/* 00354 8099DC24 4481D000 */  mtc1    $at, $f26                  ## $f26 = 8192.00
/* 00358 8099DC28 3C01C448 */  lui     $at, 0xC448                ## $at = C4480000
/* 0035C 8099DC2C 4481C000 */  mtc1    $at, $f24                  ## $f24 = -800.00
/* 00360 8099DC30 4480F000 */  mtc1    $zero, $f30                ## $f30 = 0.00
/* 00364 8099DC34 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 00368 8099DC38 241E0003 */  addiu   $s8, $zero, 0x0003         ## $s8 = 00000003
/* 0036C 8099DC3C 2417000C */  addiu   $s7, $zero, 0x000C         ## $s7 = 0000000C
/* 00370 8099DC40 92D3054C */  lbu     $s3, 0x054C($s6)           ## 0000054C
.L8099DC44:
/* 00374 8099DC44 3273003F */  andi    $s3, $s3, 0x003F           ## $s3 = 00000004
/* 00378 8099DC48 00137080 */  sll     $t6, $s3,  2               
/* 0037C 8099DC4C 02CEA021 */  addu    $s4, $s6, $t6              
/* 00380 8099DC50 C690014C */  lwc1    $f16, 0x014C($s4)          ## 0000014C
/* 00384 8099DC54 4610B03E */  c.le.s  $f22, $f16                 
/* 00388 8099DC58 00000000 */  nop
/* 0038C 8099DC5C 45020031 */  bc1fl   .L8099DD24                 
/* 00390 8099DC60 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 00394 8099DC64 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00398 8099DC68 4600D306 */  mov.s   $f12, $f26                 
/* 0039C 8099DC6C 4600048D */  trunc.w.s $f18, $f0                  
/* 003A0 8099DC70 4600E306 */  mov.s   $f12, $f28                 
/* 003A4 8099DC74 44129000 */  mfc1    $s2, $f18                  
/* 003A8 8099DC78 00000000 */  nop
/* 003AC 8099DC7C 00129400 */  sll     $s2, $s2, 16               
/* 003B0 8099DC80 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 003B4 8099DC84 00129403 */  sra     $s2, $s2, 16               
/* 003B8 8099DC88 4600010D */  trunc.w.s $f4, $f0                   
/* 003BC 8099DC8C 00122400 */  sll     $a0, $s2, 16               
/* 003C0 8099DC90 00042403 */  sra     $a0, $a0, 16               
/* 003C4 8099DC94 44102000 */  mfc1    $s0, $f4                   
/* 003C8 8099DC98 00000000 */  nop
/* 003CC 8099DC9C 00108400 */  sll     $s0, $s0, 16               
/* 003D0 8099DCA0 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 003D4 8099DCA4 00108403 */  sra     $s0, $s0, 16               
/* 003D8 8099DCA8 00102400 */  sll     $a0, $s0, 16               
/* 003DC 8099DCAC 00042403 */  sra     $a0, $a0, 16               
/* 003E0 8099DCB0 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 003E4 8099DCB4 46000506 */  mov.s   $f20, $f0                  
/* 003E8 8099DCB8 4614C182 */  mul.s   $f6, $f24, $f20            
/* 003EC 8099DCBC 00102400 */  sll     $a0, $s0, 16               
/* 003F0 8099DCC0 02770019 */  multu   $s3, $s7                   
/* 003F4 8099DCC4 00042403 */  sra     $a0, $a0, 16               
/* 003F8 8099DCC8 46060202 */  mul.s   $f8, $f0, $f6              
/* 003FC 8099DCCC 0000C812 */  mflo    $t9                        
/* 00400 8099DCD0 02D98821 */  addu    $s1, $s6, $t9              
/* 00404 8099DCD4 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00408 8099DCD8 E628024C */  swc1    $f8, 0x024C($s1)           ## 0000024C
/* 0040C 8099DCDC 46180282 */  mul.s   $f10, $f0, $f24            
/* 00410 8099DCE0 00122400 */  sll     $a0, $s2, 16               
/* 00414 8099DCE4 00042403 */  sra     $a0, $a0, 16               
/* 00418 8099DCE8 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 0041C 8099DCEC E62A0250 */  swc1    $f10, 0x0250($s1)          ## 00000250
/* 00420 8099DCF0 00102400 */  sll     $a0, $s0, 16               
/* 00424 8099DCF4 00042403 */  sra     $a0, $a0, 16               
/* 00428 8099DCF8 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 0042C 8099DCFC 46000506 */  mov.s   $f20, $f0                  
/* 00430 8099DD00 4614C402 */  mul.s   $f16, $f24, $f20           
/* 00434 8099DD04 00000000 */  nop
/* 00438 8099DD08 46100482 */  mul.s   $f18, $f0, $f16            
/* 0043C 8099DD0C E6320254 */  swc1    $f18, 0x0254($s1)          ## 00000254
/* 00440 8099DD10 E69E014C */  swc1    $f30, 0x014C($s4)          ## 0000014C
/* 00444 8099DD14 92C8054C */  lbu     $t0, 0x054C($s6)           ## 0000054C
/* 00448 8099DD18 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 0044C 8099DD1C A2C9054C */  sb      $t1, 0x054C($s6)           ## 0000054C
/* 00450 8099DD20 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000002
.L8099DD24:
/* 00454 8099DD24 56BEFFC7 */  bnel    $s5, $s8, .L8099DC44       
/* 00458 8099DD28 92D3054C */  lbu     $s3, 0x054C($s6)           ## 0000054C
/* 0045C 8099DD2C 8FBF006C */  lw      $ra, 0x006C($sp)           
/* 00460 8099DD30 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00464 8099DD34 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 00468 8099DD38 D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 0046C 8099DD3C D7BA0030 */  ldc1    $f26, 0x0030($sp)          
/* 00470 8099DD40 D7BC0038 */  ldc1    $f28, 0x0038($sp)          
/* 00474 8099DD44 D7BE0040 */  ldc1    $f30, 0x0040($sp)          
/* 00478 8099DD48 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 0047C 8099DD4C 8FB1004C */  lw      $s1, 0x004C($sp)           
/* 00480 8099DD50 8FB20050 */  lw      $s2, 0x0050($sp)           
/* 00484 8099DD54 8FB30054 */  lw      $s3, 0x0054($sp)           
/* 00488 8099DD58 8FB40058 */  lw      $s4, 0x0058($sp)           
/* 0048C 8099DD5C 8FB5005C */  lw      $s5, 0x005C($sp)           
/* 00490 8099DD60 8FB60060 */  lw      $s6, 0x0060($sp)           
/* 00494 8099DD64 8FB70064 */  lw      $s7, 0x0064($sp)           
/* 00498 8099DD68 8FBE0068 */  lw      $s8, 0x0068($sp)           
/* 0049C 8099DD6C 03E00008 */  jr      $ra                        
/* 004A0 8099DD70 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
