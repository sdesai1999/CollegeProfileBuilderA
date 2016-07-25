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
    }

}

