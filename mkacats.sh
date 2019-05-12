# Create a batch for, then run, then grade, the $1 directory of ACATS tests.
# For Unix-like systems (initially, macOS).
# Assumes the tests, stored as at https://github.com/simonjwright/ACATS,
# are in ../ACATS.
rm -f 41-$1-sum.csv
rm -f 41-$1-sum.txt
# Note: We skip any unprocessed macro tests.
for t in `ls ../ACATS/tests/$1/*.a*`; do
    ./summary $t 41-$1-sum.csv >>41-$1-sum.txt;
done
for t in `ls ../ACATS/tests/$1/*.d*`; do
    ./summary $t 41-$1-sum.csv >>41-$1-sum.txt;
done
./gnatscrp 41-$1-sum.csv 41-$1.sh 41-$1-results.txt ../ACATS/tests/$1/
sh ./41-$1.sh
rm 41-$1-event.csv
./gnatevnt 41-$1-results.txt 41-$1-event.csv
# -Could use -Verbose below, but it's huge.
./grade 41-$1-event.csv 41-$1-sum.csv gnat-man.txt "ACATS 4.1 $1 Tests (for GNAT)" -Use_Time_Stamps -Normal -Check_All_Compiles -Use_Positions >g-g$1.txt
