//
//  AppDelegate.swift
//  WasonTest
//
//  Created by 吴琦 on 2020/12/1.
//

import UIKit
import Flutter


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var flutterEngine: FlutterEngine?
    lazy var lifeCycleDelegate:FlutterPluginAppLifeCycleDelegate = FlutterPluginAppLifeCycleDelegate();

    
    let coordinator = Coordinator()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
       
       
        coordinator.start()
        
        self.flutterEngine = FlutterEngine(name: "io.flutter", project: nil);
        self.flutterEngine?.run(withEntrypoint: nil);
//        GeneratedPluginRegistrant.register(with: self.flutterEngine!);
        lifeCycleDelegate.application(application, didFinishLaunchingWithOptions: launchOptions ?? [UIApplication.LaunchOptionsKey: Any]())
        
        
        
        
        return true
    }

  

}

