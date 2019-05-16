# Sets up the grading tools.
#
# Assumes the ACATS tests (from https://github.com/simonjwright/ACATS)
# are to be found at ../ACATS.

gprbuild -p -P tools

gnatchop ../ACATS/support/checkfil.ada
gnatchop ../ACATS/support/impdef*.a
gnatchop ../ACATS/support/report.a
gnatchop ../ACATS/support/tctouch.ada
