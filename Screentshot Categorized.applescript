(*
"Screentshot Categorized into selected type directory."
*)
on run {input, params}
	set optionsList to {"Memes", "Important", "Adorable", "temp"}
	set optionSelected to choose from list optionsList with prompt "Select the directory" default items {"Memes"}
	set pathText to POSIX path of input
	do shell script ("mv " & "\"" & pathText & "\"" & " " & "/Users/optoma/Dropbox/螢幕截圖/" & optionSelected)
end run