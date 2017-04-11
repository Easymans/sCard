//
//  AddSubject.swift
//  sCard
//
//  Created by Paschal Ihenacho on 12/25/16.
//  Copyright © 2016 Paschal Ihenacho. All rights reserved.
//

import UIKit

class AddSubject: UIViewController {
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func done(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items:NSMutableArray
        
        if let tempItems = itemsObject as? NSMutableArray {
            
            items = tempItems
            
            items.addObjects(from: [itemTextField.text!])
            
        } else {
            
            items = [itemTextField.text!]
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        
        itemTextField.text = ""
        
        self.dismiss(animated: true, completion: {})

    }
    
    @IBAction func cancel(_ sender: Any) {
        
         self.dismiss(animated: true, completion: {})
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
