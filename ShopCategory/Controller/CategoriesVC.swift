//
//  ViewController.swift
//  ShopCategory
//
//  Created by suriya taothongkom on 25/1/2565 BE.
//

import UIKit

class CategoriesVC: UIViewController , UITableViewDataSource , UITableViewDelegate {
 
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.delegate = self
        categoryTable.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoraCell") as? CategoryCell {
            let categories = DataService.instance.getCategories()
               _ = categories[indexPath.row]

            return cell
        }else{
             return CategoryCell()
        }
    }
    


}

