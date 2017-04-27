//
//  ViewController.swift
//  767654
//
//  Created by Yermakov Anton on 27.04.17.
//  Copyright © 2017 Yermakov Anton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        dowloadImage(button: 1)
    }
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        dowloadImage(button: 2)
    }
    
    @IBAction func button3Pressed(_ sender: UIButton) {
        dowloadImage(button: 3)
    }
    
    func dowloadImage(button: Int){
        
        var url = URL(string: "")
        
        switch button {
        case 1: url = URL(string: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSgc_VD_ytllzp_DzqeYPS0CAFxGjwFpYKw_4ngm7q8SZqJJK_r")
        case 2: url = URL(string: "https://pp.userapi.com/c629102/v629102365/21551/1Xp2ww1jQJg.jpg")
        case 3: url = URL(string: "http://wallpaperpulse.com/img/1010484.jpg")
        default: break
        }
        DispatchQueue.global(qos: .userInteractive).async {
            let fetch = NSData(contentsOf: url! as URL)
            if let dataImage = fetch {
                DispatchQueue.main.async {
                    self.myImage.image = UIImage(data: dataImage as Data)
                }
                
        }
        
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

