# Run all the ACATS tests and then grade them (but not cz).

tools_dir="`dirname $0`"

# There are more tests to run than to grade.
to_grade="a \
b2 b3 b4 b5 b6 b7 b8 b9 ba bb bc bd be bxa bxb bxc bxd bxe bxf bxh \
c2 c3 c4 c5 c6 c7 c8 c9 ca cb cc cd ce cxa cxb cxc cxd cxe cxf cxg cxh \
d \
e \
l lxd lxe lxh"

to_run="$to_grade cz"

for t in $to_run; do
    $tools_dir/mkacats-parallelized.sh $t
done

# Operations to do an overall grading.
rm -f 41-all-event.csv 41-all-sum.csv

for g in $to_grade; do
    cat 41-$g-event.csv >>41-all-event.csv
    cat 41-$g-sum.csv >>41-all-sum.csv
done

$tools_dir/grade 41-all-event.csv 41-all-sum.csv gnat-man.txt "ACATS 4.1 tests (for GNAT)" -use_time_stamps -normal -check_all_compiles -use_positions >g-grade.txt
