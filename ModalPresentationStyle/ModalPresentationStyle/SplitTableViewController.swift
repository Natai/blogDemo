//
//  SplitTableViewController.swift
//  ModalPresentationStyle
//
//  Created by natai on 2018/2/28.
//  Copyright © 2018年 natai. All rights reserved.
//

import UIKit

class SplitTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 竖屏时候，让左侧视图一直显示
        splitViewController?.preferredDisplayMode = .allVisible
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationController = segue.destination as? UINavigationController else {
            return
        }
        
        let controller = navigationController.topViewController
        if segue.identifier == "two" {
            controller?.view.backgroundColor = UIColor.orange
        } else if segue.identifier == "three" {
            controller?.view.backgroundColor = UIColor.yellow
        }
    }
    
    @IBAction func currentContextButtonTapped(_ sender: UIButton) {
        let controller = PresentedViewController()
        controller.view.alpha = 0.5
        controller.modalPresentationStyle = .currentContext
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func overCurrentContextButtonTapped(_ sender: UIButton) {
        let controller = PresentedViewController()
        controller.view.alpha = 0.5
        controller.modalPresentationStyle = .overCurrentContext
        present(controller, animated: true, completion: nil)
    }
}
