--on adding folder items to this_folder after receiving these_items
with timeout of (720 * 60) seconds
	tell application "Finder"
		--Get all AVI and MKV files that have no label color yet, meaning it hasn't been processed
		set allFiles to every file of entire contents of ("Macintosh HD:Users:bsnyder:Desktop:untitled folder" as alias) whose ((name extension is "m4v" or name extension is "mkv") and label index is 0)
		
		--Repeat for all files in above folder
		repeat with i from 1 to number of items in allFiles
			set currentFile to (item i of allFiles)
			
			try
				--Set to gray label to indicate processing
				set label index of currentFile to 7
				
				--Assemble original and new file paths
				set origFilepath to quoted form of POSIX path of (currentFile as alias)
				set newFilepath to (characters 1 thru -5 of origFilepath as string) & "mp4'"
				
				--Start the conversion
				set shellCommand to "nice /usr/local/bin/HandBrakeCLI -i " & origFilepath & " -o " & newFilepath & " -e x264 -b 2000 -w 960 -a 1 -E faac -B 160 -R 48 -6 dpl2 -f mp4 --crop 0:0:0:0 -x level=40:ref=2:mixed-refs:bframes=3:weightb:subme=9:direct=auto:b-pyramid:me=umh:analyse=all:no-fast-pskip:filter=-2,-1 ;"
				do shell script shellCommand
				
				--Set the label to green in case file deletion fails
				set label index of currentFile to 6
				
				
			on error errmsg
				--Set the label to red to indicate failure
				set label index of currentFile to 2
			end try
		end repeat
	end tell
end timeout
--end adding folder items to