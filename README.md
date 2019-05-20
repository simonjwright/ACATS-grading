# ACATS Grading #

The [Ada Conformity Assessment Test Suite](http://www.ada-auth.org/acats.html) (ACATS) isn't all that simple to use. GCC has had an old version (2.5) of ACATS for a long time now (since 2007), available at build by `make -C gcc check-acats`, and [here on Github](https://github.com/simonjwright/ACATS) there's a GCC-compatible version of the latest suite (4.1L at the time of writing, 2019-05-12).

ACATS supports a test grading utility, and there's a [GNAT-compatible suite of utilities](http://www.ada-auth.org/submit-tools.html) to support running the tests (not conclusively, human intervention is still required!). That suite was written for Windows: this version has been modified to run on Unix-like systems (macOS and Debian stretch, so far).

As written, this suite expects to be installed next to ACATS (that is, `../ACATS` finds ACATS). Set up the tools and necessary Ada source by `./setup.sh`.

The originator's test rationale and procedures are described in [gnatinst.txt](gnatinst.txt).

It's best to run the suite in a different directory from its own. To do this,
```shell
$ cd /run/the/tests/here
$ /the/tool/directory/set-up-working-directory.sh
$ /the/tool/directory/grd-all.sh
```

This takes about 20 minutes on a early-2015 Macbook Pro with 2.9 GHz Intel Core i5, but note that [production compilers hang in C452003](https://gcc.gnu.org/bugzilla/show_bug.cgi?id=88610); on macOS, you can Ctrl-C to break out of this test and continue, whereas on debian stretch you'll need to say `killall gnatmake`.

To test just one chapter, say `c4`, replace the last line by
```shell
$ /the/tool/directory/mkacats.sh c4
```

The instructions above do a one-time copy of `gnat-man.txt` (the manual grading file), so you can make any necessary changes before re-running the tests.
