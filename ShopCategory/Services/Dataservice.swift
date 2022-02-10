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
    
    
    
    private let hats = [
        
        Product(imageName: "hat01.png" , title: "Devslopers Logo Graphic Beanie" , price: "$29" ),
        Product(imageName: "hat02.png" , title: "Devslopers Logo Hat Black" , price: "$22" ),
        Product(imageName: "hat03.png" , title: "Devslopers Logo Hat White" , price: "$45" ),
        Product(imageName: "hat04.png" , title: "Devslopers Logo Snapblack" , price: "$33" )
            
    ]
    private let hoodies = [
        
        Product(imageName: "hoodie01.png", title:  "Devslopers Logo Hoodie Grey",  price: "$29"),
        Product(imageName: "hoodie02.png" , title: "Devslopers Logo Hoodie Red", price: "$22"),
        Product(imageName: "hoodie03.png" , title: "Devslopers Hoodie Grey", price: "$45"),
        Product(imageName: "hoodie04.png" , title: "Devslopers Hoodie Black" , price: "$33")
        
    ]
    private let shirts = [
        Product(imageName: "shirt01.png" , title: "Devslopers Logo Shirt Black" , price: "$29" ),
        Product(imageName: "shirt02.png", title: "Devslopers Logo Badge Shirt", price: "$22"),
        Product(imageName: "shirt03.png", title: "Devslopers Shirt Grey" , price: "$45"),
        Product(imageName: "shirt04.png", title:  "Devslopers Shirt Black" , price: "$56")
        
    ]
    
   
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category]{
        
        return categories
    }

    func getProducts(forCategoryTitle title:String ) -> [Product] {
        
        switch title {
        case "SHIRIS" :
           return  getShirts()
        case "HOODIES" :
            return getHoodies()
        case "HATS" :
            return getHats()
        case "DIGITAL" :
            return   getDigitalGoods()
        default:
            return getShirts()
        }
        
    }
        
    func getHats() -> [Product]{
        return hats
    }
    func getHoodies() -> [Product]{
        return hoodies
    }
    func getShirts() -> [Product]{
        return shirts
    }
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
}
