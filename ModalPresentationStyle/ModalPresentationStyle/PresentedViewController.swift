//
//  PresentedViewController.swift
//  ModalPresentationStyle
//
//  Created by natai on 2018/2/27.
//  Copyright © 2018年 natai. All rights reserved.
//

import UIKit

class PresentedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let closeButton = UIButton(frame: CGRect(x: 0, y: 30, width: 100, height: 40))
        closeButton.setTitle("返回", for: [])
        closeButton.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        view.addSubview(closeButton)
        view.backgroundColor = UIColor(red: 60 / 255, green: 152 / 255, blue: 208 / 255, alpha: 1)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(view.frame)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @objc private func closeButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
}

