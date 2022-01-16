#NoEnv  
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


GetSelectedText() {
tmp = %ClipboardAll% ; save clipboard
Clipboard := "" ; clear clipboard
Send, ^c ; simulate Ctrl+C (=selection in clipboard)
ClipWait, 2 ; wait until clipboard contains data
selection = %Clipboard% ; save the content of the clipboard
Clipboard = %tmp% ; restore old content of the clipboard
return selection
}

!g::SendToNotion()
!f::Send {DOWN}     ; k DOWN            (Cursor down line)



SendToNotion() {
    selectedText := GetSelectedText()
    Run, "node" "D:\Work\Github\notionAutomation\index.js" %selectedText%
}