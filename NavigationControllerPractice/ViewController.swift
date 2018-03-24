//
//  ViewController.swift
//  NavigationControllerPractice
//
//  Created by 成田篤基 on 2018/03/23.
//  Copyright © 2018年 Atsuki Narita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func tapTransitionBtn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "NextSegue", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        
        let deepGreen = UIColor(red: 72.0/255, green: 140.0/255, blue: 141.0/255, alpha: 1.0)
        self.navigationController!.navigationBar.barTintColor = deepGreen
        self.title = "Main View Controller"
        self.navigationController!.navigationBar.titleTextAttributes =
            [NSForegroundColorAttributeName: UIColor.white,
             NSFontAttributeName: UIFont(name: "Helvetica-Bold", size: 20)!]
        
        self.navigationController!.navigationBar.tintColor = UIColor.white
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: UIBarButtonItemStyle.plain, target: self, action: #selector(ViewController.toNextViewController(sender:)))
    }
    
    @objc func toNextViewController(sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "NextSegue", sender: nil)
    }
}

