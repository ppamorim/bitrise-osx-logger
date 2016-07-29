//
//  HomeViewController.swift
//  bitrise-osx
//
//  Created by Pedro Paulo de Amorim on 29/07/2016.
//  Copyright © 2016 Pedro Paulo de Amorim. All rights reserved.
//

import Cocoa

class HomeViewController: NSViewController {

  @IBOutlet weak var branchSelector: NSPopUpButton!
  @IBOutlet weak var appSelector: NSPopUpButton!
  @IBOutlet var textView: NSTextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    stubData()
  }
    
  @IBAction func configClick(sender: AnyObject) {
    
  }
  
  
  @IBAction func InteractAppClick(sender: AnyObject) {
    
  }
  
  private func stubData() {
    textView.textStorage?.appendAttributedString(NSAttributedString(string: "INFO[11:45:59] Submitting anonymized usage information... \n", attributes: [NSForegroundColorAttributeName: NSColor.whiteColor()]))
    
    let delay = 1 * Double(NSEC_PER_SEC)
    let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
    dispatch_after(time, dispatch_get_main_queue()) {
      self.stubData()
    }
  }
  
}
