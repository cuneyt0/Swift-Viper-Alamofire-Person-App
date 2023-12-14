//
//  HomeviewInteractor.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
import Alamofire
class HomeviewInteractor:PresenterToInteractorHomeViewProtocol{
    var homeViewPresenter: InteractorToPresenterHomeViewProtocol?
    
    func fetchAllUser() {
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler.php",method: .get).response{
            response in
            
            if let data = response.data{
                do{
                     let dataResponse = try JSONDecoder().decode(PersonResponse.self, from: data)
                    
                    if let personList = dataResponse.kisiler{
                        self.homeViewPresenter?.presenteraVeriGonder(kisilerListesi: personList)
                    }
                
            }catch{print(error.localizedDescription)}
                
            }
        }
       
    }
    
    func searchUser(searchKey: String) {
        print("Aranan Metin \(searchKey)")
        let params:Parameters = ["kisi_ad":searchKey]
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php",method: .post,parameters: params).response{
            response in
            
            if let data = response.data{
                do{
                     let dataResponse = try JSONDecoder().decode(PersonResponse.self, from: data)
                    
                    if let personList = dataResponse.kisiler{
                        self.homeViewPresenter?.presenteraVeriGonder(kisilerListesi: personList)
                    }
                
            }catch{print(error.localizedDescription)}
                
            }
        }
    }
    
    func deleteUser(Id: Int) {
        print("\(Id) silindi")
        let params:Parameters = ["kisi_id":Id]
        AF.request("http://kasimadalan.pe.hu/kisiler/delete_kisiler.php",method: .post,parameters: params).response{
            response in
            //Gelen response u ekrana gönderme işlemi yapmayacagımız için parse etmedik
            if let data = response.data{
                do{
                    let dataResponse = try JSONSerialization.jsonObject(with: data)
                    print(dataResponse)
                    self.fetchAllUser()
                   
                
            }catch{print(error.localizedDescription)}
                
            }
        }
    }
}
