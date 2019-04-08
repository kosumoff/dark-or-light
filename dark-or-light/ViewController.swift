//
//  ViewController.swift
//  dark-or-light
//
//  Created by kosumov on 4/22/18.
//  Copyright © 2018 kosumov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var noBtn: UIButton!
    @IBOutlet weak var yesBtn: UIButton!
    @IBOutlet weak var viewDark: UIView!
    @IBOutlet weak var viewLight: UIView!
    @IBOutlet weak var exitBtn: UIButton!
    @IBOutlet weak var matrixImg: UIImageView!
    @IBOutlet weak var mainText1: UILabel!
    @IBOutlet weak var mainText2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UIView.animate(withDuration: 1) {
            self.mainText1.alpha = 1
            self.mainText2.alpha = 1
        }
        
        UIView.animate(withDuration: 1) {
            self.matrixImg.alpha = 1
        }
        
        UIView.animate(withDuration: 1) {
            self.yesBtn.alpha = 1
            self.noBtn.alpha = 1
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func yesBtnGo(_ sender: Any) {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.setLocalizedDateFormatFromTemplate("HH")
        let hour = dateFormatter.string(from: date)
        let h = Int(hour)!
        exitBtn.isHidden = false
        
        if (h >= 7) && (h <= 19) {
            viewLight.isHidden = false
        } else {
            viewDark.isHidden = false
        }
    }
    
    @IBAction func noBtnGo(_ sender: Any) {
        exit(0)
    }
    @IBAction func exitBtn(_ sender: Any) {
        exit(0)
    }
}

