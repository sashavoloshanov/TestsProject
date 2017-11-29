//
//  HomeViewController.swift
//  TestProject
//
//  Created by Voloshanov Sasha on 11/29/17.
//  Copyright © 2017 Sasha Voloshanov. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

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
    
    @IBAction func infoAboutZNO(_ sender: Any) {
        let link = "http://testportal.gov.ua"
        openURL(link)
    }
    
    @IBAction func openOurSite(_ sender: Any) {
        let url = ""
//        openURL(url)
    }
    
    func openURL(_ link: String) {
        let URL = Foundation.URL(string: link)!
        if UIApplication.shared.canOpenURL(URL) {
            UIApplication.shared.openURL(URL)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
