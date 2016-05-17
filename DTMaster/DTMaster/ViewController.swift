//
//  ViewController.swift
//  DTMaster
//
//  Created by yellow on 16/5/9.
//  Copyright © 2016年 yellow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        #if BETA
            print("BETA")
        #endif
        #if STAGING
            print("STAGING")
        #endif
        #if PRODUCT
            print("PRODUCT")
        #endif
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
