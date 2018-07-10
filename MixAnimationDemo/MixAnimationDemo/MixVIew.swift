//
//  MixVIew.swift
//  MixAnimationDemo
//
//  Created by natai on 2018/7/9.
//  Copyright © 2018年 natai. All rights reserved.
//

import UIKit

class MixVIew: UIView {
    let imageView = UIImageView(image: #imageLiteral(resourceName: "snow"))
    var cycanLayer: CALayer?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.yellow
        configureImageView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        // 第一次 layoutSubviews 时候确定 cycanLayer 的 frame
        if cycanLayer == nil {
            configureCycanLayer()
        }
    }
}

// MARK: - Configure
extension MixVIew {
    private func configureImageView() {
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
    
    private func configureCycanLayer() {
        cycanLayer = CALayer()
        cycanLayer?.frame = CGRect(x: bounds.width / 4, y: bounds.height / 4, width: bounds.width / 2, height: bounds.height / 2)
        cycanLayer?.backgroundColor = UIColor.cyan.cgColor
        layer.addSublayer(cycanLayer!)
    }
}

// MARK: - Animate
extension MixVIew {
    func animateCycanLayer(inDuration duration: TimeInterval) {
        guard let cycanLayer = cycanLayer else { return }
        CATransaction.begin()
        CATransaction.setAnimationDuration(duration)
        // UIView 动画默认是 easeInOut， 必须保持一致，否则动画效果不一致
        CATransaction.setAnimationTimingFunction(CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut))
        let tmpFrame = cycanLayer.frame
        self.cycanLayer?.frame = CGRect(x: tmpFrame.width / 4, y: tmpFrame.height / 4, width: tmpFrame.width / 2, height: tmpFrame.height / 2)
        CATransaction.commit()
    }
}
