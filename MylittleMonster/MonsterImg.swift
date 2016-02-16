//
//  MonsterImg.swift
//  MylittleMonster
//
//  Created by SEBASTIEN MONTIBELLER on 16/02/2016.
//  Copyright © 2016 SEBASTIEN MONTIBELLER. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView{
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        playIdleAnimation()
        
    }
    
    func playIdleAnimation(){
        
        self.image = UIImage(named:"idle.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
            
        }
        // now we are setting the array
        self.animationImages = imgArray
        
        //now we need to give it some times
        self.animationDuration = 0.8
        
        // to make him breathe
        self.animationRepeatCount = 0  // 0 = infinity
        
        self.startAnimating()
    }
    
    func playDeathAnimation() {
        
        self.image = UIImage(named:"dead5.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for var x = 1; x <= 5; x++ {
            let img = UIImage(named: "dead\(x).png")
            imgArray.append(img!)
            
        }
        self.animationImages = imgArray
        
        self.animationDuration = 0.8
        
        self.animationRepeatCount = 1
        
        self.startAnimating()

    }
    
}