//
//  Person.swift
//  persons_app
//
//  Created by Cuneyt on 26.11.2023.
//

import Foundation
class Person {
    var id:Int?
    var name:String?
    var phoneNumber:String?
    
    init(id: Int? = nil, name: String? = nil, phoneNumber: String? = nil) {
        self.id = id
        self.name = name
        self.phoneNumber = phoneNumber
    }
}
