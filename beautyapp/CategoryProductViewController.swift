//
//  CategoryProductViewController.swift
//  Nike+Research
//
//  Created by Isis Naomi Ramirez on 10/8/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class CategoryProductViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
        var shoes: [Shoe]?
        var categoryName: String = ""
        @IBOutlet weak var categoryNameLabel: UILabel?
        @IBOutlet weak var categoryBanner: UIImageView?
    
        let reuseIdentifier = "productCell" // also enter this string as the cell identifier in the storyboard
    
        var items = ["1", "2", "3"]
    
        override func viewDidLoad() {
            super.viewDidLoad()
            shoes = Shoe.fetchShoes(category: categoryName)
            self.categoryNameLabel?.text = categoryName
            self.categoryBanner?.image = UIImage(named: "categoria_\(categoryName)")!
        }
            


    
        
        // MARK: - UICollectionViewDataSource protocol
        
        // tell the collection view how many cells to make
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return (self.shoes?.count)!
        }
        
        // make a cell for each cell index path
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            // get a reference to our storyboard cell
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CategoryProductCollectionViewCell
            
            // Use the outlet in our custom class to get a reference to the UILabel in the cell
            cell.shoe = self.shoes?[indexPath.row]
            
            return cell
        }
        
        // MARK: - UICollectionViewDelegate protocol
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            // handle tap events
            print("You selected cell #\(indexPath.item)!")
            let myVC = storyboard?.instantiateViewController(withIdentifier: "showProductDetail") as! ShoeDetailTableViewController
            let selectedShoe = self.shoes?[(indexPath.item)]
            myVC.shoe = selectedShoe
            navigationController?.pushViewController(myVC, animated: true)
            
            
        }


}
