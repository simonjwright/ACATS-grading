Rem Create a batch for, then run, then grade, the %1 directory of ACATS tests.
-- Summarize the tests in the %1 directory:
del 41-%1-Sum.csv
del 41-%1-Sum.txt
-- Note: We skip any unprocessed macro tests.
for %%i in (d:\acaa\acats\acats\%1\*.A??) do Summary %%i 41-%1-Sum.csv >>41-%1-Sum.txt
for %%i in (d:\acaa\acats\acats\%1\*.D??) do Summary %%i 41-%1-Sum.csv >>41-%1-Sum.txt
GnatScrp 41-%1-Sum.csv 41-%1.Bat 41-%1-Results.Txt d:\acaa\acats\acats\%1\
Call 41-%1
del 41-%1-Event.csv
GnatEvnt 41-%1-Results.Txt 41-%1-Event.csv
Rem -Could use -Verbose below, but it's huge.
Grade 41-%1-Event.csv 41-%1-Sum.csv GNAT-Man.Txt "ACATS 4.1 %1 Tests (for GNAT)" -Use_Time_Stamps -Normal -Check_All_Compiles -Use_Positions >G-G%1.Txt
