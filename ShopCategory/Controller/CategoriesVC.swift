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
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell")
            as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
    
            
            
            return cell
        }else{
             return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductVC{
            let barBtn = UIBarButtonItem()
             barBtn.title = ""
             navigationItem.backBarButtonItem = barBtn
            assert(sender as? Category != nil)
            productVC.initProduct(category: sender as! Category)
            
        }
    }
}

