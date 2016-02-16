//
//  DragImg.swift
//  MylittleMonster
//
//  Created by SEBASTIEN MONTIBELLER on 15/02/2016.
//  Copyright © 2016 SEBASTIEN MONTIBELLER. All rights reserved.
//

import Foundation
import UIKit

class DragImg: UIImageView {
    
    var originalPosition: CGPoint!
    var dropTarget: UIView?
    
    
    
    override init(frame:CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    } // this is what we have to type in order to make it works
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        // we need to know where the item is going to go if we dont move it properly, that is going to recenter it at his right place
        
        originalPosition = self.center
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            // this means grab what has been touched first
            
            let position = touch.locationInView(self.superview)
            // this means that we want to know where this location is
            
            self.center = CGPointMake(position.x,position.y)
            //that means move this object where my finger moves
        }
    }
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if let touch = touches.first, let target = dropTarget {
            
            let position = touch.locationInView(self.superview)
            
            if CGRectContainsPoint(target.frame, position) {
                NSNotificationCenter.defaultCenter().postNotification(NSNotification(name:"onTargetDropped", object: nil))
            }
        }
        
        self.center = originalPosition
    }
    
}