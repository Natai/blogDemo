//
//  UIViewController+Swizzling.swift
//  MethodSwizzling
//
//  Created by natai on 2018/6/13.
//  Copyright © 2018年 natai. All rights reserved.
//

import UIKit

extension UIViewController {
    static func swizzleViewDidLoad() {
        _ = self.swizzleMethod
    }
    
    @objc func swizzled_viewDidLoad() {
        swizzled_viewDidLoad()
        print("嘻嘻")
    }
    
    private static let swizzleMethod: Void = {
        let originalSelector = #selector(viewDidLoad)
        let swizzledSelector = #selector(swizzled_viewDidLoad)
        swizzlingForClass(UIViewController.self, originalSelector: originalSelector, swizzledSelector: swizzledSelector)
    }()
}
