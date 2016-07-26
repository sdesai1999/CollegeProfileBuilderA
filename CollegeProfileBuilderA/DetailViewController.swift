//
//  DetailViewController.swift
//  CollegeProfileBuilderA
//
//  Created by Saurav Desai on 7/25/16.
//  Copyright © 2016 Saurav Desai. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var collegeTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var enrollmentTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var savedLabel: UILabel!
    var college : College!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collegeTextField.delegate = self
        locationTextField.delegate = self
        enrollmentTextField.delegate = self
        collegeTextField.text = college.name
        locationTextField.text = college.location
        enrollmentTextField.text = "\(college.enrollment)"
        imageView.image = college.image
        savedLabel.text = ""
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        savedLabel.text = ""
    }

    @IBAction func onTappedSaveButton(sender: AnyObject) {
        college.name = collegeTextField.text!
        college.location = locationTextField.text!
        college.enrollment = Int(enrollmentTextField.text!)!
        savedLabel.text = "Saved"
    }
}
