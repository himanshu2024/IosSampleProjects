//
//  ViewController.swift
//  MyUISamples
//
//  Created by Himanshu Chaurasiya on 10/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //MARK: - Init variable
    let sampleArray = ["Simple Collection View", "Different Cell size Collection"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Table datasource methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sampleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeTableCell", for: indexPath)
        cell.textLabel?.text = sampleArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "sampleOne", sender: self)
        case 1:
            print("At index \(indexPath.row)")
        default:
            performSegue(withIdentifier: "sampleOne", sender: self)
        }
        
    }
    
    
    
    
    
}

