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

    // MARK: - Property
    var timer: Timer?       // タイマー開始時に生成するので、Optional型で定義
    var currentSeconds = 0

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
        start(seconds: 10)
    }

    @IBAction func threeMinButtonTapped(_ sender: UIButton) {
        start(seconds: 180)
    }

    @IBAction func fiveMinButtonTapped(_ sender: UIButton) {
        start(seconds: 300)
    }

    // MARK: - Function
    /// タイマーを開始するメソッド
    func start(seconds: Int) {
        currentSeconds = seconds
        label.text = "残り \(currentSeconds) 秒"
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(ViewController.update),
                                     userInfo: nil,
                                     repeats: true)
    }
}

