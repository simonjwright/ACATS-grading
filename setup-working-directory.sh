# Sets up the source code & other data required for the grading tools.

# Locate the tools.
tools_dir="`dirname $0`"

# Assumes the ACATS tests (from https://github.com/simonjwright/ACATS)
# are to be found at $tools_dir/../ACATS.

for ada in checkfil.ada impdef\*.a report.a tctouch.ada; do
    gnatchop $tools_dir/../ACATS/support/$ada
done

if [ ! -f gnat-man.txt ]; then
    cp -v $tools_dir/gnat-man.txt .
fi
