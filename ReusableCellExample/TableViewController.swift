//
//  TableViewController.swift
//  ReusableCellExample
//
//  Created by Eric Caminiti on 10/29/15.
//  Copyright © 2015 Eric Caminiti. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerNib(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "reusableCell")
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.row == 1{
            let cell = tableView.dequeueReusableCellWithIdentifier("reusableCell", forIndexPath: indexPath)
            // Configure the cell...
            
            return cell
        }
        return super.tableView(tableView, cellForRowAtIndexPath: indexPath)

    }

}
