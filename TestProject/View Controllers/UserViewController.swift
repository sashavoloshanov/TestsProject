//
//  UserViewController.swift
//  TestProject
//
//  Created by Voloshanov Sasha on 9/25/17.
//  Copyright © 2017 Sasha Voloshanov. All rights reserved.
//

import UIKit
public var correctAnswer = UserDefaults.standard.integer(forKey: Server.StandartKeys.correctAns)
public var userName = UserDefaults.standard.string(forKey: Server.StandartKeys.name)
public var reiting = UserDefaults.standard.array(forKey: Server.StandartKeys.reiting)

class UserViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var userNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if reiting == nil {
            reiting = [""]
            UserDefaults.standard.set(reiting, forKey: Server.StandartKeys.reiting)
        }
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.view.contentMode = UIViewContentMode.scaleAspectFit
        self.navigationController?.navigationBar.backgroundColor = UIColor.clear
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func setInfo() {
        //TODO:- Set your info
        userNameLabel.text = userName
    }
    
    func setUsersInfo() {
        //TODO:- Set info about all users
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (reiting?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        tableView.backgroundColor = .clear
        
        cell.textLabel?.textColor = UIColor.white
        
        cell.backgroundColor = UIColor.clear
        
        return cell
    }

}

