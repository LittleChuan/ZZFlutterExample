//
//  ViewController.swift
//  ZZFlutterExample
//
//  Created by ZackXXC on 03/16/2020.
//  Copyright (c) 2020 ZackXXC. All rights reserved.
//

import UIKit
import Flutter

class ViewController: UIViewController {
    
    let engine = FlutterEngine.init(name: "new")

    override func viewDidLoad() {
        super.viewDidLoad()
        engine.run()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goFlutter(_ sender: Any) {
        let vc = FlutterViewController.init(engine: engine, nibName: nil, bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func destroy(_ sender: Any) {
        engine.destroyContext()
    }
}

