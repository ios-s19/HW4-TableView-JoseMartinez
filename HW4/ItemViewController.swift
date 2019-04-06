//
//  ViewController.swift
//  HW4
//
//  Created by Jose on 4/4/19.
//  Copyright © 2019 Jose. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    //Table View Cell file to a variable
    var tableViewC: TableViewCell!
    
    //array of the names of the locations
    var names = [("Buckingham Palace"),("The Eiffel Tower"),("The Grand Canyon"),("Windsor Castle"),("Empire State Building")]
    //array of images with refrence name
    var picsNames = [UIImage(named: "palace"), UIImage(named: "tower"), UIImage(named: "canyon"), UIImage(named: "windsor"), UIImage(named: "empire")]
    //function to count total number of names
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    //function to print all labels and all images from arrays
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! TableViewCell
        //labeles
        cell.label.text=self.names[indexPath .row]
        //pictures
        cell.photo.image=self.picsNames[indexPath .row]
        return cell
    }
    //override function to load table view
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //function to change the height of row height
    internal func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 125
    }
}

