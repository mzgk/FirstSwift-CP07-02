//
//  ViewController.swift
//  Timer
//
//  Created by 水垣岳志 on 2018/01/26.
//  Copyright © 2018年 mzgkworks.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlet
    @IBOutlet weak var label: UILabel!

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - User Action
    @IBAction func tenSecButtonTapped(_ sender: UIButton) {
    }

    @IBAction func threeMinButtonTapped(_ sender: UIButton) {
    }

    @IBAction func fiveMinButtonTapped(_ sender: UIButton) {
    }
}

