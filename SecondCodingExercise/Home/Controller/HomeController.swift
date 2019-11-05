//
//  HomeController.swift
//  SecondCodingExercise
//
//  Created by Nikolas on 28/10/19.
//  Copyright © 2019 Nikolas Aggelidis. All rights reserved.
//


import UIKit


class HomeController: UIViewController {

    //@IBOutlet weak var segmentedControl: UISegmentedControl!
    //@IBOutlet weak var tableView: UITableView!
    //@IBOutlet weak var textView: UITextView!
    
    let cellIdentifier = "cell"
    
    lazy var scrollView: UIScrollView = {
        
        let sv = UIScrollView()
        sv.contentSize.height = 2000
        sv.contentSize.width = view.bounds.width
        sv.contentMode = .scaleAspectFit
        sv.translatesAutoresizingMaskIntoConstraints = false
        
        return sv
    }()
    
    lazy var imageView: UIImageView = {
       
        let iv = UIImageView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 338))
        iv.layer.masksToBounds = true
        iv.clipsToBounds = true
        iv.contentMode = .scaleToFill
        iv.image = #imageLiteral(resourceName: "ac_fig9")
        let imageSize = iv.image?.size
        iv.sizeThatFits(imageSize!)
        iv.translatesAutoresizingMaskIntoConstraints = false
        
        return iv
    }()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setupViews()
        //hideAndShowViews()
       // setupTableView()
    }
    
    
    func setupViews() {
        
        view.addSubview(scrollView)
        scrollView.addSubview(imageView)
        
        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        imageView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: scrollView.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: scrollView.rightAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 338).isActive = true
    }
    
    
//    func hideAndShowViews() {
//
//        if segmentedControl.selectedSegmentIndex == 0  {
//
//            tableView.isHidden = false
//            textView.isHidden = true
//        } else {
//
//            tableView.isHidden = true
//            textView.isHidden = false
//        }
//    }
    
//
//    func setupTableView() {
//
//        tableView.dataSource = self
//        tableView.delegate = self
//    }
//
//
//    @IBAction func valueChanged(_ sender: Any) {
//
//        hideAndShowViews()
//    }
}
