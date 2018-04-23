//
//  ViewController.swift
//  BackgroundExecution
//
//  Created by home on 2018/04/23.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testButton: UIButton!
    
    // backgroundTaskIDの初期値
    var backgroundTaskID: UIBackgroundTaskIdentifier = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // ボタンが押されたら時間のかかる処理を実行する
    @IBAction func onButtonTapped(_ sender: Any) {
        self.backgroundTaskID = UIApplication.shared.beginBackgroundTask(expirationHandler: nil)
        self.longTimeFunction()
    }
    
    func longTimeFunction() {
        // 長い時間がかかる処理
        // 処理終了時に書く
        UIApplication.shared.endBackgroundTask(self.backgroundTaskID)
    }
    
}

