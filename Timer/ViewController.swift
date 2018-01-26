//
//  ViewController.swift
//  Timer
//
//  Created by 水垣岳志 on 2018/01/26.
//  Copyright © 2018年 mzgkworks.com. All rights reserved.
//

import UIKit
import AudioToolbox

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
    @IBAction func timerButtonTapped(_ sender: UIButton) {
        // 各ボタンのtagに秒数を格納しておく
        start(seconds: sender.tag)
    }

    // MARK: - Function
    /// タイマーを開始するメソッド
    func start(seconds: Int) {
        // 前のタイマーが起動している場合は、停止する
        if let timer = timer {
            timer.invalidate()
        }

        currentSeconds = seconds
        label.text = "残り \(currentSeconds) 秒"
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(ViewController.update),
                                     userInfo: nil,
                                     repeats: true)
    }

    /// 更新メソッド
    @objc func update() {
        currentSeconds -= 1
        label.text = "残り \(currentSeconds) 秒"

        if (currentSeconds == 0) {
            timer?.invalidate()
            let soundId: SystemSoundID = 1005
            AudioServicesPlayAlertSound(soundId)
        }
    }
}

