@echo off
title DBDAudioRenamer v0.2.0 for BNK, XML files by Th3Nigh7mare
color b
FOR %%F IN ("Files\BNK\*.BNK") DO ("Tools\bnkextr.exe" "%%F" /nodir & MOVE "Files\BNK\*.wem" "Files\WEM")
echo. :::  _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____
echo. :::  \____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\
echo. ::: 
echo. :::      	BNK Files was extracted in Files!
echo. :::  _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____
echo. :::  \____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\ 
pause
mkdir "Files/WEM/Renamed"
echo. :::  _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____
echo. :::  \____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\
echo. ::: 
echo. :::      The renamed directory was created!
echo. :::  _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____
echo. :::  \____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\ 
pause
MOVE "Files\XML\*.XML" "Files\WEM\"
echo. :::  _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____
echo. :::  \____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\
echo. ::: 
echo. :::      The XML files was moved to "Files/Wem" folder
echo. :::  _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____
echo. :::  \____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\ 
FOR /R %%F IN (*.xml) DO ("Tools\quickbms.exe" "Tools\scripts\New_parse.bms" "%%F" "Files\WEM\Renamed")
echo. :::  _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____
echo. :::  \____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\
echo. ::: 
echo. :::      The Audio Files was renamed in "Files/Wem/Renamed"
echo. :::  _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____
echo. :::  \____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\ 
pause
MOVE "Files\WEM\*.XML" "Files\XML\"
echo. :::  _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____
echo. :::  \____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\
echo. ::: 
echo. :::      The XML was moved to "Files/Wem" folder
echo. :::  _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____
echo. :::  \____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\ 
CD Files/WEM/Renamed
FOR /R %%F IN ("*.WEM") DO ("../../../ww2ogg\ww2ogg.exe" "%%F" --pcb "../../../ww2ogg/packed_codebooks_aoTuV_603.bin")
PAUSE
echo. :::  _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____
echo. :::  \____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\
echo. ::: 
echo. :::      The Audio Files was converted to OGG and are located in "Files/Wem/Renamed" folder
echo. :::  _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ _____
echo. :::  \____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\\____\ 
pause