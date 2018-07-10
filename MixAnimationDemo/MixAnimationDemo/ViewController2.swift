//
//  ViewController.swift
//  MixAnimationDemo
//
//  Created by natai on 2018/7/9.
//  Copyright © 2018年 natai. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    let animateDuration: TimeInterval = 2
    let mixView = MixVIew()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mixView.frame = view.bounds
        view.addSubview(mixView)
        mixView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

    @IBAction func animateButtonTapped(_ sender: UIBarButtonItem) {
        startAnimate()
    } 
}

// MARK: - Animate
extension ViewController2 {
    func startAnimate() {
        animateMixView() 
    }
    
    private func animateMixView() {
        let tmpCenter = view.center
        UIView.animate(withDuration: animateDuration, delay: 0, options: .layoutSubviews, animations: {
            self.mixView.frame.size = CGSize(width: self.mixView.frame.width / 2, height: self.mixView.frame.height / 2)
            self.mixView.center = tmpCenter
        }, completion: nil)
        mixView.animateCycanLayer(inDuration: animateDuration)
    }
}
