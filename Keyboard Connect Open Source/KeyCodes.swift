//
//  KeyCodes.swift
//  Keyboard Connect Server
//
//  Created by Arthur Yidi on 4/11/16.
//  Copyright © 2016 Arthur Yidi. All rights reserved.
//

import IOKit.hid // hid keys
import Carbon.HIToolbox // virtual keys

func virtualKeyCodeToHIDKeyCode(vKeyCode: Int) -> Int {
   switch vKeyCode {
   case kVK_ANSI_A: return kHIDUsage_KeyboardA
   case kVK_ANSI_B: return kHIDUsage_KeyboardB
   case kVK_ANSI_C: return kHIDUsage_KeyboardC
   case kVK_ANSI_D: return kHIDUsage_KeyboardD
   case kVK_ANSI_E: return kHIDUsage_KeyboardE
   case kVK_ANSI_F: return kHIDUsage_KeyboardF
   case kVK_ANSI_G: return kHIDUsage_KeyboardG
   case kVK_ANSI_H: return kHIDUsage_KeyboardH
   case kVK_ANSI_I: return kHIDUsage_KeyboardI
   case kVK_ANSI_J: return kHIDUsage_KeyboardJ
   case kVK_ANSI_K: return kHIDUsage_KeyboardK
   case kVK_ANSI_L: return kHIDUsage_KeyboardL
   case kVK_ANSI_M: return kHIDUsage_KeyboardM
   case kVK_ANSI_N: return kHIDUsage_KeyboardN
   case kVK_ANSI_O: return kHIDUsage_KeyboardO
   case kVK_ANSI_P: return kHIDUsage_KeyboardP
   case kVK_ANSI_Q: return kHIDUsage_KeyboardQ
   case kVK_ANSI_R: return kHIDUsage_KeyboardR
   case kVK_ANSI_S: return kHIDUsage_KeyboardS
   case kVK_ANSI_T: return kHIDUsage_KeyboardT
   case kVK_ANSI_U: return kHIDUsage_KeyboardU
   case kVK_ANSI_V: return kHIDUsage_KeyboardV
   case kVK_ANSI_W: return kHIDUsage_KeyboardW
   case kVK_ANSI_X: return kHIDUsage_KeyboardX
   case kVK_ANSI_Y: return kHIDUsage_KeyboardY
   case kVK_ANSI_Z: return kHIDUsage_KeyboardZ
   case kVK_ANSI_1: return kHIDUsage_Keyboard1
   case kVK_ANSI_2: return kHIDUsage_Keyboard2
   case kVK_ANSI_3: return kHIDUsage_Keyboard3
   case kVK_ANSI_4: return kHIDUsage_Keyboard4
   case kVK_ANSI_5: return kHIDUsage_Keyboard5
   case kVK_ANSI_6: return kHIDUsage_Keyboard6
   case kVK_ANSI_7: return kHIDUsage_Keyboard7
   case kVK_ANSI_8: return kHIDUsage_Keyboard8
   case kVK_ANSI_9: return kHIDUsage_Keyboard9
   case kVK_ANSI_0: return kHIDUsage_Keyboard0
   case kVK_Return: return kHIDUsage_KeyboardReturnOrEnter
   case kVK_Escape: return kHIDUsage_KeyboardEscape
   case kVK_Delete: return kHIDUsage_KeyboardDeleteOrBackspace
   case kVK_Tab: return kHIDUsage_KeyboardTab
   case kVK_Space: return kHIDUsage_KeyboardSpacebar
   case kVK_ANSI_Minus: return kHIDUsage_KeyboardHyphen
   case kVK_ANSI_Equal: return kHIDUsage_KeyboardEqualSign
   case kVK_ANSI_LeftBracket: return kHIDUsage_KeyboardOpenBracket
   case kVK_ANSI_RightBracket: return kHIDUsage_KeyboardCloseBracket
   case kVK_ANSI_Backslash: return kHIDUsage_KeyboardBackslash
   case kVK_ANSI_Quote: return kHIDUsage_KeyboardQuote
   case kVK_ANSI_Grave: return kHIDUsage_KeyboardGraveAccentAndTilde
   case kVK_ANSI_Comma: return kHIDUsage_KeyboardComma
   case kVK_ANSI_Period: return kHIDUsage_KeyboardPeriod
   case kVK_ANSI_Slash: return kHIDUsage_KeyboardSlash
   case kVK_ANSI_Semicolon: return kHIDUsage_KeyboardSemicolon
   case kVK_CapsLock: return kHIDUsage_KeyboardCapsLock
   case kVK_F1: return kHIDUsage_KeyboardF1
   case kVK_F2: return kHIDUsage_KeyboardF2
   case kVK_F3: return kHIDUsage_KeyboardF3
   case kVK_F4: return kHIDUsage_KeyboardF4
   case kVK_F5: return kHIDUsage_KeyboardF5
   case kVK_F6: return kHIDUsage_KeyboardF6
   case kVK_F7: return kHIDUsage_KeyboardF7
   case kVK_F8: return kHIDUsage_KeyboardF8
   case kVK_F9: return kHIDUsage_KeyboardF9
   case kVK_F10: return kHIDUsage_KeyboardF10
   case kVK_F11: return kHIDUsage_KeyboardF11
   case kVK_F12: return kHIDUsage_KeyboardF12
   case kVK_Home: return kHIDUsage_KeyboardHome
   case kVK_PageUp: return kHIDUsage_KeyboardPageUp
   case kVK_ForwardDelete: return kHIDUsage_KeyboardDeleteForward
   case kVK_End: return kHIDUsage_KeyboardEnd
   case kVK_PageDown: return kHIDUsage_KeyboardPageDown
   case kVK_RightArrow: return kHIDUsage_KeyboardRightArrow
   case kVK_LeftArrow: return kHIDUsage_KeyboardLeftArrow
   case kVK_DownArrow: return kHIDUsage_KeyboardDownArrow
   case kVK_UpArrow: return kHIDUsage_KeyboardUpArrow
   case kVK_ANSI_KeypadDivide: return kHIDUsage_KeypadSlash
   case kVK_ANSI_KeypadMultiply: return kHIDUsage_KeypadAsterisk
   case kVK_ANSI_KeypadMinus: return kHIDUsage_KeypadHyphen
   case kVK_ANSI_KeypadPlus: return kHIDUsage_KeypadPlus
   case kVK_ANSI_KeypadEnter: return kHIDUsage_KeypadEnter
   case kVK_ANSI_Keypad1: return kHIDUsage_Keypad1
   case kVK_ANSI_Keypad2: return kHIDUsage_Keypad2
   case kVK_ANSI_Keypad3: return kHIDUsage_Keypad3
   case kVK_ANSI_Keypad4: return kHIDUsage_Keypad4
   case kVK_ANSI_Keypad5: return kHIDUsage_Keypad5
   case kVK_ANSI_Keypad6: return kHIDUsage_Keypad6
   case kVK_ANSI_Keypad7: return kHIDUsage_Keypad7
   case kVK_ANSI_Keypad8: return kHIDUsage_Keypad8
   case kVK_ANSI_Keypad9: return kHIDUsage_Keypad9
   case kVK_ANSI_Keypad0: return kHIDUsage_Keypad0
   case kVK_ANSI_KeypadDecimal: return kHIDUsage_KeypadPeriod
   case kVK_ANSI_KeypadEquals: return kHIDUsage_KeypadEqualSign
   case kVK_F13: return kHIDUsage_KeyboardF13
   case kVK_F14: return kHIDUsage_KeyboardF14
   case kVK_F15: return kHIDUsage_KeyboardF15
   case kVK_F16: return kHIDUsage_KeyboardF16
   case kVK_F17: return kHIDUsage_KeyboardF17
   case kVK_F18: return kHIDUsage_KeyboardF18
   case kVK_F19: return kHIDUsage_KeyboardF19
   case kVK_F20: return kHIDUsage_KeyboardF20
   case kVK_Help: return kHIDUsage_KeyboardHelp
   case kVK_Mute: return kHIDUsage_KeyboardMute
   case kVK_VolumeUp: return kHIDUsage_KeyboardVolumeUp
   case kVK_VolumeDown: return kHIDUsage_KeyboardVolumeDown
   case kVK_ANSI_KeypadClear: return kHIDUsage_KeyboardClear
   case kVK_Control: return kHIDUsage_KeyboardLeftControl
   case kVK_Shift: return kHIDUsage_KeyboardLeftShift
   case kVK_Option: return kHIDUsage_KeyboardLeftAlt
   case kVK_Command: return kHIDUsage_KeyboardLeftGUI
   case kVK_RightControl: return kHIDUsage_KeyboardRightControl
   case kVK_RightShift: return kHIDUsage_KeyboardRightShift
   case kVK_RightOption: return kHIDUsage_KeyboardRightAlt
   default:
      return 0
   }
}