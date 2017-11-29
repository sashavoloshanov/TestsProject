//
//  AboutUsViewController.swift
//  TestProject
//
//  Created by Voloshanov Sasha on 11/29/17.
//  Copyright © 2017 Sasha Voloshanov. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.view.contentMode = UIViewContentMode.scaleAspectFit
        self.navigationController?.navigationBar.backgroundColor = UIColor.clear
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Sasha(_ sender: Any) {
        let url = "https://www.facebook.com/sasha.voloshanov"
                openURL(url)
    }
    
    @IBAction func Koff(_ sender: Any) {
        let url = "https://www.facebook.com/nico.kjaerbye"
                openURL(url)
    }

    func openURL(_ link: String) {
        let URL = Foundation.URL(string: link)!
        if UIApplication.shared.canOpenURL(URL) {
            UIApplication.shared.openURL(URL)
        }
    }
    
}
