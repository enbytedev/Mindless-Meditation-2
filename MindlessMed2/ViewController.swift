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
    var (hours, minutes, seconds, partial) = (0, 0, 0, 0)
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        medTimer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: {_ in self.timerMan()})
        startButtonOutlet.isEnabled = false
    }

    /*I hope nobody looks at this code. The hours don't work so I replaced the partials with seconds. The pause button doesn't work so I removed it for now.
     
     I hope to come back to this soon!*/
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        medTimer.invalidate()
        startButtonOutlet.isEnabled = true
        
    }
    
    func timerMan() {
        
        partial += 1
        if partial < 99 {
            
            seconds += 1
            partial = 0
        }
        if seconds == 60 {
        minutes += 1
        seconds = 0
        }
        
        if minutes == 60 {
            hours += 1
            minutes = 0
        }
        
        labelOutlet.text = "\(hours):\(minutes):\(seconds)"
        
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
    @IBOutlet weak var textSM: UILabel!
    @IBAction func tapItSM(_ sender: Any) {
    
        let textName = "mindless"
        if let textName = Bundle.main.path(forResource: textName, ofType: "txt", inDirectory: "text") {
                do {
                    let contents = try String(contentsOfFile: textName)
                    let quoteArray : [String] = contents.components(separatedBy: "\n")
                    print(quoteArray)
                    let randomItem = Int(arc4random() % UInt32(quoteArray.count))
                    textSM.text = "\(quoteArray[randomItem])"
                    textSM.lineBreakMode = NSLineBreakMode.byWordWrapping
                    textSM.numberOfLines = 6
                } catch {
                    // contents could not be loaded
                }
            } else {
                // txt not found!
        }
    }
    @IBOutlet weak var textMO: UILabel!
    @IBAction func tapItMO(_ sender: Any) {
        let textName = "mostoffensive"
        if let textName = Bundle.main.path(forResource: textName, ofType: "txt", inDirectory: "text") {
                do {
                    let contents = try String(contentsOfFile: textName)
                    let quoteArray : [String] = contents.components(separatedBy: "\n")
                    print(quoteArray)
                    let randomItem = Int(arc4random() % UInt32(quoteArray.count))
                    textMO.text = "\(quoteArray[randomItem])"
                    textMO.lineBreakMode = NSLineBreakMode.byWordWrapping
                    textMO.numberOfLines = 6
                } catch {
                    // contents could not be loaded
                }
            } else {
                // txt not found!
        }
    }
    
    @IBOutlet weak var textLO: UILabel!
    @IBAction func tapItLO(_ sender: Any) {
        let textName = "leastoffensive"
             if let textName = Bundle.main.path(forResource: textName, ofType: "txt", inDirectory: "text") {
                     do {
                         let contents = try String(contentsOfFile: textName)
                         let quoteArray : [String] = contents.components(separatedBy: "\n")
                         print(quoteArray)
                         let randomItem = Int(arc4random() % UInt32(quoteArray.count))
                         textLO.text = "\(quoteArray[randomItem])"
                         textLO.lineBreakMode = NSLineBreakMode.byWordWrapping
                         textLO.numberOfLines = 6
                     } catch {
                         // contents could not be loaded
                     }
                 } else {
                     // txt not found!
             }
    }
    @IBOutlet weak var textConvo: UILabel!
    @IBAction func tapItConvo(_ sender: Any) {
        let textName = "convo"
             if let textName = Bundle.main.path(forResource: textName, ofType: "txt", inDirectory: "text") {
                     do {
                         let contents = try String(contentsOfFile: textName)
                         let quoteArray : [String] = contents.components(separatedBy: "\n")
                         print(quoteArray)
                         let randomItem = Int(arc4random() % UInt32(quoteArray.count))
                         textConvo.text = "\(quoteArray[randomItem])"
                         textConvo.lineBreakMode = NSLineBreakMode.byWordWrapping
                         textConvo.numberOfLines = 6
                     } catch {
                         // contents could not be loaded
                     }
                 } else {
                     // txt not found!
             }
    }
    
    
    
    
}
