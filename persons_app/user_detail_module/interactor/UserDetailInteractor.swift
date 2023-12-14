//
//  UserDetailInteractor.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
import Alamofire
class UserDetailInteractor : PresenterToInteractorDetailPersonProtocol{
    func updatePerson(user_id: Int, user_name: String, number: String) {
        
        let params:Parameters = ["kisi_id":user_id,"kisi_ad":user_name,"kisi_tel":number]
        AF.request("http://kasimadalan.pe.hu/kisiler/update_kisiler.php",method: .post,parameters: params).response{
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

