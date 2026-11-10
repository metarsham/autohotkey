#Requires AutoHotkey v2.0

IsArabicKeyboard() {
    hwnd := DllCall("GetForegroundWindow", "Ptr")
    threadId := DllCall("GetWindowThreadProcessId", "Ptr", hwnd, "Ptr", 0, "UInt")
    langID := DllCall("GetKeyboardLayout", "UInt", threadId, "Ptr") & 0xFFFF

    return (langID & 0x3FF) = 0x01
}

#HotIf IsArabicKeyboard()

1::SendText "١"
2::SendText "٢"
3::SendText "٣"
4::SendText "٤"
5::SendText "٥"
6::SendText "٦"
7::SendText "٧"
8::SendText "٨"
9::SendText "٩"
0::SendText "٠"

Numpad1::SendText "١"
Numpad2::SendText "٢"
Numpad3::SendText "٣"
Numpad4::SendText "٤"
Numpad5::SendText "٥"
Numpad6::SendText "٦"
Numpad7::SendText "٧"
Numpad8::SendText "٨"
Numpad9::SendText "٩"
Numpad0::SendText "٠"

#HotIf
