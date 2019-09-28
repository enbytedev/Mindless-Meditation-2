//
//  ViewController.swift
//  MindlessMEd4
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
                    print(contents)
                } catch {
                    // contents could not be loaded
                }
            } else {
                // txt not found!
        }
        
        let randomNumber = arc4random_uniform(16)
        if randomNumber == 0 {
 
        }
        
        
        
        
        
        
        
      /*
       // let randomItem = Int(arc4random() % UInt32(text.count))
      //  text.text = array.randomElement()!;
       text.lineBreakMode = NSLineBreakMode.byWordWrapping
        text.numberOfLines = 6
        
        let firstArray = text
        let randomItem = Int(arc4random() % UInt32(firstArray.count))
        text.text = "\(firstArray[randomItem])"

 */
    }
}
