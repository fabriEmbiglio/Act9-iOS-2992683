//
//  ViewController.swift
//  Act9-P2
//
//  Created by Alumno on 24/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunching: UILabel!
    @IBOutlet weak var configuringForConnection: UILabel!
    @IBOutlet weak var scene: UILabel!
    @IBOutlet weak var didBecomeActive: UILabel!
    @IBOutlet weak var willResignActive: UILabel!
    @IBOutlet weak var willEnterForeground: UILabel!
    @IBOutlet weak var didEnterBackground: UILabel!
    
   
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateView(){
        didFinishLaunching.text = "The app has launched \(appDelegate.launchCount) times"
        configuringForConnection.text = "The app has configured for connecting \(appDelegate.configurationForConnectingCount) times"
        scene.text = "The scene has loaded \(appDelegate.sceneCount) times"
        didBecomeActive.text = "The scene has become active \(appDelegate.didBecomeActiveCount) times"
        willResignActive.text = "The scene has resign active \(appDelegate.willResignActiveCount) times"
        willEnterForeground.text = "The scene has entered foreground \(appDelegate.willEnterForegroundCount) times"
        didEnterBackground.text = "The scene has entered background \(appDelegate.didEnterBackgroundCount) times"
        
    
    }


}

