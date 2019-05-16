//
//  ViewController.swift
//  testUIAlertController
//
//  Created by Ardi Muhammad Husen on 16/05/19.
//  Copyright © 2019 Ardi Muhammad Husen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alertBtn: UIButton!
    @IBOutlet weak var actionSheetBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let alert = UIAlertController(title: "Hello Dude!", message: "NC1 - Group 7 Morning Session", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    // GRUP 7 NC - 1
    // UIAlertController
    
    
    // deklarasi di global,
    var alertTwo: UIAlertController!
    var alertThree: UIAlertController!
    
    override func viewDidAppear(_ animated: Bool) {
//        let alert = UIAlertController(title: "Hello Dude!", message: "NC1 - Group 7 Morning Session", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
//            NSLog("The \"OK\" alert occured.")
//        }))
//        self.present(alert, animated: true, completion: nil)
        
        
        // inisialisasi di lokal
        alertTwo = UIAlertController(title: "testAnotherAlert", message: "Tipe alert .alert", preferredStyle: .alert)
        alertTwo.addAction(UIAlertAction(title: NSLocalizedString("Oke", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"Oke\" alert occured.")
        }))
        
        
        alertThree = UIAlertController(title: "testAnotherAlert", message: "Tipe alert .alert", preferredStyle: .actionSheet)
        alertThree.addAction(UIAlertAction(title: NSLocalizedString("Oke", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"Oke\" alert occured.")
        }))
        
    }

    
    
    

    @IBAction func alertBtnAction(_ sender: Any) {
        self.present(alertTwo, animated: true, completion: nil)
    }
    
    
    @IBAction func actionSheetBtnAction(_ sender: Any) {
        self.present(alertThree, animated: true, completion: nil)
    }
    
}

