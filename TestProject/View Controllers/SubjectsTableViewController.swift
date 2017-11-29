//
//  SubjectsTableViewController.swift
//  TestProject
//
//  Created by Voloshanov Sasha on 9/25/17.
//  Copyright © 2017 Sasha Voloshanov. All rights reserved.
//

import UIKit
public var section = 0

class SubjectsTableViewController: UITableViewController {
    
    let gradientLayer = CAGradientLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.view.contentMode = UIViewContentMode.scaleAspectFit
        self.navigationController?.navigationBar.backgroundColor = UIColor.clear
        let temp = UIImageView(image: UIImage())
        let TempImageView = UIImageView(image: UIImage(named: "background"))
        TempImageView.frame = self.tableView.frame
        self.tableView.backgroundView = TempImageView
        
//        if userName == nil {
//            let alert = UIAlertController(title: "title", message: "massages", preferredStyle: UIAlertControllerStyle.alert)
//            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
//            self.present(alert, animated: true, completion: nil)
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (subjects?.count)!
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        tableView.backgroundColor = .clear
        
        cell.textLabel?.text = subjects![indexPath.row]
        cell.textLabel?.textColor = UIColor.white
        
        cell.backgroundColor = UIColor.clear

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        section = indexPath.row
            performSegue(withIdentifier: "show", sender: self)
        
    }
}
