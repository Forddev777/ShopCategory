//
//  CategoryCell.swift
//  ShopCategory
//
//  Created by suriya taothongkom on 25/1/2565 BE.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    

    func updateViews(category: Category){
        categoryTitle.text = category.title
        categoryImage.image = UIImage(named: category.imageName)
    }

}
