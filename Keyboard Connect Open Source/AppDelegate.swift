//
//  AppDelegate.swift
//  Keyboard Connect Open Source
//
//  Created by Arthur Yidi on 4/11/16.
//  Copyright © 2016 Arthur Yidi. All rights reserved.
//

import AppKit
import Foundation
import IOBluetooth

func myCGEventCallback(proxy : CGEventTapProxy,
                       type : CGEventType,
                       event : CGEvent,
                       refcon : UnsafeMutablePointer<Void>) -> Unmanaged<CGEvent>? {

    let btKey = UnsafeMutablePointer<BTKeyboard>(refcon).memory
    switch type {
    case .KeyUp:
        if let nsEvent = NSEvent(CGEvent: event) {
            btKey.sendKey(-1, nsEvent.modifierFlags.rawValue)
        }
        break
    case .KeyDown:
        if let nsEvent = NSEvent(CGEvent: event) {
            btKey.sendKey(Int(nsEvent.keyCode), nsEvent.modifierFlags.rawValue)
        }
        break
    default:
        break
    }

    return Unmanaged.passUnretained(event)
}

var btKey: BTKeyboard?

class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidBecomeActive(notification: NSNotification) {
        btKey = BTKeyboard()

        if !AXIsProcessTrusted() {
            print("Enable accessibility setting to read keyboard events.")
        }

        // capture all key events
        var eventMask: CGEventMask = 0
        eventMask |= (1 << CGEventMask(CGEventType.KeyUp.rawValue))
        eventMask |= (1 << CGEventMask(CGEventType.KeyDown.rawValue))
        eventMask |= (1 << CGEventMask(CGEventType.FlagsChanged.rawValue))

        if let eventTap = CGEventTapCreate(.CGSessionEventTap,
                                           .HeadInsertEventTap,
                                           .Default,
                                           eventMask,
                                           myCGEventCallback,
                                           &btKey) {
            let runLoopSource = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, eventTap, 0)
            CFRunLoopAddSource(CFRunLoopGetCurrent(), runLoopSource, kCFRunLoopCommonModes)
            CGEventTapEnable(eventTap, true)
        }
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        btKey?.terminate()
    }
}