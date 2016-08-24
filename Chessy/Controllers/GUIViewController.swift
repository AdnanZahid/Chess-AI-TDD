//
//  GUIViewController.swift
//  Chessy
//
//  Created by Adnan Zahid on 8/24/16.
//  Copyright (c) 2016 Chess. All rights reserved.
//

import UIKit

class GUIViewController: UIViewController {

    var controller: Controller?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        controller = Controller(view: view as! GUIView)
    }
}