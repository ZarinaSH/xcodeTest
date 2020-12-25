//
//  ViewController.swift
//  TableView
//
//  Created by Зарина Шагимуратова on 23.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    let cellID = "cellID"
    var sitys = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        table.dataSource = self
        table.delegate = self
        
        
     
        
        sitys.append("Москва")
        sitys.append("Казвнь")
        sitys.append("Питер")
        sitys.append("Уфа")
        sitys.append("Новгород")
        sitys.append("Сочи")
        sitys.append("Елабуга")
        sitys.append("Краснодар")
        sitys.append("Новороссийск")
        sitys.append("Майкоп")
        sitys.append("Йошкар-ола")
        sitys.append("алена")
        sitys.append("назови")
        sitys.append("город")
       
        

        
        

    }


}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sitys.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = table.dequeueReusableCell(withIdentifier: cellID)
        
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
       cell?.textLabel?.text = sitys[indexPath.item]
       //cell?.textLabel?.text = "город"

        cell?.imageView?.image=UIImage(named: "1")
        
//        let vc = storyboard?.instantiateViewController(withIdentifier: "TouchViewController") as! TouchViewController

    
        return cell!
    }
  
    

    
}
