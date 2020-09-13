//
//  FirstTaskViewController.swift
//  HomeWork2.6!secondTime
//
//  Created by vladimir gennadievich on 12.09.2020.
//  Copyright © 2020 Vladimir Gennadievich. All rights reserved.
//

import UIKit

class FirstTaskViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let persons = Person.personsArrayGive()
    @IBOutlet var tableVIew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstTaskCell", for: indexPath)
        
        cell.textLabel?.text = "\(persons[indexPath.row].name)" + " " +  "\(persons[indexPath.row].sername)"
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "FirstTaskAllInfo" else {return}
        
        if let indexPath = tableVIew.indexPathForSelectedRow  {
        let destination = segue.destination as!  AllInfoFirstTaskViewController
            
            destination.phone = persons[indexPath.row].phoneNumber
            destination.mail = persons[indexPath.row].imail
            destination.name = persons[indexPath.row].name
            destination.sername = persons[indexPath.row].sername
    
    }
    

}
}
