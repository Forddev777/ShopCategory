//
//  Category.swift
//  ShopCategory
//
//  Created by suriya taothongkom on 25/1/2565 BE.
//

import Foundation


struct Category {
    
   private(set)  public var title:String
   private(set)  public var imageName: String
    
    init(title: String  , imageName: String ){
        self.title = title
        self.imageName = imageName
        
    }
    
}
