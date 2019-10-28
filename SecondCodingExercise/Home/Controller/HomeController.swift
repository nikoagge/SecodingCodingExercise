//
//  HomeController.swift
//  SecondCodingExercise
//
//  Created by Nikolas on 28/10/19.
//  Copyright © 2019 Nikolas Aggelidis. All rights reserved.
//


import UIKit


class HomeController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textView: UITextView!
    
    let cellIdentifier = "cell"
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //
        hideAndShowViews()
        setupTableView()
    }
    
    
    func hideAndShowViews() {
        
        if segmentedControl.selectedSegmentIndex == 0  {
            
            tableView.isHidden = false
            textView.isHidden = true
        } else {
            
            tableView.isHidden = true
            textView.isHidden = false
        }
    }
    
    
    func setupTableView() {
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    @IBAction func valueChanged(_ sender: Any) {
        
        hideAndShowViews()
    }
}
