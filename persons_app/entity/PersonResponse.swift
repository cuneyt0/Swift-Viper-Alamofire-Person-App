//
//  PersonResponse.swift
//  persons_app
//
//  Created by Cuneyt on 14.12.2023.
//

import Foundation

class PersonResponse :Codable{
    var kisiler:[Person]?
    var success:Int?
    
    init(kisiler: [Person]? = nil, success: Int? = nil) {
        self.kisiler = kisiler
        self.success = success
    }
}
