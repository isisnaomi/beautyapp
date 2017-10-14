//
//  CategoryViewController.swift
//  Nike+Research
//
//  Created by Isis Naomi Ramirez on 10/2/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let reuseIdentifier = "categoryCell" // also enter this string as the cell identifier in the storyboard
    var items = ["Labiales", "Rubores", "Bases", "Sombras", "Cejas", "Rimmel"]
    var icons = [#imageLiteral(resourceName: "icon-labiales"), #imageLiteral(resourceName: "icon-blush"), #imageLiteral(resourceName: "icon-bases"), #imageLiteral(resourceName: "icon-sombras"), #imageLiteral(resourceName: "icon-cejas"), #imageLiteral(resourceName: "icon-rimmel")]
    
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CategoryViewCell
    
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.myLabel.text = self.items[indexPath.item]
        cell.icon.image = self.icons[indexPath.item]
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "categoryProducts") as! CategoryProductViewController
        let selectedCategory = self.items[indexPath.item]
        
        newViewController.categoryName = selectedCategory
        self.navigationController?.pushViewController(newViewController, animated: true)
        
    }
}
