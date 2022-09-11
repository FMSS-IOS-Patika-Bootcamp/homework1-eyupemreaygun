//
//  ViewController.swift
//  PatikaOdev1
//
//  Created by Eyüp Emre Aygün on 11.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var lbl: UILabel!
    
    
    var delegate: DetayVCToViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func btnSecondView(_ sender: Any) {
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "toSecondViewController") as! SecondViewController
        secondViewController.delegate = self
        self.navigationController?.pushViewController(secondViewController, animated: true)
        }
    
}
extension ViewController:DetayVCToViewControllerDelegate {
    func veriGonder(mesaj: String) {
        
        lbl.text = mesaj
    }
    
}




