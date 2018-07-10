//
//  ViewController2.swift
//  MixAnimationDemo
//
//  Created by natai on 2018/7/10.
//  Copyright © 2018年 natai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
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
extension ViewController {
    func startAnimate() {
        animateMixView()
    }
    
    private func animateMixView() {
        let tmpCenter = view.center
        UIView.animate(withDuration: animateDuration) {
            self.mixView.frame.size = CGSize(width: self.mixView.frame.width / 2, height: self.mixView.frame.height / 2)
            self.mixView.center = tmpCenter
            
            let tmpFrame = self.mixView.cycanLayer!.frame
            self.mixView.cycanLayer?.frame = CGRect(x: tmpFrame.width / 4, y: tmpFrame.height / 4, width: tmpFrame.width / 2, height: tmpFrame.height / 2)
        }
    }
}
