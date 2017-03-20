//
//  Circle.swift
//  drawCircle
//
//  Created by Nattakarn Osborne on 3/20/17.
//  Copyright © 2017 Nattakarn Osborne. All rights reserved.
//

import UIKit


class Circle: UIView{
    
    override func draw(_ rect: CGRect){
        
        // BeizierPath is a 2 point of potential curve
        
        let path = UIBezierPath()
        path.move(to: .zero)
        
        let radius: Double = 100
        // establish center of circle
        
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        path.move(to: CGPoint(x: center.x + CGFloat(radius), y: center.y))
        //draw lines interating trough loop
        for i in stride(from: 0, to: 361.0, by: 10){
            
            // radian = degrees * PI / 180
            
            let radians = i * Double.pi / 180
            
            let x = Double(center.x) + radius * cos(radians)
            let y = Double(center.x) + radius * sin(radians)
            
            
            
            path.addLine(to: CGPoint(x: x, y: y))
            
            
        }
        path.lineWidth = 5
        //establish the second point
        path.stroke()
        
        
        
    }
    
}
