.late_rodata
glabel D_80B4A350
    .float 1.2

glabel D_80B4A354
    .float 0.7

glabel D_80B4A358
    .float 0.05

glabel D_80B4A35C
    .float 0.1

glabel D_80B4A360
    .float 0.1

.text
glabel func_80B45748
/* 016F8 80B45748 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 016FC 80B4574C 3C0143AF */  lui     $at, 0x43AF                ## $at = 43AF0000
/* 01700 80B45750 44812000 */  mtc1    $at, $f4                   ## $f4 = 350.00
/* 01704 80B45754 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01708 80B45758 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 0170C 80B4575C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01710 80B45760 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01714 80B45764 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 01718 80B45768 A7AE0048 */  sh      $t6, 0x0048($sp)           
/* 0171C 80B4576C E7A40044 */  swc1    $f4, 0x0044($sp)           
/* 01720 80B45770 E7A60040 */  swc1    $f6, 0x0040($sp)           
/* 01724 80B45774 8CB81C44 */  lw      $t8, 0x1C44($a1)           ## 00001C44
/* 01728 80B45778 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0172C 80B4577C AFB8003C */  sw      $t8, 0x003C($sp)           
/* 01730 80B45780 8499001C */  lh      $t9, 0x001C($a0)           ## 0000001C
/* 01734 80B45784 27040024 */  addiu   $a0, $t8, 0x0024           ## $a0 = 00000024
/* 01738 80B45788 07220015 */  bltzl   $t9, .L80B457E0            
/* 0173C 80B4578C 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01740 80B45790 0C2D11AA */  jal     func_80B446A8              
/* 01744 80B45794 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
/* 01748 80B45798 00022C00 */  sll     $a1, $v0, 16               
/* 0174C 80B4579C A7A20048 */  sh      $v0, 0x0048($sp)           
/* 01750 80B457A0 00052C03 */  sra     $a1, $a1, 16               
/* 01754 80B457A4 0C2D11AA */  jal     func_80B446A8              
/* 01758 80B457A8 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 0175C 80B457AC 3C0143D2 */  lui     $at, 0x43D2                ## $at = 43D20000
/* 01760 80B457B0 44815000 */  mtc1    $at, $f10                  ## $f10 = 420.00
/* 01764 80B457B4 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01768 80B457B8 A60203FE */  sh      $v0, 0x03FE($s0)           ## 000003FE
/* 0176C 80B457BC 3C014387 */  lui     $at, 0x4387                ## $at = 43870000
/* 01770 80B457C0 4608503E */  c.le.s  $f10, $f8                  
/* 01774 80B457C4 00000000 */  nop
/* 01778 80B457C8 45020005 */  bc1fl   .L80B457E0                 
/* 0177C 80B457CC 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01780 80B457D0 44818000 */  mtc1    $at, $f16                  ## $f16 = 270.00
/* 01784 80B457D4 00000000 */  nop
/* 01788 80B457D8 E7B00044 */  swc1    $f16, 0x0044($sp)          
/* 0178C 80B457DC 8FA4005C */  lw      $a0, 0x005C($sp)           
.L80B457E0:
/* 01790 80B457E0 0C2D270B */  jal     func_80B49C2C              
/* 01794 80B457E4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01798 80B457E8 1440018C */  bne     $v0, $zero, .L80B45E1C     
/* 0179C 80B457EC 87A80048 */  lh      $t0, 0x0048($sp)           
/* 017A0 80B457F0 860503FE */  lh      $a1, 0x03FE($s0)           ## 000003FE
/* 017A4 80B457F4 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 017A8 80B457F8 8FA7005C */  lw      $a3, 0x005C($sp)           
/* 017AC 80B457FC 51050069 */  beql    $t0, $a1, .L80B459A4       
/* 017B0 80B45800 26180068 */  addiu   $t8, $s0, 0x0068           ## $t8 = 00000068
/* 017B4 80B45804 0C2D12C5 */  jal     func_80B44B14              
/* 017B8 80B45808 86060400 */  lh      $a2, 0x0400($s0)           ## 00000400
/* 017BC 80B4580C A6020402 */  sh      $v0, 0x0402($s0)           ## 00000402
/* 017C0 80B45810 87A90048 */  lh      $t1, 0x0048($sp)           
/* 017C4 80B45814 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 017C8 80B45818 0523000B */  bgezl   $t1, .L80B45848            
/* 017CC 80B4581C 860B0402 */  lh      $t3, 0x0402($s0)           ## 00000402
/* 017D0 80B45820 860503FE */  lh      $a1, 0x03FE($s0)           ## 000003FE
/* 017D4 80B45824 860A0402 */  lh      $t2, 0x0402($s0)           ## 00000402
/* 017D8 80B45828 54AA0007 */  bnel    $a1, $t2, .L80B45848       
/* 017DC 80B4582C 860B0402 */  lh      $t3, 0x0402($s0)           ## 00000402
/* 017E0 80B45830 A7A50048 */  sh      $a1, 0x0048($sp)           
/* 017E4 80B45834 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 017E8 80B45838 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 017EC 80B4583C 10000058 */  beq     $zero, $zero, .L80B459A0   
/* 017F0 80B45840 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 017F4 80B45844 860B0402 */  lh      $t3, 0x0402($s0)           ## 00000402
.L80B45848:
/* 017F8 80B45848 3C0D80B5 */  lui     $t5, %hi(D_80B4A090)       ## $t5 = 80B50000
/* 017FC 80B4584C 25ADA090 */  addiu   $t5, $t5, %lo(D_80B4A090)  ## $t5 = 80B4A090
/* 01800 80B45850 000B6080 */  sll     $t4, $t3,  2               
/* 01804 80B45854 018B6023 */  subu    $t4, $t4, $t3              
/* 01808 80B45858 000C6080 */  sll     $t4, $t4,  2               
/* 0180C 80B4585C 0C00B6B0 */  jal     func_8002DAC0              
/* 01810 80B45860 018D2821 */  addu    $a1, $t4, $t5              
/* 01814 80B45864 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 01818 80B45868 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 0181C 80B4586C 860E007E */  lh      $t6, 0x007E($s0)           ## 0000007E
/* 01820 80B45870 A602008A */  sh      $v0, 0x008A($s0)           ## 0000008A
/* 01824 80B45874 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 01828 80B45878 01CF1823 */  subu    $v1, $t6, $t7              
/* 0182C 80B4587C 00031C00 */  sll     $v1, $v1, 16               
/* 01830 80B45880 00031C03 */  sra     $v1, $v1, 16               
/* 01834 80B45884 04630005 */  bgezl   $v1, .L80B4589C            
/* 01838 80B45888 861903F8 */  lh      $t9, 0x03F8($s0)           ## 000003F8
/* 0183C 80B4588C 00031823 */  subu    $v1, $zero, $v1            
/* 01840 80B45890 00031C00 */  sll     $v1, $v1, 16               
/* 01844 80B45894 00031C03 */  sra     $v1, $v1, 16               
/* 01848 80B45898 861903F8 */  lh      $t9, 0x03F8($s0)           ## 000003F8
.L80B4589C:
/* 0184C 80B4589C 53200008 */  beql    $t9, $zero, .L80B458C0     
/* 01850 80B458A0 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
/* 01854 80B458A4 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 01858 80B458A8 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 0185C 80B458AC 4604903C */  c.lt.s  $f18, $f4                  
/* 01860 80B458B0 00000000 */  nop
/* 01864 80B458B4 4503000A */  bc1tl   .L80B458E0                 
/* 01868 80B458B8 86090402 */  lh      $t1, 0x0402($s0)           ## 00000402
/* 0186C 80B458BC 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
.L80B458C0:
/* 01870 80B458C0 28615C19 */  slti    $at, $v1, 0x5C19           
/* 01874 80B458C4 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 01878 80B458C8 33080008 */  andi    $t0, $t8, 0x0008           ## $t0 = 00000000
/* 0187C 80B458CC 1100002C */  beq     $t0, $zero, .L80B45980     
/* 01880 80B458D0 3C054100 */  lui     $a1, 0x4100                ## $a1 = 41000000
/* 01884 80B458D4 5420002B */  bnel    $at, $zero, .L80B45984     
/* 01888 80B458D8 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 0188C 80B458DC 86090402 */  lh      $t1, 0x0402($s0)           ## 00000402
.L80B458E0:
/* 01890 80B458E0 3C0B80B5 */  lui     $t3, %hi(D_80B4A090)       ## $t3 = 80B50000
/* 01894 80B458E4 256BA090 */  addiu   $t3, $t3, %lo(D_80B4A090)  ## $t3 = 80B4A090
/* 01898 80B458E8 00095080 */  sll     $t2, $t1,  2               
/* 0189C 80B458EC 01495023 */  subu    $t2, $t2, $t1              
/* 018A0 80B458F0 000A5080 */  sll     $t2, $t2,  2               
/* 018A4 80B458F4 014B2821 */  addu    $a1, $t2, $t3              
/* 018A8 80B458F8 0C00B6EC */  jal     func_8002DBB0              
/* 018AC 80B458FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018B0 80B45900 C7A60044 */  lwc1    $f6, 0x0044($sp)           
/* 018B4 80B45904 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018B8 80B45908 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 018BC 80B4590C 4606003C */  c.lt.s  $f0, $f6                   
/* 018C0 80B45910 3C06433F */  lui     $a2, 0x433F                ## $a2 = 433F0000
/* 018C4 80B45914 45020010 */  bc1fl   .L80B45958                 
/* 018C8 80B45918 860E03FE */  lh      $t6, 0x03FE($s0)           ## 000003FE
/* 018CC 80B4591C 0C2D1016 */  jal     func_80B44058              
/* 018D0 80B45920 34C6FEE0 */  ori     $a2, $a2, 0xFEE0           ## $a2 = 433FFEE0
/* 018D4 80B45924 5440000C */  bnel    $v0, $zero, .L80B45958     
/* 018D8 80B45928 860E03FE */  lh      $t6, 0x03FE($s0)           ## 000003FE
/* 018DC 80B4592C 0C2D178C */  jal     func_80B45E30              
/* 018E0 80B45930 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018E4 80B45934 960C0088 */  lhu     $t4, 0x0088($s0)           ## 00000088
/* 018E8 80B45938 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 018EC 80B4593C 318D0008 */  andi    $t5, $t4, 0x0008           ## $t5 = 00000000
/* 018F0 80B45940 51A00137 */  beql    $t5, $zero, .L80B45E20     
/* 018F4 80B45944 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 018F8 80B45948 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 018FC 80B4594C 10000133 */  beq     $zero, $zero, .L80B45E1C   
/* 01900 80B45950 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 01904 80B45954 860E03FE */  lh      $t6, 0x03FE($s0)           ## 000003FE
.L80B45958:
/* 01908 80B45958 3C1980B5 */  lui     $t9, %hi(D_80B4A090)       ## $t9 = 80B50000
/* 0190C 80B4595C 2739A090 */  addiu   $t9, $t9, %lo(D_80B4A090)  ## $t9 = 80B4A090
/* 01910 80B45960 000E7880 */  sll     $t7, $t6,  2               
/* 01914 80B45964 01EE7823 */  subu    $t7, $t7, $t6              
/* 01918 80B45968 000F7880 */  sll     $t7, $t7,  2               
/* 0191C 80B4596C 01F92821 */  addu    $a1, $t7, $t9              
/* 01920 80B45970 0C00B6B0 */  jal     func_8002DAC0              
/* 01924 80B45974 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01928 80B45978 10000009 */  beq     $zero, $zero, .L80B459A0   
/* 0192C 80B4597C A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
.L80B45980:
/* 01930 80B45980 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
.L80B45984:
/* 01934 80B45984 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01938 80B45988 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0193C 80B4598C A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 01940 80B45990 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 01944 80B45994 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 01948 80B45998 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 0194C 80B4599C E7AA0010 */  swc1    $f10, 0x0010($sp)          
.L80B459A0:
/* 01950 80B459A0 26180068 */  addiu   $t8, $s0, 0x0068           ## $t8 = 00000068
.L80B459A4:
/* 01954 80B459A4 AFB8002C */  sw      $t8, 0x002C($sp)           
/* 01958 80B459A8 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 0195C 80B459AC 0C00CEAE */  jal     func_80033AB8              
/* 01960 80B459B0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01964 80B459B4 10400005 */  beq     $v0, $zero, .L80B459CC     
/* 01968 80B459B8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0196C 80B459BC 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01970 80B459C0 44818000 */  mtc1    $at, $f16                  ## $f16 = 100.00
/* 01974 80B459C4 00000000 */  nop
/* 01978 80B459C8 E7B00040 */  swc1    $f16, 0x0040($sp)          
.L80B459CC:
/* 0197C 80B459CC 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 01980 80B459D0 44819000 */  mtc1    $at, $f18                  ## $f18 = 70.00
/* 01984 80B459D4 C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 01988 80B459D8 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 0198C 80B459DC 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 01990 80B459E0 46049180 */  add.s   $f6, $f18, $f4             
/* 01994 80B459E4 3C054100 */  lui     $a1, 0x4100                ## $a1 = 41000000
/* 01998 80B459E8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0199C 80B459EC 4606403E */  c.le.s  $f8, $f6                   
/* 019A0 80B459F0 00000000 */  nop
/* 019A4 80B459F4 45020009 */  bc1fl   .L80B45A1C                 
/* 019A8 80B459F8 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 019AC 80B459FC 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 019B0 80B45A00 3C05C100 */  lui     $a1, 0xC100                ## $a1 = C1000000
/* 019B4 80B45A04 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 019B8 80B45A08 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 019BC 80B45A0C E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 019C0 80B45A10 10000005 */  beq     $zero, $zero, .L80B45A28   
/* 019C4 80B45A14 00000000 */  nop
/* 019C8 80B45A18 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
.L80B45A1C:
/* 019CC 80B45A1C 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 019D0 80B45A20 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 019D4 80B45A24 E7B00010 */  swc1    $f16, 0x0010($sp)          
.L80B45A28:
/* 019D8 80B45A28 3C0180B5 */  lui     $at, %hi(D_80B4A350)       ## $at = 80B50000
/* 019DC 80B45A2C C424A350 */  lwc1    $f4, %lo(D_80B4A350)($at)  
/* 019E0 80B45A30 C6120068 */  lwc1    $f18, 0x0068($s0)          ## 00000068
/* 019E4 80B45A34 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 019E8 80B45A38 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 019EC 80B45A3C 46049182 */  mul.s   $f6, $f18, $f4             
/* 019F0 80B45A40 E6060168 */  swc1    $f6, 0x0168($s0)           ## 00000168
/* 019F4 80B45A44 8FA8003C */  lw      $t0, 0x003C($sp)           
/* 019F8 80B45A48 87AB0048 */  lh      $t3, 0x0048($sp)           
/* 019FC 80B45A4C 850900B6 */  lh      $t1, 0x00B6($t0)           ## 000000B6
/* 01A00 80B45A50 012A1823 */  subu    $v1, $t1, $t2              
/* 01A04 80B45A54 00031C00 */  sll     $v1, $v1, 16               
/* 01A08 80B45A58 00031C03 */  sra     $v1, $v1, 16               
/* 01A0C 80B45A5C 04630005 */  bgezl   $v1, .L80B45A74            
/* 01A10 80B45A60 860C03FE */  lh      $t4, 0x03FE($s0)           ## 000003FE
/* 01A14 80B45A64 00031823 */  subu    $v1, $zero, $v1            
/* 01A18 80B45A68 00031C00 */  sll     $v1, $v1, 16               
/* 01A1C 80B45A6C 00031C03 */  sra     $v1, $v1, 16               
/* 01A20 80B45A70 860C03FE */  lh      $t4, 0x03FE($s0)           ## 000003FE
.L80B45A74:
/* 01A24 80B45A74 556C001E */  bnel    $t3, $t4, .L80B45AF0       
/* 01A28 80B45A78 C6120164 */  lwc1    $f18, 0x0164($s0)          ## 00000164
/* 01A2C 80B45A7C C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 01A30 80B45A80 44815000 */  mtc1    $at, $f10                  ## $f10 = 150.00
/* 01A34 80B45A84 8FAD003C */  lw      $t5, 0x003C($sp)           
/* 01A38 80B45A88 460A403C */  c.lt.s  $f8, $f10                  
/* 01A3C 80B45A8C 00000000 */  nop
/* 01A40 80B45A90 45020017 */  bc1fl   .L80B45AF0                 
/* 01A44 80B45A94 C6120164 */  lwc1    $f18, 0x0164($s0)          ## 00000164
/* 01A48 80B45A98 81AE0843 */  lb      $t6, 0x0843($t5)           ## 00000843
/* 01A4C 80B45A9C 28611F40 */  slti    $at, $v1, 0x1F40           
/* 01A50 80B45AA0 51C00013 */  beql    $t6, $zero, .L80B45AF0     
/* 01A54 80B45AA4 C6120164 */  lwc1    $f18, 0x0164($s0)          ## 00000164
/* 01A58 80B45AA8 54200011 */  bnel    $at, $zero, .L80B45AF0     
/* 01A5C 80B45AAC C6120164 */  lwc1    $f18, 0x0164($s0)          ## 00000164
/* 01A60 80B45AB0 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 01A64 80B45AB4 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 01A68 80B45AB8 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01A6C 80B45ABC A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 01A70 80B45AC0 3C0180B5 */  lui     $at, %hi(D_80B4A354)       ## $at = 80B50000
/* 01A74 80B45AC4 C430A354 */  lwc1    $f16, %lo(D_80B4A354)($at) 
/* 01A78 80B45AC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A7C 80B45ACC 4600803C */  c.lt.s  $f16, $f0                  
/* 01A80 80B45AD0 00000000 */  nop
/* 01A84 80B45AD4 45020006 */  bc1fl   .L80B45AF0                 
/* 01A88 80B45AD8 C6120164 */  lwc1    $f18, 0x0164($s0)          ## 00000164
/* 01A8C 80B45ADC 0C2D20F9 */  jal     func_80B483E4              
/* 01A90 80B45AE0 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 01A94 80B45AE4 100000CE */  beq     $zero, $zero, .L80B45E20   
/* 01A98 80B45AE8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01A9C 80B45AEC C6120164 */  lwc1    $f18, 0x0164($s0)          ## 00000164
.L80B45AF0:
/* 01AA0 80B45AF0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01AA4 80B45AF4 4600910D */  trunc.w.s $f4, $f18                  
/* 01AA8 80B45AF8 44192000 */  mfc1    $t9, $f4                   
/* 01AAC 80B45AFC 0C02927F */  jal     SkelAnime_Update
              
/* 01AB0 80B45B00 AFB90054 */  sw      $t9, 0x0054($sp)           
/* 01AB4 80B45B04 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01AB8 80B45B08 C6000168 */  lwc1    $f0, 0x0168($s0)           ## 00000168
/* 01ABC 80B45B0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AC0 80B45B10 4600103E */  c.le.s  $f2, $f0                   
/* 01AC4 80B45B14 00000000 */  nop
/* 01AC8 80B45B18 45020004 */  bc1fl   .L80B45B2C                 
/* 01ACC 80B45B1C 46000187 */  neg.s   $f6, $f0                   
/* 01AD0 80B45B20 10000003 */  beq     $zero, $zero, .L80B45B30   
/* 01AD4 80B45B24 E7A00030 */  swc1    $f0, 0x0030($sp)           
/* 01AD8 80B45B28 46000187 */  neg.s   $f6, $f0                   
.L80B45B2C:
/* 01ADC 80B45B2C E7A60030 */  swc1    $f6, 0x0030($sp)           
.L80B45B30:
/* 01AE0 80B45B30 C6080164 */  lwc1    $f8, 0x0164($s0)           ## 00000164
/* 01AE4 80B45B34 C7AA0030 */  lwc1    $f10, 0x0030($sp)          
/* 01AE8 80B45B38 4600103E */  c.le.s  $f2, $f0                   
/* 01AEC 80B45B3C 460A4401 */  sub.s   $f16, $f8, $f10            
/* 01AF0 80B45B40 4600848D */  trunc.w.s $f18, $f16                 
/* 01AF4 80B45B44 44089000 */  mfc1    $t0, $f18                  
/* 01AF8 80B45B48 45000003 */  bc1f    .L80B45B58                 
/* 01AFC 80B45B4C AFA80050 */  sw      $t0, 0x0050($sp)           
/* 01B00 80B45B50 10000003 */  beq     $zero, $zero, .L80B45B60   
/* 01B04 80B45B54 E7A00030 */  swc1    $f0, 0x0030($sp)           
.L80B45B58:
/* 01B08 80B45B58 46000107 */  neg.s   $f4, $f0                   
/* 01B0C 80B45B5C E7A40030 */  swc1    $f4, 0x0030($sp)           
.L80B45B60:
/* 01B10 80B45B60 87A90048 */  lh      $t1, 0x0048($sp)           
/* 01B14 80B45B64 860A03FE */  lh      $t2, 0x03FE($s0)           ## 000003FE
/* 01B18 80B45B68 552A0052 */  bnel    $t1, $t2, .L80B45CB4       
/* 01B1C 80B45B6C 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 01B20 80B45B70 0C00B821 */  jal     func_8002E084              
/* 01B24 80B45B74 240511C7 */  addiu   $a1, $zero, 0x11C7         ## $a1 = 000011C7
/* 01B28 80B45B78 14400012 */  bne     $v0, $zero, .L80B45BC4     
/* 01B2C 80B45B7C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01B30 80B45B80 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01B34 80B45B84 00000000 */  nop
/* 01B38 80B45B88 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01B3C 80B45B8C 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 01B40 80B45B90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B44 80B45B94 4600303C */  c.lt.s  $f6, $f0                   
/* 01B48 80B45B98 00000000 */  nop
/* 01B4C 80B45B9C 45000005 */  bc1f    .L80B45BB4                 
/* 01B50 80B45BA0 00000000 */  nop
/* 01B54 80B45BA4 0C2D18B9 */  jal     func_80B462E4              
/* 01B58 80B45BA8 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 01B5C 80B45BAC 10000041 */  beq     $zero, $zero, .L80B45CB4   
/* 01B60 80B45BB0 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
.L80B45BB4:
/* 01B64 80B45BB4 0C2D14E1 */  jal     func_80B45384              
/* 01B68 80B45BB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B6C 80B45BBC 1000003D */  beq     $zero, $zero, .L80B45CB4   
/* 01B70 80B45BC0 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
.L80B45BC4:
/* 01B74 80B45BC4 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 01B78 80B45BC8 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.00
/* 01B7C 80B45BCC 00000000 */  nop
/* 01B80 80B45BD0 460A403C */  c.lt.s  $f8, $f10                  
/* 01B84 80B45BD4 00000000 */  nop
/* 01B88 80B45BD8 45020024 */  bc1fl   .L80B45C6C                 
/* 01B8C 80B45BDC 860B03F8 */  lh      $t3, 0x03F8($s0)           ## 000003F8
/* 01B90 80B45BE0 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01B94 80B45BE4 00000000 */  nop
/* 01B98 80B45BE8 3C0180B5 */  lui     $at, %hi(D_80B4A358)       ## $at = 80B50000
/* 01B9C 80B45BEC C430A358 */  lwc1    $f16, %lo(D_80B4A358)($at) 
/* 01BA0 80B45BF0 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01BA4 80B45BF4 4600803C */  c.lt.s  $f16, $f0                  
/* 01BA8 80B45BF8 00000000 */  nop
/* 01BAC 80B45BFC 45000009 */  bc1f    .L80B45C24                 
/* 01BB0 80B45C00 00000000 */  nop
/* 01BB4 80B45C04 0C2D133C */  jal     func_80B44CF0              
/* 01BB8 80B45C08 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01BBC 80B45C0C 10400005 */  beq     $v0, $zero, .L80B45C24     
/* 01BC0 80B45C10 00000000 */  nop
/* 01BC4 80B45C14 0C2D1A89 */  jal     func_80B46A24              
/* 01BC8 80B45C18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BCC 80B45C1C 10000025 */  beq     $zero, $zero, .L80B45CB4   
/* 01BD0 80B45C20 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
.L80B45C24:
/* 01BD4 80B45C24 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01BD8 80B45C28 00000000 */  nop
/* 01BDC 80B45C2C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01BE0 80B45C30 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 01BE4 80B45C34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BE8 80B45C38 4600903C */  c.lt.s  $f18, $f0                  
/* 01BEC 80B45C3C 00000000 */  nop
/* 01BF0 80B45C40 45000005 */  bc1f    .L80B45C58                 
/* 01BF4 80B45C44 00000000 */  nop
/* 01BF8 80B45C48 0C2D20F9 */  jal     func_80B483E4              
/* 01BFC 80B45C4C 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 01C00 80B45C50 10000018 */  beq     $zero, $zero, .L80B45CB4   
/* 01C04 80B45C54 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
.L80B45C58:
/* 01C08 80B45C58 0C2D14E1 */  jal     func_80B45384              
/* 01C0C 80B45C5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C10 80B45C60 10000014 */  beq     $zero, $zero, .L80B45CB4   
/* 01C14 80B45C64 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 01C18 80B45C68 860B03F8 */  lh      $t3, 0x03F8($s0)           ## 000003F8
.L80B45C6C:
/* 01C1C 80B45C6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C20 80B45C70 11600005 */  beq     $t3, $zero, .L80B45C88     
/* 01C24 80B45C74 00000000 */  nop
/* 01C28 80B45C78 0C2D18B9 */  jal     func_80B462E4              
/* 01C2C 80B45C7C 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 01C30 80B45C80 1000000C */  beq     $zero, $zero, .L80B45CB4   
/* 01C34 80B45C84 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
.L80B45C88:
/* 01C38 80B45C88 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01C3C 80B45C8C 00000000 */  nop
/* 01C40 80B45C90 3C0180B5 */  lui     $at, %hi(D_80B4A35C)       ## $at = 80B50000
/* 01C44 80B45C94 C424A35C */  lwc1    $f4, %lo(D_80B4A35C)($at)  
/* 01C48 80B45C98 4604003C */  c.lt.s  $f0, $f4                   
/* 01C4C 80B45C9C 00000000 */  nop
/* 01C50 80B45CA0 45020004 */  bc1fl   .L80B45CB4                 
/* 01C54 80B45CA4 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 01C58 80B45CA8 0C2D14E1 */  jal     func_80B45384              
/* 01C5C 80B45CAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C60 80B45CB0 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
.L80B45CB4:
/* 01C64 80B45CB4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01C68 80B45CB8 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01C6C 80B45CBC 5581002E */  bnel    $t4, $at, .L80B45D78       
/* 01C70 80B45CC0 8FAD005C */  lw      $t5, 0x005C($sp)           
/* 01C74 80B45CC4 0C2D13A3 */  jal     func_80B44E8C              
/* 01C78 80B45CC8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01C7C 80B45CCC 14400053 */  bne     $v0, $zero, .L80B45E1C     
/* 01C80 80B45CD0 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 01C84 80B45CD4 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 01C88 80B45CD8 44813000 */  mtc1    $at, $f6                   ## $f6 = 180.00
/* 01C8C 80B45CDC 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 01C90 80B45CE0 4606003C */  c.lt.s  $f0, $f6                   
/* 01C94 80B45CE4 00000000 */  nop
/* 01C98 80B45CE8 45020023 */  bc1fl   .L80B45D78                 
/* 01C9C 80B45CEC 8FAD005C */  lw      $t5, 0x005C($sp)           
/* 01CA0 80B45CF0 44814000 */  mtc1    $at, $f8                   ## $f8 = 160.00
/* 01CA4 80B45CF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CA8 80B45CF8 4600403C */  c.lt.s  $f8, $f0                   
/* 01CAC 80B45CFC 00000000 */  nop
/* 01CB0 80B45D00 4502001D */  bc1fl   .L80B45D78                 
/* 01CB4 80B45D04 8FAD005C */  lw      $t5, 0x005C($sp)           
/* 01CB8 80B45D08 0C00B821 */  jal     func_8002E084              
/* 01CBC 80B45D0C 2405071C */  addiu   $a1, $zero, 0x071C         ## $a1 = 0000071C
/* 01CC0 80B45D10 10400018 */  beq     $v0, $zero, .L80B45D74     
/* 01CC4 80B45D14 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01CC8 80B45D18 0C00CEA1 */  jal     func_80033A84              
/* 01CCC 80B45D1C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01CD0 80B45D20 10400010 */  beq     $v0, $zero, .L80B45D64     
/* 01CD4 80B45D24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CD8 80B45D28 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01CDC 80B45D2C 00000000 */  nop
/* 01CE0 80B45D30 3C0180B5 */  lui     $at, %hi(D_80B4A360)       ## $at = 80B50000
/* 01CE4 80B45D34 C42AA360 */  lwc1    $f10, %lo(D_80B4A360)($at) 
/* 01CE8 80B45D38 460A003C */  c.lt.s  $f0, $f10                  
/* 01CEC 80B45D3C 00000000 */  nop
/* 01CF0 80B45D40 4502000D */  bc1fl   .L80B45D78                 
/* 01CF4 80B45D44 8FAD005C */  lw      $t5, 0x005C($sp)           
/* 01CF8 80B45D48 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 01CFC 80B45D4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D00 80B45D50 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 01D04 80B45D54 0C2D178C */  jal     func_80B45E30              
/* 01D08 80B45D58 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 01D0C 80B45D5C 10000030 */  beq     $zero, $zero, .L80B45E20   
/* 01D10 80B45D60 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B45D64:
/* 01D14 80B45D64 0C2D20F9 */  jal     func_80B483E4              
/* 01D18 80B45D68 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 01D1C 80B45D6C 1000002C */  beq     $zero, $zero, .L80B45E20   
/* 01D20 80B45D70 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B45D74:
/* 01D24 80B45D74 8FAD005C */  lw      $t5, 0x005C($sp)           
.L80B45D78:
/* 01D28 80B45D78 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 01D2C 80B45D7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D30 80B45D80 01CD7021 */  addu    $t6, $t6, $t5              
/* 01D34 80B45D84 8DCE1DE4 */  lw      $t6, 0x1DE4($t6)           ## 00011DE4
/* 01D38 80B45D88 31CF005F */  andi    $t7, $t6, 0x005F           ## $t7 = 00000000
/* 01D3C 80B45D8C 55E00004 */  bnel    $t7, $zero, .L80B45DA0     
/* 01D40 80B45D90 C6100164 */  lwc1    $f16, 0x0164($s0)          ## 00000164
/* 01D44 80B45D94 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01D48 80B45D98 24053829 */  addiu   $a1, $zero, 0x3829         ## $a1 = 00003829
/* 01D4C 80B45D9C C6100164 */  lwc1    $f16, 0x0164($s0)          ## 00000164
.L80B45DA0:
/* 01D50 80B45DA0 8FA20054 */  lw      $v0, 0x0054($sp)           
/* 01D54 80B45DA4 8FA80050 */  lw      $t0, 0x0050($sp)           
/* 01D58 80B45DA8 4600848D */  trunc.w.s $f18, $f16                 
/* 01D5C 80B45DAC 29010002 */  slti    $at, $t0, 0x0002           
/* 01D60 80B45DB0 44189000 */  mfc1    $t8, $f18                  
/* 01D64 80B45DB4 00000000 */  nop
/* 01D68 80B45DB8 50580019 */  beql    $v0, $t8, .L80B45E20       
/* 01D6C 80B45DBC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01D70 80B45DC0 10200008 */  beq     $at, $zero, .L80B45DE4     
/* 01D74 80B45DC4 C7A40030 */  lwc1    $f4, 0x0030($sp)           
/* 01D78 80B45DC8 4600218D */  trunc.w.s $f6, $f4                   
/* 01D7C 80B45DCC 440A3000 */  mfc1    $t2, $f6                   
/* 01D80 80B45DD0 00000000 */  nop
/* 01D84 80B45DD4 01425821 */  addu    $t3, $t2, $v0              
/* 01D88 80B45DD8 29610004 */  slti    $at, $t3, 0x0004           
/* 01D8C 80B45DDC 5020000D */  beql    $at, $zero, .L80B45E14     
/* 01D90 80B45DE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B45DE4:
/* 01D94 80B45DE4 8FAC0050 */  lw      $t4, 0x0050($sp)           
/* 01D98 80B45DE8 C7A80030 */  lwc1    $f8, 0x0030($sp)           
/* 01D9C 80B45DEC 29810020 */  slti    $at, $t4, 0x0020           
/* 01DA0 80B45DF0 5020000B */  beql    $at, $zero, .L80B45E20     
/* 01DA4 80B45DF4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01DA8 80B45DF8 4600428D */  trunc.w.s $f10, $f8                  
/* 01DAC 80B45DFC 440E5000 */  mfc1    $t6, $f10                  
/* 01DB0 80B45E00 00000000 */  nop
/* 01DB4 80B45E04 01C27821 */  addu    $t7, $t6, $v0              
/* 01DB8 80B45E08 29E10022 */  slti    $at, $t7, 0x0022           
/* 01DBC 80B45E0C 14200003 */  bne     $at, $zero, .L80B45E1C     
/* 01DC0 80B45E10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B45E14:
/* 01DC4 80B45E14 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01DC8 80B45E18 2405382E */  addiu   $a1, $zero, 0x382E         ## $a1 = 0000382E
.L80B45E1C:
/* 01DCC 80B45E1C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B45E20:
/* 01DD0 80B45E20 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01DD4 80B45E24 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 01DD8 80B45E28 03E00008 */  jr      $ra                        
/* 01DDC 80B45E2C 00000000 */  nop
