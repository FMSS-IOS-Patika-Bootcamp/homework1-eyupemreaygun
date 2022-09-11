//
//  SecondViewController.swift
//  PatikaOdev1
//
//  Created by Eyüp Emre Aygün on 11.09.2022.
//

import UIKit

protocol DetayVCToViewControllerDelegate: AnyObject {
    func veriGonder(mesaj:String)
    
}

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var tf: UITextField!
    weak var delegate: DetayVCToViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func saveBtn(_ sender: Any) {
        
        let alert = UIAlertController(title: "Register", message: "Register is successful.", preferredStyle: .alert)
        
        let okayAction = UIAlertAction(title: "Okay", style: .default)
        {
            action in
            if let mesaj = self.tf.text {
                self.delegate?.veriGonder(mesaj: mesaj)
                
                let viewController = self.storyboard?.instantiateViewController(withIdentifier: "toViewController") as! ViewController
                viewController.modalPresentationStyle = .fullScreen
                self.navigationController?.popViewController(animated: true)
                
            }
            
            
        }
        
        alert.addAction(okayAction)
        self.present(alert, animated: true)
        
        
        
        
        
        
        
        
        
    }
    
    
    
}
