//
//  ViewController.swift
//  CollegeProfileBuilderA
//
//  Created by Saurav Desai on 7/25/16.
//  Copyright © 2016 Saurav Desai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var colleges : [College] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colleges.append(College(name: "UW Madison", location: "Madison, WI", enrollment: 43193, image: UIImage(named: "madisonCollege")!))
        colleges.append(College(name: "Northwestern", location: "Evanston, IL", enrollment: 20336, image: UIImage(named: "northwesternCollege")!))
        colleges.append(College(name: "Case Western Reserve", location: "Cleveland, OH", enrollment: 11771, image: UIImage(named: "caseCollege")!))
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colleges.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
        cell.textLabel?.text = colleges[indexPath.row].name
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete{
            colleges.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
}

