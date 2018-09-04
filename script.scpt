
set last_screen to "left"
setDockScreenEdge("left")

repeat

    set mouse_x_pos to do shell script "/Users/kim/tmp/osx_dock/MouseTools -location | head -n 1"
    set mouse_x_pos_number to mouse_x_pos as number

    #do shell script "echo mouse pos: " & mouse_x_pos

    if mouse_x_pos_number greater than -1 then
        if last_screen is "left" then
            #do shell script "echo mouse right screen: " & mouse_x_pos_number
            setDockScreenEdge("right")
            set last_screen to "right"
        end if
    else
        if last_screen is "right" then
            #do shell script "echo mouse left screen: " & mouse_x_pos_number
            setDockScreenEdge("left")
            set last_screen to "left"
        end if
    end if

delay 0.5

end repeat

on setDockScreenEdge(theEdge)

    tell application "System Events"
        tell dock preferences
            if theEdge is "right" then
                set screen edge to right
            else if theEdge is "left" then
                set screen edge to left
            else if theEdge is "bottom" then
                set screen edge to bottom
            end if
        end tell
    end tell

end setDockScreenEdge

