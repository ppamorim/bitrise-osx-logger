//
//  HomeViewController.swift
//  bitrise-osx
//
//  Created by Pedro Paulo de Amorim on 29/07/2016.
//  Copyright © 2016 Pedro Paulo de Amorim. All rights reserved.
//

import Cocoa

let SETTING_VIEW_CELL = "SettingsViewCell"

class HomeViewController: NSViewController {
  
  let authWindowController = AuthWindowController.init(windowNibName: "AuthWindowController")

  @IBOutlet weak var branchSelector: NSPopUpButton!
  @IBOutlet weak var appSelector: NSPopUpButton!
  @IBOutlet var textView: NSTextView!
  @IBOutlet weak var borderedScrollView: NSScrollView!
  @IBOutlet weak var settingsTableView: NSTableView!
  
  internal let menuItems = ["logout", "help", "exit"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configTableView()
    stubData()
  }
  
  @IBAction func settingsClick(sender: AnyObject) {
    borderedScrollView.hidden = !borderedScrollView.hidden
  }
  
  @IBAction func InteractAppClick(sender: AnyObject) {
    
  }
  
  private func configTableView() {
    settingsTableView.setDataSource(self)
    settingsTableView.setDelegate(self)
    settingsTableView.reloadData()
  }
  
  private func stubData() {
    textView.textStorage?.appendAttributedString(NSAttributedString(
      string: "INFO[11:45:59] Submitting anonymized usage information... \n",
      attributes: [NSForegroundColorAttributeName: NSColor.whiteColor()]))
    let delay = 1 * Double(NSEC_PER_SEC)
    let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
    dispatch_after(time, dispatch_get_main_queue()) {
      self.stubData()
    }
  }
  
}

extension HomeViewController: NSTableViewDelegate {
  func tableView(tableView: NSTableView, viewForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSView? {
    if let cell = tableView.makeViewWithIdentifier(SETTING_VIEW_CELL, owner: nil) as? NSTableCellView {
      cell.textField?.stringValue = "oi"
      return cell
    }
    return nil
  }
}

extension HomeViewController: NSTableViewDataSource {
  
  func numberOfRowsInTableView(tableView: NSTableView) -> Int {
    return menuItems.count
  }
  
}