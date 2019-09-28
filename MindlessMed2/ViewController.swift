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
    @IBOutlet weak var text: UILabel!
    @IBAction func tapIt(_ sender: Any) {
    
        let textName = "mindless"
        if let textName = Bundle.main.path(forResource: textName, ofType: "txt", inDirectory: "text") {
                do {
                    let contents = try String(contentsOfFile: textName)
                    let quoteArray : [String] = contents.components(separatedBy: "@ ")
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
