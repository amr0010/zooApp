//
//  ViewController2.swift
//  zooApp
//
//  Created by amr on 12/16/17.
//  Copyright © 2017 amr. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tvAnimals: UITableView!
    var Animals = Array<Animal>()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Animals.append(Animal(name: "dog", desc: "big white bulldog" , image: "bulldog"))
        Animals.append(Animal(name: "asdsad", desc: "big white bulldog" , image: "bulldog"))        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Animals.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CustonCellTableViewCell=tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustonCellTableViewCell
        cell.laTitle.text=Animals[indexPath.row].name!
        cell.laDesc.text=Animals[indexPath.row].desc!
        cell.laImage.image=UIImage(named: Animals[indexPath.row].image!)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
