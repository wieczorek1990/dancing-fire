//
//  AppDelegate.swift
//  dancing-fire
//
//  Created by Łukasz Wieczorek on 20/12/2025.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet var window: NSWindow!

  func applicationDidFinishLaunching(_ aNotification: Notification) {

  }

  func applicationWillTerminate(_ aNotification: Notification) {

  }

  func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }

}
