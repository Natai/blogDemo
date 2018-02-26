//
//  LayerPositionController.swift
//  Layer
//
//  Created by natai on 2018/2/25.
//  Copyright © 2018年 natai. All rights reserved.
//

import UIKit

class LayerPositionController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    let subView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        subView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        subView.backgroundColor = UIColor.yellow
        containerView.addSubview(subView)
        
        // 输出默认情况下的各属性
        print("修改锚点前")
        print("anchorPoint:" + subView.layer.anchorPoint.debugDescription)
        print("position:" + subView.layer.position.debugDescription)
        print("center:" + subView.center.debugDescription)
        print("frame:" + subView.frame.debugDescription)
        subView.layer.anchorPoint = CGPoint(x: 0, y: 0)
        // 输出修改锚点后的各属性
        print("修改锚点后")
        print("anchorPoint:" + subView.layer.anchorPoint.debugDescription)
        print("position:" + subView.layer.position.debugDescription)
        print("center:" + subView.center.debugDescription)
        print("frame:" + subView.frame.debugDescription)
    }

    
    @IBAction func resetFrame(_ sender: UIButton) {
        subView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        print("anchorPoint:" + subView.layer.anchorPoint.debugDescription)
        print("position:" + subView.layer.position.debugDescription)
        // 这里需要注意 center 会变为 (0, 0) 点，而不是 (50, 50)，因为它只是返回 position 的值
        print("center:" + subView.center.debugDescription)
        print("frame:" + subView.frame.debugDescription)
    }
    
    @IBAction func resetPosition(_ sender: UIButton) {
        subView.layer.position = CGPoint(x: 0, y: 0)
        print("anchorPoint:" + subView.layer.anchorPoint.debugDescription)
        print("position:" + subView.layer.position.debugDescription)
        print("center:" + subView.center.debugDescription)
        print("frame:" + subView.frame.debugDescription)
    }
}

