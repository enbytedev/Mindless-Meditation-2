//
//  ViewController.swift
//  MindlessMed2
//
//  Created by Tommy Juhl on 8/15/18.
//  Copyright © 2018 Tommy Juhl. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var startButtonOutlet: UIButton!
    @IBOutlet weak var pauseButtonOutlet: UIButton!
    @IBOutlet weak var resetButtonOutlet: UIButton!
    
    var medTimer = Timer()
    var medTime: Int = 0
    
    func runThis() {
        medTime += 1
        labelOutlet.text = String(medTime)
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        medTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {_ in self.runThis()})
        startButtonOutlet.isEnabled = false
    }
    @IBAction func pauseButtonPressed(_ sender: UIButton) {
        medTimer.invalidate()
        startButtonOutlet.isEnabled = true
    }
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        medTime = 0
        labelOutlet.text = String(medTime)
        startButtonOutlet.isEnabled = true
    }
    
    
    @IBOutlet weak var text: UILabel!
    @IBAction func tapIt(_ sender: Any) {
    
        let textName = "mindless"
        if let textName = Bundle.main.path(forResource: textName, ofType: "txt", inDirectory: "text") {
                do {
                    let contents = try String(contentsOfFile: textName)
                    let quoteArray : [String] = contents.components(separatedBy: "\n")
                    print(quoteArray)
                    let randomItem = Int(arc4random() % UInt32(quoteArray.count))
                    text.text = "\(quoteArray[randomItem])"
                    text.lineBreakMode = NSLineBreakMode.byWordWrapping
                    text.numberOfLines = 6
                } catch {
                    // contents could not be loaded
                }
            } else {
                // txt not found!
        }
    }
}
