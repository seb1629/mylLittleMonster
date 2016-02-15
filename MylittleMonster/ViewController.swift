//
//  ViewController.swift
//  MylittleMonster
//
//  Created by SEBASTIEN MONTIBELLER on 15/02/2016.
//  Copyright © 2016 SEBASTIEN MONTIBELLER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImg: UIImageView!
    @IBOutlet weak var foodImg: DragImg!
    @IBOutlet weak var heartImg: DragImg!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       var imgArray = [UIImage]()
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
            
        }
        // now we are setting the array 
        monsterImg.animationImages = imgArray
        
        //now we need to give it some times
        monsterImg.animationDuration = 0.8
        
        // to make him breathe 
        monsterImg.animationRepeatCount = 0  // 0 = infinity
        
        monsterImg.startAnimating()
    }

    
    
    

}

