//
//  ViewController.swift
//  SelectionView
//
//  Created by praveen on 3/25/19.
//  Copyright © 2019 focussoftnet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let selectionView = CLSelectionView()
        selectionView.translatesAutoresizingMaskIntoConstraints = false
        selectionView.backgroundColor = .white
        view.addSubview(selectionView)
        
        selectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        selectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        selectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        selectionView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

