//
//  main.swift
//  lab4
//
//  Created by Makcim Mikhailov on 10.12.18.
//  Copyright © 2018 Makcim Mikhailov. All rights reserved.
//

import Foundation


struct Employee: Codable {
    var name: String
    var id: Int
    var favoriteToy: Toy
}

struct Toy: Codable {
    var name: String
}

let toy1 = Toy(name: "Teddy Bear");
let employee1 = Employee(name: "John Appleseed", id: 7, favoriteToy: toy1)
let jsonEncoder = JSONEncoder()

let jsonData = try jsonEncoder.encode(employee1)
let jsonString = String(data: jsonData, encoding: .utf8)
print(jsonString)
let jsonDecoder = JSONDecoder()
let employee2 = try jsonDecoder.decode(Employee.self, from: jsonData)
print(employee2.name)



