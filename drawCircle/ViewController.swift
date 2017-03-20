//
//  ViewController.swift
//  drawCircle
//
//  Created by Nattakarn Osborne on 3/20/17.
//  Copyright © 2017 Nattakarn Osborne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        let CircleView = Circle(frame: CGRect(x: 0,y: 0, width: 300, height: 300))
        CircleView.backgroundColor = .white
        view.backgroundColor = .white
        view.addSubview(CircleView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

