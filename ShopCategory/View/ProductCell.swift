//
//  ProductCell.swift
//  ShopCategory
//
//  Created by suriya taothongkom on 26/1/2565 BE.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    
    
    func updateView(product: Product){
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
}


