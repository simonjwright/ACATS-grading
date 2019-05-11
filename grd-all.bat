Call MkACATS A
Call MkACATS B2
Call MkACATS B3
Call MkACATS B4
Call MkACATS B5
Call MkACATS B6
Call MkACATS B7
Call MkACATS B8
Call MkACATS B9
Call MkACATS BA
Call MkACATS BB
Call MkACATS BC
Call MkACATS BD
Call MkACATS BE
Call MkACATS BXA
Call MkACATS BXB
Call MkACATS BXC
Call MkACATS BXD
Call MkACATS BXE
Call MkACATS BXF
Rem Call MkACATS BXG -- No such directory yet.
Call MkACATS BXH
Call MkACATS C2
Call MkACATS C3
Call MkACATS C4
Call MkACATS C5
Call MkACATS C6
Call MkACATS C7
Call MkACATS C8
Call MkACATS C9
Call MkACATS CA
Call MkACATS CC
Call MkACATS CC
Call MkACATS CD
Call MkACATS CE
Call MkACATS CXA
Call MkACATS CXB
Call MkACATS CXC
Call MkACATS CXD
Call MkACATS CXE
Call MkACATS CXF
Call MkACATS CXG
Call MkACATS CXH
Rem Call MkACATS CZ -- Do not grade this with the tool.
Call MkACATS D
Call MkACATS E
Call MkACATS L
Call MkACATS LXD
Call MkACATS LXE
Call MkACATS LXH
Call MkACATS New
Rem Operations to do an overall grading.
Copy 41-A-Sum.csv+41-B2-Sum.csv+41-B3-Sum.csv+41-B4-Sum.csv+41-B5-Sum.csv+41-B6-Sum.csv 41-Tmp1-Sum.csv
Copy 41-Tmp1-Sum.csv+41-B7-Sum.csv+41-B8-Sum.csv+41-B9-Sum.csv+41-BA-Sum.csv+41-BB-Sum.csv 41-Tmp2-Sum.csv
Copy 41-Tmp2-Sum.csv+41-BC-Sum.csv+41-BD-Sum.csv+41-BE-Sum.csv+41-BXA-Sum.csv+41-BXB-Sum.csv 41-Tmp1-Sum.csv
Copy 41-Tmp1-Sum.csv+41-BXC-Sum.csv+41-BXD-Sum.csv+41-BXE-Sum.csv+41-BXF-Sum.csv+41-BXG-Sum.csv+41-BXH-Sum.csv 41-Tmp2-Sum.csv
Copy 41-Tmp2-Sum.csv+41-C2-Sum.csv+41-C3-Sum.csv+41-C4-Sum.csv+41-C5-Sum.csv+41-C6-Sum.csv 41-Tmp1-Sum.csv
Copy 41-Tmp1-Sum.csv+41-C7-Sum.csv+41-C8-Sum.csv+41-C9-Sum.csv+41-CA-Sum.csv+41-CB-Sum.csv 41-Tmp2-Sum.csv
Copy 41-Tmp2-Sum.csv+41-CC-Sum.csv+41-CD-Sum.csv+41-CE-Sum.csv+41-CXA-Sum.csv+41-CXB-Sum.csv 41-Tmp1-Sum.csv
Copy 41-Tmp1-Sum.csv+41-CXC-Sum.csv+41-CXD-Sum.csv+41-CXE-Sum.csv+41-CXF-Sum.csv+41-CXG-Sum.csv+41-CXH-Sum.csv 41-Tmp2-Sum.csv
Copy 41-Tmp2-Sum.csv+41-D-Sum.csv+41-E-Sum.csv+41-L-Sum.csv+41-LXD-Sum.csv+41-LXE-Sum.csv 41-Tmp1-Sum.csv
Copy 41-Tmp1-Sum.csv+41-LXH-Sum.csv+41-New-Sum.csv 41-All-Sum.csv
Copy 41-A-Event.csv+41-B2-Event.csv+41-B3-Event.csv+41-B4-Event.csv+41-B5-Event.csv+41-B6-Event.csv 41-Tmp1-Event.csv
Copy 41-Tmp1-Event.csv+41-B7-Event.csv+41-B8-Event.csv+41-B9-Event.csv+41-BA-Event.csv+41-BB-Event.csv 41-Tmp2-Event.csv
Copy 41-Tmp2-Event.csv+41-BC-Event.csv+41-BD-Event.csv+41-BE-Event.csv+41-BXA-Event.csv+41-BXB-Event.csv 41-Tmp1-Event.csv
Copy 41-Tmp1-Event.csv+41-BXC-Event.csv+41-BXD-Event.csv+41-BXE-Event.csv+41-BXF-Event.csv+41-BXG-Event.csv+41-BXH-Event.csv 41-Tmp2-Event.csv
Copy 41-Tmp2-Event.csv+41-C2-Event.csv+41-C3-Event.csv+41-C4-Event.csv+41-C5-Event.csv+41-C6-Event.csv 41-Tmp1-Event.csv
Copy 41-Tmp1-Event.csv+41-C7-Event.csv+41-C8-Event.csv+41-C9-Event.csv+41-CA-Event.csv+41-CB-Event.csv 41-Tmp2-Event.csv
Copy 41-Tmp2-Event.csv+41-CC-Event.csv+41-CD-Event.csv+41-CE-Event.csv+41-CXA-Event.csv+41-CXB-Event.csv 41-Tmp1-Event.csv
Copy 41-Tmp1-Event.csv+41-CXC-Event.csv+41-CXD-Event.csv+41-CXE-Event.csv+41-CXF-Event.csv+41-CXG-Event.csv+41-CXH-Event.csv 41-Tmp2-Event.csv
Copy 41-Tmp2-Event.csv+41-D-Event.csv+41-E-Event.csv+41-L-Event.csv+41-LXD-Event.csv+41-LXE-Event.csv 41-Tmp1-Event.csv
Copy 41-Tmp1-Event.csv+41-LXH-Event.csv+41-New-Event.csv 41-All-Event.csv
Grade 41-All-Event.csv 41-All-Sum.csv GNAT-Man.Txt "ACATS 4.1 Tests (for GNAT)" -Use_Time_Stamps -Normal -Check_All_Compiles -Use_Positions >G-Grade.Txt
Del 41-Tmp1-Sum.csv
Del 41-Tmp2-Sum.csv
Del 41-Tmp1-Event.csv
Del 41-Tmp2-Event.csv
