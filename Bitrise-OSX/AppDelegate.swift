//
//  AppDelegate.swift
//  bitrise-osx
//
//  Created by Pedro Paulo de Amorim on 29/07/2016.
//  Copyright © 2016 Pedro Paulo de Amorim. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
  
  let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-2)
  let popover = NSPopover()

  @IBOutlet weak var window: NSWindow!


  func applicationDidFinishLaunching(aNotification: NSNotification) {
    if let button = statusItem.button {
      button.image = NSImage(named: "bitrise")
      button.action = #selector(togglePopover)
    }
    popover.appearance = NSAppearance(named: NSAppearanceNameVibrantLight)
    popover.behavior = NSPopoverBehavior.Transient
    popover.contentViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
  }

  func applicationWillTerminate(aNotification: NSNotification) {
    // Insert code here to tear down your application
  }
  
  func showPopover(sender: AnyObject?) {
    if let button = statusItem.button {
      popover.showRelativeToRect(button.bounds, ofView: button, preferredEdge: NSRectEdge.MinY)
    }
  }
  
  func closePopover(sender: AnyObject?) {
    popover.performClose(sender)
  }
  
  func togglePopover(sender: AnyObject?) {
    if popover.shown {
      closePopover(sender)
    } else {
      showPopover(sender)
    }
  }


}

