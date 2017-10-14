//
//  SalesViewController.swift
//  Nike+Research
//
//  Created by Isis Naomi Ramirez on 10/7/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class SalesViewController: UIViewController {


    
    @IBAction func nyxPromo(_ sender: Any) {
        if let url = URL(string: "https://www.vorana.mx/collections/nyx"){
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    @IBAction func sephoraPromo(_ sender: Any) {
        if let url = URL(string: "https://www.sephora.com.mx/pages/beauty-fair"){
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    @IBAction func retoPromo(_ sender: Any) {
        if let url = URL(string: "https://www.vorana.mx/collections/la-belleza-de-ayudar"){
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
