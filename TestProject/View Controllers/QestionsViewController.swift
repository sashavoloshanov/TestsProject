//
//  QestionsViewController.swift
//  TestProject
//
//  Created by Voloshanov Sasha on 11/27/17.
//  Copyright © 2017 Sasha Voloshanov. All rights reserved.
//

import UIKit

class QestionsViewController: UIViewController {

    @IBOutlet weak var var4: UIButton!
    @IBOutlet weak var var3: UIButton!
    @IBOutlet weak var var2: UIButton!
    @IBOutlet weak var Var1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Var1.layer.cornerRadius = 9
        Var1.clipsToBounds = true
        
        var2.layer.cornerRadius = 9
        var2.clipsToBounds = true
        
        var3.layer.cornerRadius = 9
        var3.clipsToBounds = true
        
        var4.layer.cornerRadius = 9
        var4.clipsToBounds = true

        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.view.contentMode = UIViewContentMode.scaleAspectFit
        self.navigationController?.navigationBar.backgroundColor = UIColor.clear
        
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
