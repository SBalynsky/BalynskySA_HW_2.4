//
//  UserModel.swift
//  BalynskySA_HW_2.4
//
//  Created by Macbook on 30.05.2020.
//  Copyright © 2020 Balynsky. All rights reserved.
//






struct User {
    let login: String
    let password: String
}

extension User {
    static func getUser() -> [User] {
 
    return [User(login: "Alexey", password: "1234")]
        
    }
}
