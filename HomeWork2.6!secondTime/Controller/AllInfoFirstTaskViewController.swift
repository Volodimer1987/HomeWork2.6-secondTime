//
//  AllInfoFirstTaskViewController.swift
//  HomeWork2.6!secondTime
//
//  Created by vladimir gennadievich on 12.09.2020.
//  Copyright © 2020 Vladimir Gennadievich. All rights reserved.
//

import UIKit

class AllInfoFirstTaskViewController: UIViewController {
    @IBOutlet var bigNameSernameLabel: UILabel!
    
    var person:Person!

    @IBOutlet var PhoneLabel: UILabel!
    @IBOutlet var EmailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PhoneLabel.text = person.phoneNumber
        EmailLabel.text = person.imail
        
        bigNameSernameLabel.text = "\(person.name) \(person.sername)"

    }

}
