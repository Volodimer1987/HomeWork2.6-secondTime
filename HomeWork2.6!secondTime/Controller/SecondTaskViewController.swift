//
//  ViewController.swift
//  HomeWork2.6!secondTime
//
//  Created by vladimir gennadievich on 12.09.2020.
//  Copyright © 2020 Vladimir Gennadievich. All rights reserved.
//

import UIKit

class SecondTaskViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet var task2Label: UITableView!
    
    var persons = Person.personsArrayGive()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.task2Label.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].name + " " + persons[section].sername
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTaskCell", for: indexPath)
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = persons[indexPath.section].imail
        case 1:
            cell.textLabel?.text = persons[indexPath.section].phoneNumber
        default:
            break
        }
        cell.selectionStyle = .none
        return cell
        
    }
    
    

}

