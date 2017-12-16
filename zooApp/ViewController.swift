//
//  ViewController.swift
//  zooApp
//
//  Created by amr on 12/16/17.
//  Copyright © 2017 amr. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITabBarDelegate,UITableViewDataSource{

    @IBOutlet weak var tvAnimals: UITableView!
    var killers = ["Lion","bear","tiger","crocodile"]
    var nonkillers = ["Girrafe","Elephant","cat","dog"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return killers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        if indexPath.section==0{
            cell.textLabel?.text=killers[indexPath.row]
        }
        else{
            cell.textLabel?.text=nonkillers[indexPath.row]
        }
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section==0{
            return "killers"
        }
        else{
            return "non-killers"
        }
    }

}

