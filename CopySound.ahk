; # ：win 键
; ! ：alt
; ^ ：ctrl
; + ：shift


; ~mbutton::
;   WinGetClass cos_class, A
;   if (cos_class == "Emacs")
;     SendInput !w
;   else
;     SendInput ^c
;   return




; ToolTip Clipboard data type hehe : %A_EventInfo%
; ToolTip Clipboard data type hehe : %Clipboard%

; Type
; Contains one of the following values:
; 0 if the clipboard is now empty;
; 1 if it contains something that can be expressed as text (this includes files copied from an Explorer window);
; 2 if it contains something entirely non-text such as a picture.

#Persistent
return

OnClipboardChange:
    type = %A_EventInfo%
    value := "1"
    
    ; if(type = value){
    ;     ToolTip data %type% : %Clipboard%
    ; }else{
    ;     ToolTip type:%type% hehe Copied
    ; }
        

    SoundPlay, %A_ScriptDir%\sound.wav
    Sleep 1000
    ToolTip  ; 关闭提示.
    return

