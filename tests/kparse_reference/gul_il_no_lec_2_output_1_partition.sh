#!/bin/bash
mkfifo fifo/gul_P1

mkfifo fifo/gul_S1_summary_P1
mkfifo fifo/gul_S1_summaryeltcalc_P1
mkfifo fifo/gul_S1_eltcalc_P1
mkfifo fifo/gul_S1_summarysummarycalc_P1
mkfifo fifo/gul_S1_summarycalc_P1
mkfifo fifo/gul_S1_summarypltcalc_P1
mkfifo fifo/gul_S1_pltcalc_P1
mkfifo fifo/gul_S1_summaryaalcalc_P1
mkfifo fifo/gul_S2_summary_P1
mkfifo fifo/gul_S2_summaryeltcalc_P1
mkfifo fifo/gul_S2_eltcalc_P1
mkfifo fifo/gul_S2_summarysummarycalc_P1
mkfifo fifo/gul_S2_summarycalc_P1
mkfifo fifo/gul_S2_summarypltcalc_P1
mkfifo fifo/gul_S2_pltcalc_P1
mkfifo fifo/gul_S2_summaryaalcalc_P1

mkdir work/gul_S1_aalcalc
mkdir work/gul_S2_aalcalc

mkfifo fifo/il_P1

mkfifo fifo/il_S1_summary_P1
mkfifo fifo/il_S1_summaryeltcalc_P1
mkfifo fifo/il_S1_eltcalc_P1
mkfifo fifo/il_S1_summarysummarycalc_P1
mkfifo fifo/il_S1_summarycalc_P1
mkfifo fifo/il_S1_summarypltcalc_P1
mkfifo fifo/il_S1_pltcalc_P1
mkfifo fifo/il_S1_summaryaalcalc_P1
mkfifo fifo/il_S2_summary_P1
mkfifo fifo/il_S2_summaryeltcalc_P1
mkfifo fifo/il_S2_eltcalc_P1
mkfifo fifo/il_S2_summarysummarycalc_P1
mkfifo fifo/il_S2_summarycalc_P1
mkfifo fifo/il_S2_summarypltcalc_P1
mkfifo fifo/il_S2_pltcalc_P1
mkfifo fifo/il_S2_summaryaalcalc_P1

mkdir work/il_S1_aalcalc
mkdir work/il_S2_aalcalc

# --- Do insured loss kats ---

kat fifo/il_S1_eltcalc_P1 > output/il_S1_eltcalc.csv & pid1=$!
kat fifo/il_S1_pltcalc_P1 > output/il_S1_pltcalc.csv & pid2=$!
kat fifo/il_S1_summarycalc_P1 > output/il_S1_summarycalc.csv & pid3=$!
kat fifo/il_S2_eltcalc_P1 > output/il_S2_eltcalc.csv & pid4=$!
kat fifo/il_S2_pltcalc_P1 > output/il_S2_pltcalc.csv & pid5=$!
kat fifo/il_S2_summarycalc_P1 > output/il_S2_summarycalc.csv & pid6=$!

# --- Do ground up loss kats ---

kat fifo/gul_S1_eltcalc_P1 > output/gul_S1_eltcalc.csv & pid7=$!
kat fifo/gul_S1_pltcalc_P1 > output/gul_S1_pltcalc.csv & pid8=$!
kat fifo/gul_S1_summarycalc_P1 > output/gul_S1_summarycalc.csv & pid9=$!
kat fifo/gul_S2_eltcalc_P1 > output/gul_S2_eltcalc.csv & pid10=$!
kat fifo/gul_S2_pltcalc_P1 > output/gul_S2_pltcalc.csv & pid11=$!
kat fifo/gul_S2_summarycalc_P1 > output/gul_S2_summarycalc.csv & pid12=$!

sleep 2

# --- Do insured loss computes ---

eltcalc < fifo/il_S1_summaryeltcalc_P1 > fifo/il_S1_eltcalc_P1 &
summarycalctocsv < fifo/il_S1_summarysummarycalc_P1 > fifo/il_S1_summarycalc_P1 &
pltcalc < fifo/il_S1_summarypltcalc_P1 > fifo/il_S1_pltcalc_P1 &
aalcalc < fifo/il_S1_summaryaalcalc_P1 > work/il_S1_aalcalc/P1.bin & pid1=$!

eltcalc < fifo/il_S2_summaryeltcalc_P1 > fifo/il_S2_eltcalc_P1 &
summarycalctocsv < fifo/il_S2_summarysummarycalc_P1 > fifo/il_S2_summarycalc_P1 &
pltcalc < fifo/il_S2_summarypltcalc_P1 > fifo/il_S2_pltcalc_P1 &
aalcalc < fifo/il_S2_summaryaalcalc_P1 > work/il_S2_aalcalc/P1.bin & pid1=$!

tee < fifo/il_S1_summary_P1 fifo/il_S1_summaryeltcalc_P1 fifo/il_S1_summarypltcalc_P1 fifo/il_S1_summarysummarycalc_P1 fifo/il_S1_summaryaalcalc_P1  > /dev/null & pid15=$!
tee < fifo/il_S2_summary_P1 fifo/il_S2_summaryeltcalc_P1 fifo/il_S2_summarypltcalc_P1 fifo/il_S2_summarysummarycalc_P1 fifo/il_S2_summaryaalcalc_P1  > /dev/null & pid16=$!
summarycalc -f -1 fifo/il_S1_summary_P1 -2 fifo/il_S2_summary_P1  < fifo/il_P1 &

# --- Do ground up loss  computes ---

eltcalc < fifo/gul_S1_summaryeltcalc_P1 > fifo/gul_S1_eltcalc_P1 &
summarycalctocsv < fifo/gul_S1_summarysummarycalc_P1 > fifo/gul_S1_summarycalc_P1 &
pltcalc < fifo/gul_S1_summarypltcalc_P1 > fifo/gul_S1_pltcalc_P1 &
aalcalc < fifo/gul_S1_summaryaalcalc_P1 > work/gul_S1_aalcalc/P1.bin & pid1=$!

eltcalc < fifo/gul_S2_summaryeltcalc_P1 > fifo/gul_S2_eltcalc_P1 &
summarycalctocsv < fifo/gul_S2_summarysummarycalc_P1 > fifo/gul_S2_summarycalc_P1 &
pltcalc < fifo/gul_S2_summarypltcalc_P1 > fifo/gul_S2_pltcalc_P1 &
aalcalc < fifo/gul_S2_summaryaalcalc_P1 > work/gul_S2_aalcalc/P1.bin & pid1=$!

tee < fifo/gul_S1_summary_P1 fifo/gul_S1_summaryeltcalc_P1 fifo/gul_S1_summarypltcalc_P1 fifo/gul_S1_summarysummarycalc_P1 fifo/gul_S1_summaryaalcalc_P1  > /dev/null & pid19=$!
tee < fifo/gul_S2_summary_P1 fifo/gul_S2_summaryeltcalc_P1 fifo/gul_S2_summarypltcalc_P1 fifo/gul_S2_summarysummarycalc_P1 fifo/gul_S2_summaryaalcalc_P1  > /dev/null & pid20=$!
summarycalc -g -1 fifo/gul_S1_summary_P1 -2 fifo/gul_S2_summary_P1  < fifo/gul_P1 &

eve 1 1 | getmodel | gulcalc -S0 -L0 -r -c fifo/gul_P1 -i - | fmcalc > fifo/il_P1  &

wait $pid1 $pid2 $pid3 $pid4 $pid5 $pid6 $pid7 $pid8 $pid9 $pid10 $pid11 $pid12 $pid13 $pid14 $pid15 $pid16 $pid17 $pid18 $pid19 $pid20 


aalsummary -Kil_S1_aalcalc > output/il_S1_aalcalc.csv & apid1=$!
aalsummary -Kil_S2_aalcalc > output/il_S2_aalcalc.csv & apid2=$!
aalsummary -Kgul_S1_aalcalc > output/gul_S1_aalcalc.csv & apid3=$!
aalsummary -Kgul_S2_aalcalc > output/gul_S2_aalcalc.csv & apid4=$!
wait $apid1 $apid2 $apid3 $apid4 

rm fifo/gul_P1

rm fifo/gul_S1_summary_P1
rm fifo/gul_S1_summaryeltcalc_P1
rm fifo/gul_S1_eltcalc_P1
rm fifo/gul_S1_summarysummarycalc_P1
rm fifo/gul_S1_summarycalc_P1
rm fifo/gul_S1_summarypltcalc_P1
rm fifo/gul_S1_pltcalc_P1
rm fifo/gul_S1_summaryaalcalc_P1
rm fifo/gul_S2_summary_P1
rm fifo/gul_S2_summaryeltcalc_P1
rm fifo/gul_S2_eltcalc_P1
rm fifo/gul_S2_summarysummarycalc_P1
rm fifo/gul_S2_summarycalc_P1
rm fifo/gul_S2_summarypltcalc_P1
rm fifo/gul_S2_pltcalc_P1
rm fifo/gul_S2_summaryaalcalc_P1

rm work/gul_S1_aalcalc/*
rmdir work/gul_S1_aalcalc
rm work/gul_S2_aalcalc/*
rmdir work/gul_S2_aalcalc

rm fifo/il_P1

rm fifo/il_S1_summary_P1
rm fifo/il_S1_summaryeltcalc_P1
rm fifo/il_S1_eltcalc_P1
rm fifo/il_S1_summarysummarycalc_P1
rm fifo/il_S1_summarycalc_P1
rm fifo/il_S1_summarypltcalc_P1
rm fifo/il_S1_pltcalc_P1
rm fifo/il_S1_summaryaalcalc_P1
rm fifo/il_S2_summary_P1
rm fifo/il_S2_summaryeltcalc_P1
rm fifo/il_S2_eltcalc_P1
rm fifo/il_S2_summarysummarycalc_P1
rm fifo/il_S2_summarycalc_P1
rm fifo/il_S2_summarypltcalc_P1
rm fifo/il_S2_pltcalc_P1
rm fifo/il_S2_summaryaalcalc_P1

rm work/il_S1_aalcalc/*
rmdir work/il_S1_aalcalc
rm work/il_S2_aalcalc/*
rmdir work/il_S2_aalcalc