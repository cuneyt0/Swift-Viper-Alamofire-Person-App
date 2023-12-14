//
//  AddPersonInteractor.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
import Alamofire
class AddPersonInteractor : PresenterToInteractorAddPersonProtocol{
    func addPerson(user_name: String, number: String) {
        print("UserName \(user_name ) tel \(number )")
        let params:Parameters = ["kisi_ad":user_name,"kisi_tel":number]
        AF.request("http://kasimadalan.pe.hu/kisiler/insert_kisiler.php",method: .post,parameters: params).response{
            response in
            
            if let data = response.data{
                do{
                     let dataResponse = try JSONDecoder().decode(PersonResponse.self, from: data)
                    print(dataResponse)
                   
                
            }catch{print(error.localizedDescription)}
                
            }
        }
    }
    
    
}
