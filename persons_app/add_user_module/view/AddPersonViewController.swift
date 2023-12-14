//
//  AddPersonViewController.swift
//  persons_app
//
//  Created by Cuneyt on 26.11.2023.
//

import UIKit

class AddPersonViewController: UIViewController {

    @IBOutlet weak var tfPersonName: UITextField!
    @IBOutlet weak var tfPersonMobilePhone: UITextField!
    //Mark: presenter katmanına veri aktarmak için bir nesne olusturduk
    var addPersonPresenter: ViewToPresenterAddPersonProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AddPersonRouter.createModule(ref: self)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButton(_ sender: Any) {
        if let ka = tfPersonName.text ,let kn = tfPersonMobilePhone.text {
            addPersonPresenter?.addPerson(user_name: ka, number: kn)
        }
    }
    
  
    
   

}
