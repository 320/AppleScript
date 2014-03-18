tell application "System Events"
	keystroke "n" using {command down}
	keystroke "j" using {command down}
	set var to the clipboard
	set the var to my replace_chars(var, "watch?v=", "embed/")
	keystroke var
	keystroke return
end tell

on replace_chars(this_text, search_string, replacement_string)
	set AppleScript's text item delimiters to the search_string
	set the item_list to every text item of this_text
	set AppleScript's text item delimiters to the replacement_string
	set this_text to the item_list as string
	set AppleScript's text item delimiters to ""
	return this_text
end replace_chars
