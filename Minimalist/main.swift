//
//  main.swift
//  Minimalist
//
//  Created by Weera Wu on 9/5/2564 BE.
//

import Cocoa


/// Case 1. Status item-based application
let app = NSApplication.shared

let statusBar = NSStatusBar.system
let statusItem = statusBar.statusItem(withLength: NSStatusItem.variableLength)
statusItem.button?.title = "😊"
statusItem.button?.action = #selector(NSApplication.terminate)

app.run()


///// Case 2. Minimal windowed application
//let app = NSApplication.shared
//
//let window = NSWindow.init(contentRect: NSMakeRect(0, 0, 320, 200), styleMask: .titled, backing: .buffered, defer: false)
//window.orderFrontRegardless()
//
//app.run()


///// Case 3: Fully activated Cocoa windowed app
//let app = NSApplication.shared
//app.setActivationPolicy(.regular)
//
//let window = NSWindow.init(contentRect: NSMakeRect(0, 0, 320, 200), styleMask: .titled, backing: .buffered, defer: false)
//window.orderFrontRegardless()
//
//app.activate(ignoringOtherApps: true)
//app.run()


///// Case 4. Closing the app and cleanup
//class AppDelegate: NSObject, NSApplicationDelegate {
//    var mainWindow: NSWindow?
//
//    func applicationDidFinishLaunching(_ notification: Notification) {
//        let frame = NSMakeRect(0, 0, 320, 200)
//        let window = NSWindow.init(contentRect: frame, styleMask: [.titled, .closable], backing: .buffered, defer: true)
//
//        let textView = NSTextView(frame: frame)
//        window.contentView = textView
//        window.makeFirstResponder(textView)
//
//        window.makeKeyAndOrderFront(nil)
//        mainWindow = window
//
//        let app = NSApplication.shared
//        app.activate(ignoringOtherApps: true)
//    }
//
//    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
//        return true
//    }
//}
//
//let app = NSApplication.shared
//app.setActivationPolicy(.regular)
//
//let delegate = AppDelegate()
//app.delegate = delegate
//app.run()


///// Case 5. Menu item-based application
//let app = NSApplication.shared
//app.setActivationPolicy(.regular)
//
//let menubar = NSMenu()
//let appMenuItem = NSMenuItem()
//menubar.addItem(appMenuItem)
//app.mainMenu = menubar
//
//let appMenu = NSMenu()
//let appName = ProcessInfo.processInfo.processName
//let quitTitle = "Quit \(appName)"
//let quitMenuItem = NSMenuItem.init(title: quitTitle, action: #selector(NSApplication.terminate), keyEquivalent: "q")
//appMenu.addItem(quitMenuItem)
//appMenuItem.submenu = appMenu
//
//let window = NSWindow.init(contentRect: NSMakeRect(0, 0, 320, 200), styleMask: .titled, backing: .buffered, defer: false)
//window.cascadeTopLeft(from: NSMakePoint(20, 20))
//window.title = appName
//window.makeKeyAndOrderFront(nil)
//
//app.activate(ignoringOtherApps: true)
//app.run()
