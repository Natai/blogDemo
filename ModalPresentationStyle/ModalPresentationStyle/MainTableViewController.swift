//
//  MainTableViewController.swift
//  ModalPresentationStyle
//
//  Created by natai on 2018/2/28.
//  Copyright © 2018年 natai. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        presentedViewController?.dismiss(animated: false, completion: nil)
        
        if segue.identifier == "formSheet" {
            segue.destination.preferredContentSize = CGSize(width: 200, height: 200)
        } else if segue.identifier == "popover" {
            segue.destination.popoverPresentationController?.passthroughViews = [tableView]
            segue.destination.popoverPresentationController?.sourceView = sender as? UIView
            segue.destination.popoverPresentationController?.sourceRect = (sender as! UIView).bounds
        } else if segue.identifier == "none" {
            segue.destination.popoverPresentationController?.delegate = self
            segue.destination.popoverPresentationController?.sourceView = sender as? UIView
            segue.destination.popoverPresentationController?.sourceRect = (sender as! UIView).bounds
        }
    }

    @IBAction func unwindToMainTableViewController(segue:UIStoryboardSegue) { }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
}
