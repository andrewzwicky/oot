.late_rodata
glabel D_80B4A364
    .float 0.8

.text
glabel func_80B46098
/* 02048 80B46098 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0204C 80B4609C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02050 80B460A0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02054 80B460A4 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 02058 80B460A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0205C 80B460AC 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 02060 80B460B0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02064 80B460B4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02068 80B460B8 AFA60034 */  sw      $a2, 0x0034($sp)           
/* 0206C 80B460BC 0C2D270B */  jal     func_80B49C2C              
/* 02070 80B460C0 AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 02074 80B460C4 54400083 */  bnel    $v0, $zero, .L80B462D4     
/* 02078 80B460C8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0207C 80B460CC 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 02080 80B460D0 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02084 80B460D4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 02088 80B460D8 55E10006 */  bnel    $t7, $at, .L80B460F4       
/* 0208C 80B460DC 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 02090 80B460E0 0C2D13A3 */  jal     func_80B44E8C              
/* 02094 80B460E4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02098 80B460E8 5440007A */  bnel    $v0, $zero, .L80B462D4     
/* 0209C 80B460EC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 020A0 80B460F0 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
.L80B460F4:
/* 020A4 80B460F4 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
/* 020A8 80B460F8 03041023 */  subu    $v0, $t8, $a0              
/* 020AC 80B460FC 00021400 */  sll     $v0, $v0, 16               
/* 020B0 80B46100 00021403 */  sra     $v0, $v0, 16               
/* 020B4 80B46104 58400010 */  blezl   $v0, .L80B46148            
/* 020B8 80B46108 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 020BC 80B4610C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 020C0 80B46110 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 020C4 80B46114 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.25
/* 020C8 80B46118 468021A0 */  cvt.s.w $f6, $f4                   
/* 020CC 80B4611C 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 020D0 80B46120 44818000 */  mtc1    $at, $f16                  ## $f16 = 2000.00
/* 020D4 80B46124 46083282 */  mul.s   $f10, $f6, $f8             
/* 020D8 80B46128 46105480 */  add.s   $f18, $f10, $f16           
/* 020DC 80B4612C 4600910D */  trunc.w.s $f4, $f18                  
/* 020E0 80B46130 44032000 */  mfc1    $v1, $f4                   
/* 020E4 80B46134 00000000 */  nop
/* 020E8 80B46138 00031C00 */  sll     $v1, $v1, 16               
/* 020EC 80B4613C 1000000E */  beq     $zero, $zero, .L80B46178   
/* 020F0 80B46140 00031C03 */  sra     $v1, $v1, 16               
/* 020F4 80B46144 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
.L80B46148:
/* 020F8 80B46148 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 020FC 80B4614C 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.25
/* 02100 80B46150 46803220 */  cvt.s.w $f8, $f6                   
/* 02104 80B46154 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 02108 80B46158 44819000 */  mtc1    $at, $f18                  ## $f18 = 2000.00
/* 0210C 80B4615C 460A4402 */  mul.s   $f16, $f8, $f10            
/* 02110 80B46160 46128101 */  sub.s   $f4, $f16, $f18            
/* 02114 80B46164 4600218D */  trunc.w.s $f6, $f4                   
/* 02118 80B46168 44033000 */  mfc1    $v1, $f6                   
/* 0211C 80B4616C 00000000 */  nop
/* 02120 80B46170 00031C00 */  sll     $v1, $v1, 16               
/* 02124 80B46174 00031C03 */  sra     $v1, $v1, 16               
.L80B46178:
/* 02128 80B46178 00834821 */  addu    $t1, $a0, $v1              
/* 0212C 80B4617C A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 02130 80B46180 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 02134 80B46184 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02138 80B46188 1840000F */  blez    $v0, .L80B461C8            
/* 0213C 80B4618C A60A0032 */  sh      $t2, 0x0032($s0)           ## 00000032
/* 02140 80B46190 44834000 */  mtc1    $v1, $f8                   ## $f8 = 0.00
/* 02144 80B46194 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 02148 80B46198 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 0214C 80B4619C 468042A0 */  cvt.s.w $f10, $f8                  
/* 02150 80B461A0 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 02154 80B461A4 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.50
/* 02158 80B461A8 00000000 */  nop
/* 0215C 80B461AC 46105082 */  mul.s   $f2, $f10, $f16            
/* 02160 80B461B0 4602603C */  c.lt.s  $f12, $f2                  
/* 02164 80B461B4 00000000 */  nop
/* 02168 80B461B8 45020011 */  bc1fl   .L80B46200                 
/* 0216C 80B461BC 46001207 */  neg.s   $f8, $f2                   
/* 02170 80B461C0 1000000E */  beq     $zero, $zero, .L80B461FC   
/* 02174 80B461C4 46006086 */  mov.s   $f2, $f12                  
.L80B461C8:
/* 02178 80B461C8 44839000 */  mtc1    $v1, $f18                  ## $f18 = 0.00
/* 0217C 80B461CC 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 02180 80B461D0 44816000 */  mtc1    $at, $f12                  ## $f12 = -2.00
/* 02184 80B461D4 46809120 */  cvt.s.w $f4, $f18                  
/* 02188 80B461D8 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 0218C 80B461DC 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.50
/* 02190 80B461E0 00000000 */  nop
/* 02194 80B461E4 46062082 */  mul.s   $f2, $f4, $f6              
/* 02198 80B461E8 460C103C */  c.lt.s  $f2, $f12                  
/* 0219C 80B461EC 00000000 */  nop
/* 021A0 80B461F0 45020003 */  bc1fl   .L80B46200                 
/* 021A4 80B461F4 46001207 */  neg.s   $f8, $f2                   
/* 021A8 80B461F8 46006086 */  mov.s   $f2, $f12                  
.L80B461FC:
/* 021AC 80B461FC 46001207 */  neg.s   $f8, $f2                   
.L80B46200:
/* 021B0 80B46200 0C02927F */  jal     SkelAnime_Update
              
/* 021B4 80B46204 E6080168 */  swc1    $f8, 0x0168($s0)           ## 00000168
/* 021B8 80B46208 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 021BC 80B4620C 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 021C0 80B46210 05620011 */  bltzl   $t3, .L80B46258            
/* 021C4 80B46214 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021C8 80B46218 0C2D11AA */  jal     func_80B446A8              
/* 021CC 80B4621C 860503FE */  lh      $a1, 0x03FE($s0)           ## 000003FE
/* 021D0 80B46220 A60203FE */  sh      $v0, 0x03FE($s0)           ## 000003FE
/* 021D4 80B46224 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 021D8 80B46228 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
/* 021DC 80B4622C 0C2D11AA */  jal     func_80B446A8              
/* 021E0 80B46230 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 021E4 80B46234 860C03FE */  lh      $t4, 0x03FE($s0)           ## 000003FE
/* 021E8 80B46238 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021EC 80B4623C 504C0006 */  beql    $v0, $t4, .L80B46258       
/* 021F0 80B46240 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021F4 80B46244 0C2D15AD */  jal     func_80B456B4              
/* 021F8 80B46248 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 021FC 80B4624C 10000021 */  beq     $zero, $zero, .L80B462D4   
/* 02200 80B46250 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02204 80B46254 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B46258:
/* 02208 80B46258 0C00B821 */  jal     func_8002E084              
/* 0220C 80B4625C 24051555 */  addiu   $a1, $zero, 0x1555         ## $a1 = 00001555
/* 02210 80B46260 50400012 */  beql    $v0, $zero, .L80B462AC     
/* 02214 80B46264 8FAD0034 */  lw      $t5, 0x0034($sp)           
/* 02218 80B46268 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 0221C 80B4626C 00000000 */  nop
/* 02220 80B46270 3C0180B5 */  lui     $at, %hi(D_80B4A364)       ## $at = 80B50000
/* 02224 80B46274 C42AA364 */  lwc1    $f10, %lo(D_80B4A364)($at) 
/* 02228 80B46278 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 0222C 80B4627C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02230 80B46280 4600503C */  c.lt.s  $f10, $f0                  
/* 02234 80B46284 00000000 */  nop
/* 02238 80B46288 45000005 */  bc1f    .L80B462A0                 
/* 0223C 80B4628C 00000000 */  nop
/* 02240 80B46290 0C2D18B9 */  jal     func_80B462E4              
/* 02244 80B46294 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02248 80B46298 10000004 */  beq     $zero, $zero, .L80B462AC   
/* 0224C 80B4629C 8FAD0034 */  lw      $t5, 0x0034($sp)           
.L80B462A0:
/* 02250 80B462A0 0C2D15AD */  jal     func_80B456B4              
/* 02254 80B462A4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 02258 80B462A8 8FAD0034 */  lw      $t5, 0x0034($sp)           
.L80B462AC:
/* 0225C 80B462AC 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 02260 80B462B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02264 80B462B4 01CD7021 */  addu    $t6, $t6, $t5              
/* 02268 80B462B8 8DCE1DE4 */  lw      $t6, 0x1DE4($t6)           ## 00011DE4
/* 0226C 80B462BC 31CF005F */  andi    $t7, $t6, 0x005F           ## $t7 = 00000000
/* 02270 80B462C0 55E00004 */  bnel    $t7, $zero, .L80B462D4     
/* 02274 80B462C4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02278 80B462C8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0227C 80B462CC 24053829 */  addiu   $a1, $zero, 0x3829         ## $a1 = 00003829
/* 02280 80B462D0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B462D4:
/* 02284 80B462D4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02288 80B462D8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0228C 80B462DC 03E00008 */  jr      $ra                        
/* 02290 80B462E0 00000000 */  nop
