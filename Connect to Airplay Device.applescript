(*
"Connect to Airplay Device"
*)
tell application "System Preferences" to activate
tell application "System Preferences"
	reveal anchor "output" of pane id "com.apple.preference.sound"
end tell
tell application "System Events" to tell process "System Preferences"
	tell table 1 of scroll area 1 of tab group 1 of window 1
		try
			delay 0.5
			select (row 1 where value of text field 1 is "臥室")
		on error
			display alert "臥室 not connected !"
			return
		end try
	end tell
end tell