//
//  TableViewController.swift
//  CircleCell
//
//  Created by @gregbarbosa on 9/22/14.
//  Copyright (c) 2014 @gregbarbosa. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let cellRowHeight: CGFloat = 100.0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        return 10
    }


    override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell {
        let cell = tableView!.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath!) as UITableViewCell

        cell.textLabel?.text = "Cell Row height: \(cellRowHeight)"
        cell.imageView?.image = UIImage(named: "avatar")
        return cell
    }

    // 1) Sets the cell height to the previously created constant
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return cellRowHeight
    }

}
