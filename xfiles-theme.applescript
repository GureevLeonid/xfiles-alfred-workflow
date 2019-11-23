on run query
	tell application "Music"		
        set state to player state

        if (state as string) is equal to "stopped" then
            tell application "Music" to play track "The X-Files Theme"
        else 
            set track_name to name of current track

            if track_name is equal to "The X-Files Theme" and (state as string) is equal to "playing" then
                tell application "Music" to stop
            else
                tell application "Music" to play track "The X-Files Theme"
            end if
        end if       
	end tell
end run