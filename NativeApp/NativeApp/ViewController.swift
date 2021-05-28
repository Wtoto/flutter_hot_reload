//
//  ViewController.swift
//  NativeApp
//
//  Created by 吴琦 on 2021/5/20.
//

import UIKit
import Flutter
class ViewController: UIViewController {

    let textLabel = UILabel(frame: CGRect(x: 0,y: 100, width: 100, height: 100))
    
    let button = UIButton(frame: CGRect(x:100, y: 200, width:50, height:50))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        // Do any additional setup after loading the view.
        textLabel.text = "main"
        button.backgroundColor = .yellow
        button.addTarget(self,action:#selector(ViewController.buttonClick), for:UIControl.Event.touchUpInside)
        self.view.addSubview(textLabel)
        self.view.addSubview(button)
    }
    //事件的响应实现方法

    @objc func buttonClick(){

        openFlutterView()
    }



    func openFlutterView(){
        let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine;
        let flutterViewController = FlutterViewController(engine: flutterEngine!, nibName: nil, bundle: nil);
        self.present(flutterViewController, animated: true, completion: nil)
    }

}

