//
//  ImplictAnimationController.swift
//  Layer
//
//  Created by natai on 2018/2/26.
//  Copyright © 2018年 natai. All rights reserved.
//

import UIKit

class ImplictAnimationController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    let subLayer = CALayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 修改非 rootLayer 的 layer 可动画属性，该 layer 会为该更改添加一个隐式动画
        subLayer.frame = CGRect(x: 25, y: 25, width: 50, height: 50)
        subLayer.backgroundColor = UIColor.yellow.cgColor
        containerView.layer.addSublayer(subLayer)
    }

    @IBAction func changeFrame(_ sender: UIButton) {
        subLayer.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        subLayer.backgroundColor = UIColor.red.cgColor
    }
}
