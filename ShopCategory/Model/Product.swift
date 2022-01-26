//
//  Product.swift
//  ShopCategory
//
//  Created by suriya taothongkom on 26/1/2565 BE.
//

import Foundation

struct Product{
    
    private(set) public var imageName:String
    private(set) public var title:String
    private(set) public var price:String
    
    
    init(imageName: String , title: String, price: String ){
        
        self.imageName = imageName
        self.title = title
        self.price = price
    }
}
