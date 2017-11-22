#!/bin/bash

rm -R -f output/*
rm -R -f fifo/*
rm -R -f work/*

mkdir work/kat
mkfifo fifo/gul_P1

mkfifo fifo/gul_S1_summary_P1
mkfifo fifo/gul_S1_summaryeltcalc_P1
mkfifo fifo/gul_S1_eltcalc_P1

mkfifo fifo/gul_P2

mkfifo fifo/gul_S1_summary_P2
mkfifo fifo/gul_S1_summaryeltcalc_P2
mkfifo fifo/gul_S1_eltcalc_P2

mkfifo fifo/gul_P3

mkfifo fifo/gul_S1_summary_P3
mkfifo fifo/gul_S1_summaryeltcalc_P3
mkfifo fifo/gul_S1_eltcalc_P3

mkfifo fifo/gul_P4

mkfifo fifo/gul_S1_summary_P4
mkfifo fifo/gul_S1_summaryeltcalc_P4
mkfifo fifo/gul_S1_eltcalc_P4

mkfifo fifo/gul_P5

mkfifo fifo/gul_S1_summary_P5
mkfifo fifo/gul_S1_summaryeltcalc_P5
mkfifo fifo/gul_S1_eltcalc_P5

mkfifo fifo/gul_P6

mkfifo fifo/gul_S1_summary_P6
mkfifo fifo/gul_S1_summaryeltcalc_P6
mkfifo fifo/gul_S1_eltcalc_P6

mkfifo fifo/gul_P7

mkfifo fifo/gul_S1_summary_P7
mkfifo fifo/gul_S1_summaryeltcalc_P7
mkfifo fifo/gul_S1_eltcalc_P7

mkfifo fifo/gul_P8

mkfifo fifo/gul_S1_summary_P8
mkfifo fifo/gul_S1_summaryeltcalc_P8
mkfifo fifo/gul_S1_eltcalc_P8

mkfifo fifo/gul_P9

mkfifo fifo/gul_S1_summary_P9
mkfifo fifo/gul_S1_summaryeltcalc_P9
mkfifo fifo/gul_S1_eltcalc_P9

mkfifo fifo/gul_P10

mkfifo fifo/gul_S1_summary_P10
mkfifo fifo/gul_S1_summaryeltcalc_P10
mkfifo fifo/gul_S1_eltcalc_P10

mkfifo fifo/gul_P11

mkfifo fifo/gul_S1_summary_P11
mkfifo fifo/gul_S1_summaryeltcalc_P11
mkfifo fifo/gul_S1_eltcalc_P11

mkfifo fifo/gul_P12

mkfifo fifo/gul_S1_summary_P12
mkfifo fifo/gul_S1_summaryeltcalc_P12
mkfifo fifo/gul_S1_eltcalc_P12

mkfifo fifo/gul_P13

mkfifo fifo/gul_S1_summary_P13
mkfifo fifo/gul_S1_summaryeltcalc_P13
mkfifo fifo/gul_S1_eltcalc_P13

mkfifo fifo/gul_P14

mkfifo fifo/gul_S1_summary_P14
mkfifo fifo/gul_S1_summaryeltcalc_P14
mkfifo fifo/gul_S1_eltcalc_P14

mkfifo fifo/gul_P15

mkfifo fifo/gul_S1_summary_P15
mkfifo fifo/gul_S1_summaryeltcalc_P15
mkfifo fifo/gul_S1_eltcalc_P15

mkfifo fifo/gul_P16

mkfifo fifo/gul_S1_summary_P16
mkfifo fifo/gul_S1_summaryeltcalc_P16
mkfifo fifo/gul_S1_eltcalc_P16

mkfifo fifo/gul_P17

mkfifo fifo/gul_S1_summary_P17
mkfifo fifo/gul_S1_summaryeltcalc_P17
mkfifo fifo/gul_S1_eltcalc_P17

mkfifo fifo/gul_P18

mkfifo fifo/gul_S1_summary_P18
mkfifo fifo/gul_S1_summaryeltcalc_P18
mkfifo fifo/gul_S1_eltcalc_P18

mkfifo fifo/gul_P19

mkfifo fifo/gul_S1_summary_P19
mkfifo fifo/gul_S1_summaryeltcalc_P19
mkfifo fifo/gul_S1_eltcalc_P19

mkfifo fifo/gul_P20

mkfifo fifo/gul_S1_summary_P20
mkfifo fifo/gul_S1_summaryeltcalc_P20
mkfifo fifo/gul_S1_eltcalc_P20



# --- Do insured loss computes ---


# --- Do ground up loss  computes ---

eltcalc < fifo/gul_S1_summaryeltcalc_P1 > work/kat/gul_S1_eltcalc_P1 & pid1=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P2 > work/kat/gul_S1_eltcalc_P2 & pid2=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P3 > work/kat/gul_S1_eltcalc_P3 & pid3=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P4 > work/kat/gul_S1_eltcalc_P4 & pid4=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P5 > work/kat/gul_S1_eltcalc_P5 & pid5=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P6 > work/kat/gul_S1_eltcalc_P6 & pid6=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P7 > work/kat/gul_S1_eltcalc_P7 & pid7=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P8 > work/kat/gul_S1_eltcalc_P8 & pid8=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P9 > work/kat/gul_S1_eltcalc_P9 & pid9=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P10 > work/kat/gul_S1_eltcalc_P10 & pid10=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P11 > work/kat/gul_S1_eltcalc_P11 & pid11=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P12 > work/kat/gul_S1_eltcalc_P12 & pid12=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P13 > work/kat/gul_S1_eltcalc_P13 & pid13=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P14 > work/kat/gul_S1_eltcalc_P14 & pid14=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P15 > work/kat/gul_S1_eltcalc_P15 & pid15=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P16 > work/kat/gul_S1_eltcalc_P16 & pid16=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P17 > work/kat/gul_S1_eltcalc_P17 & pid17=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P18 > work/kat/gul_S1_eltcalc_P18 & pid18=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P19 > work/kat/gul_S1_eltcalc_P19 & pid19=$!

eltcalc -s < fifo/gul_S1_summaryeltcalc_P20 > work/kat/gul_S1_eltcalc_P20 & pid20=$!

tee < fifo/gul_S1_summary_P1 fifo/gul_S1_summaryeltcalc_P1  > /dev/null & pid21=$!
tee < fifo/gul_S1_summary_P2 fifo/gul_S1_summaryeltcalc_P2  > /dev/null & pid22=$!
tee < fifo/gul_S1_summary_P3 fifo/gul_S1_summaryeltcalc_P3  > /dev/null & pid23=$!
tee < fifo/gul_S1_summary_P4 fifo/gul_S1_summaryeltcalc_P4  > /dev/null & pid24=$!
tee < fifo/gul_S1_summary_P5 fifo/gul_S1_summaryeltcalc_P5  > /dev/null & pid25=$!
tee < fifo/gul_S1_summary_P6 fifo/gul_S1_summaryeltcalc_P6  > /dev/null & pid26=$!
tee < fifo/gul_S1_summary_P7 fifo/gul_S1_summaryeltcalc_P7  > /dev/null & pid27=$!
tee < fifo/gul_S1_summary_P8 fifo/gul_S1_summaryeltcalc_P8  > /dev/null & pid28=$!
tee < fifo/gul_S1_summary_P9 fifo/gul_S1_summaryeltcalc_P9  > /dev/null & pid29=$!
tee < fifo/gul_S1_summary_P10 fifo/gul_S1_summaryeltcalc_P10  > /dev/null & pid30=$!
tee < fifo/gul_S1_summary_P11 fifo/gul_S1_summaryeltcalc_P11  > /dev/null & pid31=$!
tee < fifo/gul_S1_summary_P12 fifo/gul_S1_summaryeltcalc_P12  > /dev/null & pid32=$!
tee < fifo/gul_S1_summary_P13 fifo/gul_S1_summaryeltcalc_P13  > /dev/null & pid33=$!
tee < fifo/gul_S1_summary_P14 fifo/gul_S1_summaryeltcalc_P14  > /dev/null & pid34=$!
tee < fifo/gul_S1_summary_P15 fifo/gul_S1_summaryeltcalc_P15  > /dev/null & pid35=$!
tee < fifo/gul_S1_summary_P16 fifo/gul_S1_summaryeltcalc_P16  > /dev/null & pid36=$!
tee < fifo/gul_S1_summary_P17 fifo/gul_S1_summaryeltcalc_P17  > /dev/null & pid37=$!
tee < fifo/gul_S1_summary_P18 fifo/gul_S1_summaryeltcalc_P18  > /dev/null & pid38=$!
tee < fifo/gul_S1_summary_P19 fifo/gul_S1_summaryeltcalc_P19  > /dev/null & pid39=$!
tee < fifo/gul_S1_summary_P20 fifo/gul_S1_summaryeltcalc_P20  > /dev/null & pid40=$!
summarycalc -g -1 fifo/gul_S1_summary_P1  < fifo/gul_P1 &
summarycalc -g -1 fifo/gul_S1_summary_P2  < fifo/gul_P2 &
summarycalc -g -1 fifo/gul_S1_summary_P3  < fifo/gul_P3 &
summarycalc -g -1 fifo/gul_S1_summary_P4  < fifo/gul_P4 &
summarycalc -g -1 fifo/gul_S1_summary_P5  < fifo/gul_P5 &
summarycalc -g -1 fifo/gul_S1_summary_P6  < fifo/gul_P6 &
summarycalc -g -1 fifo/gul_S1_summary_P7  < fifo/gul_P7 &
summarycalc -g -1 fifo/gul_S1_summary_P8  < fifo/gul_P8 &
summarycalc -g -1 fifo/gul_S1_summary_P9  < fifo/gul_P9 &
summarycalc -g -1 fifo/gul_S1_summary_P10  < fifo/gul_P10 &
summarycalc -g -1 fifo/gul_S1_summary_P11  < fifo/gul_P11 &
summarycalc -g -1 fifo/gul_S1_summary_P12  < fifo/gul_P12 &
summarycalc -g -1 fifo/gul_S1_summary_P13  < fifo/gul_P13 &
summarycalc -g -1 fifo/gul_S1_summary_P14  < fifo/gul_P14 &
summarycalc -g -1 fifo/gul_S1_summary_P15  < fifo/gul_P15 &
summarycalc -g -1 fifo/gul_S1_summary_P16  < fifo/gul_P16 &
summarycalc -g -1 fifo/gul_S1_summary_P17  < fifo/gul_P17 &
summarycalc -g -1 fifo/gul_S1_summary_P18  < fifo/gul_P18 &
summarycalc -g -1 fifo/gul_S1_summary_P19  < fifo/gul_P19 &
summarycalc -g -1 fifo/gul_S1_summary_P20  < fifo/gul_P20 &

eve 1 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P1  &
eve 2 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P2  &
eve 3 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P3  &
eve 4 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P4  &
eve 5 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P5  &
eve 6 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P6  &
eve 7 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P7  &
eve 8 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P8  &
eve 9 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P9  &
eve 10 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P10  &
eve 11 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P11  &
eve 12 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P12  &
eve 13 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P13  &
eve 14 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P14  &
eve 15 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P15  &
eve 16 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P16  &
eve 17 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P17  &
eve 18 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P18  &
eve 19 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P19  &
eve 20 20 | getmodel | gulcalc -S100 -L100 -r -c - > fifo/gul_P20  &

wait $pid1 $pid2 $pid3 $pid4 $pid5 $pid6 $pid7 $pid8 $pid9 $pid10 $pid11 $pid12 $pid13 $pid14 $pid15 $pid16 $pid17 $pid18 $pid19 $pid20 $pid21 $pid22 $pid23 $pid24 $pid25 $pid26 $pid27 $pid28 $pid29 $pid30 $pid31 $pid32 $pid33 $pid34 $pid35 $pid36 $pid37 $pid38 $pid39 $pid40 


# --- Do insured loss kats ---


# --- Do ground up loss kats ---

kat work/kat/gul_S1_eltcalc_P1 work/kat/gul_S1_eltcalc_P2 work/kat/gul_S1_eltcalc_P3 work/kat/gul_S1_eltcalc_P4 work/kat/gul_S1_eltcalc_P5 work/kat/gul_S1_eltcalc_P6 work/kat/gul_S1_eltcalc_P7 work/kat/gul_S1_eltcalc_P8 work/kat/gul_S1_eltcalc_P9 work/kat/gul_S1_eltcalc_P10 work/kat/gul_S1_eltcalc_P11 work/kat/gul_S1_eltcalc_P12 work/kat/gul_S1_eltcalc_P13 work/kat/gul_S1_eltcalc_P14 work/kat/gul_S1_eltcalc_P15 work/kat/gul_S1_eltcalc_P16 work/kat/gul_S1_eltcalc_P17 work/kat/gul_S1_eltcalc_P18 work/kat/gul_S1_eltcalc_P19 work/kat/gul_S1_eltcalc_P20 > output/gul_S1_eltcalc.csv & kpid1=$!
wait $kpid1 


rm fifo/gul_P1

rm fifo/gul_S1_summary_P1
rm fifo/gul_S1_summaryeltcalc_P1
rm fifo/gul_S1_eltcalc_P1

rm fifo/gul_P2

rm fifo/gul_S1_summary_P2
rm fifo/gul_S1_summaryeltcalc_P2
rm fifo/gul_S1_eltcalc_P2

rm fifo/gul_P3

rm fifo/gul_S1_summary_P3
rm fifo/gul_S1_summaryeltcalc_P3
rm fifo/gul_S1_eltcalc_P3

rm fifo/gul_P4

rm fifo/gul_S1_summary_P4
rm fifo/gul_S1_summaryeltcalc_P4
rm fifo/gul_S1_eltcalc_P4

rm fifo/gul_P5

rm fifo/gul_S1_summary_P5
rm fifo/gul_S1_summaryeltcalc_P5
rm fifo/gul_S1_eltcalc_P5

rm fifo/gul_P6

rm fifo/gul_S1_summary_P6
rm fifo/gul_S1_summaryeltcalc_P6
rm fifo/gul_S1_eltcalc_P6

rm fifo/gul_P7

rm fifo/gul_S1_summary_P7
rm fifo/gul_S1_summaryeltcalc_P7
rm fifo/gul_S1_eltcalc_P7

rm fifo/gul_P8

rm fifo/gul_S1_summary_P8
rm fifo/gul_S1_summaryeltcalc_P8
rm fifo/gul_S1_eltcalc_P8

rm fifo/gul_P9

rm fifo/gul_S1_summary_P9
rm fifo/gul_S1_summaryeltcalc_P9
rm fifo/gul_S1_eltcalc_P9

rm fifo/gul_P10

rm fifo/gul_S1_summary_P10
rm fifo/gul_S1_summaryeltcalc_P10
rm fifo/gul_S1_eltcalc_P10

rm fifo/gul_P11

rm fifo/gul_S1_summary_P11
rm fifo/gul_S1_summaryeltcalc_P11
rm fifo/gul_S1_eltcalc_P11

rm fifo/gul_P12

rm fifo/gul_S1_summary_P12
rm fifo/gul_S1_summaryeltcalc_P12
rm fifo/gul_S1_eltcalc_P12

rm fifo/gul_P13

rm fifo/gul_S1_summary_P13
rm fifo/gul_S1_summaryeltcalc_P13
rm fifo/gul_S1_eltcalc_P13

rm fifo/gul_P14

rm fifo/gul_S1_summary_P14
rm fifo/gul_S1_summaryeltcalc_P14
rm fifo/gul_S1_eltcalc_P14

rm fifo/gul_P15

rm fifo/gul_S1_summary_P15
rm fifo/gul_S1_summaryeltcalc_P15
rm fifo/gul_S1_eltcalc_P15

rm fifo/gul_P16

rm fifo/gul_S1_summary_P16
rm fifo/gul_S1_summaryeltcalc_P16
rm fifo/gul_S1_eltcalc_P16

rm fifo/gul_P17

rm fifo/gul_S1_summary_P17
rm fifo/gul_S1_summaryeltcalc_P17
rm fifo/gul_S1_eltcalc_P17

rm fifo/gul_P18

rm fifo/gul_S1_summary_P18
rm fifo/gul_S1_summaryeltcalc_P18
rm fifo/gul_S1_eltcalc_P18

rm fifo/gul_P19

rm fifo/gul_S1_summary_P19
rm fifo/gul_S1_summaryeltcalc_P19
rm fifo/gul_S1_eltcalc_P19

rm fifo/gul_P20

rm fifo/gul_S1_summary_P20
rm fifo/gul_S1_summaryeltcalc_P20
rm fifo/gul_S1_eltcalc_P20

rm -rf work/kat

