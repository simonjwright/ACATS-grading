# Sets up the source code & other data required for the grading tools,
# in the directory from which the tools are to be run (best if this
# isn't the same as the grading tools' directory).

# Locate the tools.
tools_dir="`dirname $0`"

# Assumes the ACATS tests (from https://github.com/simonjwright/ACATS)
# are to be found at $tools_dir/../ACATS.

rm -rf support
mkdir support

# The GCC version of ACATS expects ACATS4GNATDIR to be the directory
# in which the tests are run, below which the support/ directory
# contains processed GNAT-ready Ada code.
rm -f ACATS4GNATDIR
ln -s $PWD ACATS4GNATDIR

# Pick up the C and Fortran sources from ACATS/tests/ and compile
# them. We need a real library (libsupport.a) for the test links to
# succeed (in most cases: not CD30005).
find $tools_dir/../ACATS/tests -name \*.c -exec cp {} support/ \;
find $tools_dir/../ACATS/tests -name \*.ftn -exec cp {} support/ \;
# build the library
cp $tools_dir/support_lib.gpr .
gprbuild -k -P support_lib.gpr

# Pick up Ada code from ACATS/support
for ada in $tools_dir/../ACATS/support/*.a*; do
    gnatchop $ada support/
done

# Pick up code that needs to have macros substituted (only in the
for tst in $tools_dir/../ACATS/support/*.tst; do
    cp $tst support/
done
# Control file tells macrosub which files to process (into .adt).
# NB, macrosub is written to use upper-case filenames.
ls $PWD/support/*.tst >support/TSTTESTS.DAT
# Macros for substitution
cp $tools_dir/../ACATS/support/macro.dfs support/MACRO.DFS
# Build macrosub (and send_sigint_to_parent, while we're here)
(cd support; gnatmake macrosub send_sigint_to_parent)
# Run macrosub
(cd support; ./macrosub)
# Chop the processed files
for processed in support/*.adt; do
    gnatchop $ada support/
done

# Copy the standard manual processing list, unless it's already here
if [ ! -f gnat-man.txt ]; then
    cp -v $tools_dir/gnat-man.txt .
fi
