#!/bin/bash

nsets=1
bsize=32
assoc=64
repl=r

# cache de dados níveis 1 e 2
dados1="-cache:dl1 dl1:$nsets:$bsize:$assoc:$repl"
dados2="-cache:dl2 none"

# cache de instruções níveis 1 e 2
instr1="-cache:il1 il1:$nsets:$bsize:$assoc:$repl"
instr2="-cache:il2 none"

# TLB de dados e instruções (ausentes)
tlb1="-tlb:dtlb none"
tlb2="-tlb:itlb none"

# GO_1:
./sim-cache $dados1 $dados2 $instr1 $instr2 $tlb1 $tlb2 go.ss 50 9 2stone9.in
# IJPEG_1:
./sim-cache $dados1 $dados2 $instr1 $instr2 $tlb1 $tlb2 ijpeg.ss -image_file tinyrose.ppm -compression.quality 90 -compression.optimize_coding 0 -compression.smoothing_factor 90 -difference.image 1 -difference.x_stride 10 -difference.y_stride 10 -verbose 1 -GO.findoptcomp