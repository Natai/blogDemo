//
//  TableViewBoundsController.swift
//  Layer
//
//  Created by natai on 2018/2/26.
//  Copyright © 2018年 natai. All rights reserved.
//

import UIKit

class TableViewBoundsController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

// MARK: - UITableViewDataSource
extension TableViewBoundsController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }
}

// MARK: -
extension TableViewBoundsController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("bounds:" + scrollView.bounds.origin.debugDescription)
        print("contentOffset:" + scrollView.contentOffset.debugDescription)
    }
}
