//
//  Dataservice.swift
//  ShopCategory
//
//  Created by suriya taothongkom on 25/1/2565 BE.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        
            Category(title: "SHIRIS", imageName: "shirts.png"),
            Category(title: "HOODIES", imageName: "hoodies.png"),
            Category(title: "HATS", imageName: "hats.png"),
            Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category]{
        
        return categories
    }
}
