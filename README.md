# ACATS Grading #

The [Ada Conformity Assessment Test Suite](http://www.ada-auth.org/acats.html) (ACATS) isn't all that simple to use. GCC has had an old version (2.5) of ACATS for a long time now (since 2007), available at build by `make -C gcc check-acats`, and [here on Github](https://github.com/simonjwright/ACATS) there's a GCC-compatible version of the latest suite (4.1L at the time of writing, 2019-05-12).

ACATS supports a test grading utility, and there's a [GNAT-compatible suite of utilities](http://www.ada-auth.org/submit-tools.html) to support running the tests (not conclusively, human intervention is still required!). That suite was written for Windows: this version has been modified to run on Unix-like systems (macOS and Debian stretch, so far).

As written, this suite expects to be installed next to ACATS (that is, `../ACATS` finds ACATS). Set up the tools and necessary Ada source by `./setup.sh`..

The originator's test rationale and procedures are described in [gnatinst.txt](gnatinst.txt).
