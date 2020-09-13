//
//  PersonsModel.swift
//  HomeWork2.6!secondTime
//
//  Created by vladimir gennadievich on 12.09.2020.
//  Copyright © 2020 Vladimir Gennadievich. All rights reserved.
//

import Foundation

struct Person {
    let name:String
    let sername:String
    let phoneNumber:String
    let imail:String
 
   static  func personsArrayGive () -> [Person] {
        
        var returnPersonsArray:[Person] = []
        
        let names = DataManager.shared.nameArray.shuffled()
        let sernames = DataManager.shared.sernameArray.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbersArray.shuffled()
        let imails = DataManager.shared.emailsArray.shuffled()
        
        for i in 0..<names.count {
            let person = Person(name: names[i],
                                sername: sernames[i],
                                phoneNumber: phoneNumbers[i],
                                imail: imails[i])
            returnPersonsArray.append(person)
        }
        return returnPersonsArray
    }
}
