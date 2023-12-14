//
//  DetailPersonViewController.swift
//  persons_app
//
//  Created by Cuneyt on 26.11.2023.
//

import UIKit

class DetailPersonViewController: UIViewController {
    
    
    @IBOutlet weak var tfUserName: UITextField!
    @IBOutlet weak var tfUserPhoneNumber: UITextField!
    var person:Person?
    
    var userDetailPresenter :ViewToPresenterDetailPersonProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserDetailRouter.createModule(ref: self)
        
        if let user = person{
            tfUserName.text = user.name
            tfUserPhoneNumber.text = user.phoneNumber
            
        }
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func updateButton(_ sender: Any) {
        if let ka = tfUserName.text ,let kn = tfUserPhoneNumber.text , let user = person{
            userDetailPresenter?.updatePerson(user_id: user.id ?? 0, user_name: ka, number: kn)
        }
        
     
        
        
    }
}
