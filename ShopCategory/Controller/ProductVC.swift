//
//  ProductVC.swift
//  ShopCategory
//
//  Created by suriya taothongkom on 26/1/2565 BE.
//

import UIKit

class ProductVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource {
   
    
    @IBOutlet weak var productsCollection: UICollectionView!
    private(set) public var product = [Product]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    func initProduct(category: Category ){
        
        product = DataService.instance.getProducts(forCategoryTitle: category.title)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        return product.count
        
            
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            
            let product = product[indexPath.row]
            
            cell.updateView(product: product)
            return cell
            
        }
            
        return ProductCell()
    }
    
    
}
