//
//  FrameBoundsController.swift
//  Layer
//
//  Created by natai on 2018/2/26.
//  Copyright © 2018年 natai. All rights reserved.
//

import UIKit

class FrameBoundsController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let subView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        subView.backgroundColor = UIColor.yellow
        containerView.addSubview(subView)
    }

    @IBAction func changeBounds(_ sender: UIButton) {
        containerView.bounds = CGRect(x: -20, y: -20, width: 100, height: 100)
    }
}
