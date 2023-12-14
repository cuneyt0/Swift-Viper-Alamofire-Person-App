//
//  ViewController.swift
//  persons_app
//
//  Created by Cuneyt on 26.11.2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var personTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var personList = [Person]()
    
    var homeviewPresenterObject:ViewToPresenterHomeViewProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        personTableView.delegate = self
        personTableView.dataSource = self
        HomeviewRouter.createModule(ref: self)
        
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Anasayfaya dönüldü")
        homeviewPresenterObject?.fetchAllUser()
    }


}
extension HomeViewController:PresenterToViewHomeViewProtocol{
    func vieweVeriGonder(kisilerListesi: Array<Person>) {
        self.personList = kisilerListesi
        
        DispatchQueue.main.async {
            self.personTableView.reloadData()
        }
        
      
    }
    
    
}
extension HomeViewController : UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        homeviewPresenterObject?.searchUser(searchKey: searchText)
    }
}

extension HomeViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let person = personList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as! TableViewCell
        
        cell.personInfo.text = "\(person.kisi_ad!) - \(person.kisi_tel!) "
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = personList[indexPath.row]
        
        performSegue(withIdentifier: "toDetail", sender: person)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "toDetail" {
            let person = sender as? Person
            let gotoVC = segue.destination as! DetailPersonViewController
            gotoVC.person = person
        }
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let person = personList[indexPath.row]
        let silAction = UIContextualAction(style: .destructive, title: "Sil"){
            (contextualAction,view,bool) in
            
            let alert = UIAlertController(title: "Silme İşlemş", message: "\(person.kisi_ad!) silinsin mi ", preferredStyle:.alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ action in }
            let approveAction = UIAlertAction(title: "Yes", style: .destructive){ action in 
                self.homeviewPresenterObject?.deleteUser(Id:Int( person.kisi_id!)!)
            }
            
            alert.addAction(cancelAction)
            alert.addAction(approveAction)
            self.present(alert, animated: true)
        }
        return UISwipeActionsConfiguration(actions: [silAction])
    }
    
    
}

