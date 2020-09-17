//
//  ViewController.swift
//  HomeWork2.6!secondTime
//
//  Created by vladimir gennadievich on 12.09.2020.
//  Copyright © 2020 Vladimir Gennadievich. All rights reserved.
//

import UIKit

class SecondTaskViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    var persons = Person.personsArrayGive()
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return 2
    }
 
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return persons[section].name + " " + persons[section].sername
//    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let person = persons[section]
//
//        let viewLabel = UIView()
//        viewLabel.backgroundColor = .gray
//
//        let label = UILabel(frame: CGRect(x: 14, y: 3, width: 300, height: 20))
//        label.text = "\(person.name) \(person.sername)"
//        label.textColor = .white
//
//        viewLabel.addSubview(label)
//        return viewLabel
//    }
    
        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell") as! HeaderCellTableViewCell
            cell.backgroundColor = .gray
            
            
            let person = persons[section]
            
            cell.headerLabel.text = person.name + " " + person.sername
            
            return cell
        }
    
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTaskCell", for: indexPath)
        
        let person = persons[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? person.phoneNumber:person.imail
        
        cell.selectionStyle = .none
        
        
        return cell
        
    }
    
    

}

