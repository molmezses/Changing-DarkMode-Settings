//
//  ViewController.swift
//  DarkModeApp
//
//  Created by mustafa ölmezses on 11.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .dark // kullanıcının isteğine bakılmaksızın uygulama sadece dark mode olarak görünür
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let mode = traitCollection.userInterfaceStyle
        if mode == .dark{
            changeButton.tintColor = UIColor.white
        }else{
            changeButton.tintColor = UIColor.red
        }
        
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
        let mode = traitCollection.userInterfaceStyle
        if mode == .dark{
            changeButton.tintColor = UIColor.white
        }else{
            changeButton.tintColor = UIColor.red
        }
        
    }

}

