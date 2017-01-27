//
//  FileTableTableViewController.swift
//  testU
//
//  Created by Mor Di on 27.01.17.
//  Copyright © 2017 Mor Di. All rights reserved.
//

import UIKit

class FileTableTableViewController: UITableViewController {
    
    let calendar = Calendar.current
    let date = Date()
    let dateComponents = DateComponents()
    let dateFormatter = DateFormatter()
    
    
    var filesArray: [Files] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()

        filesArray = [
            Files(filename: "Family Shared", isFolder: "true", modDate: Date(), fileType: "", isOrange: false, isBlue: false),
            Files(filename: "For Work", isFolder: "true", modDate: Date(), fileType: "", isOrange: true, isBlue: false),
            Files(filename: "WorkPowerPoint", isFolder: "", modDate: Date(), fileType: "pptx", isOrange: false, isBlue: false),
            Files(filename: "Speech", isFolder: "", modDate: Date(), fileType: "docx", isOrange: false, isBlue: true),
            Files(filename: "Tom's folder", isFolder: "true", modDate: Date(), fileType: "", isOrange: true, isBlue: false),
            Files(filename: "DSC119", isFolder: "", modDate: Date(), fileType: "png", isOrange: false, isBlue: true),
        ]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filesArray.count
        
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! fileTableViewCell

        let files = filesArray[indexPath.row]
        
        let name = "\(files.filename).\(files.fileType)"
        
        cell.fileName.text = name
        
        if files.isFolder == "true" {
            cell.fileType.image = UIImage(named: "folder.png")
        } else {
            cell.fileType.image = UIImage(named: "otherFormat.png")
        }

    
        if files.isOrange == true {
            cell.colorMark.backgroundColor = UIColor.orange
        }
        
        if files.isBlue == true {
            cell.colorMark.backgroundColor = UIColor.blue

        }
        
        dateFormatter.dateFormat = "MMMM, dd, yyyy"
        let modifiedDate = dateFormatter.string(from: date)
        cell.fileDate.text = modifiedDate

        return cell
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt: IndexPath) -> [UITableViewRowAction]? {
        let star = UITableViewRowAction(style: .normal, title: "star") { action, index in
            print("star button tapped")
        }
      //  star.backgroundColor = UIColor(patternImage: UIImage(named: "star.png")!)
        
     
        
        let link = UITableViewRowAction(style: .normal, title: "link") { action, index in
            print("link button tapped")
        }
    //    link.backgroundColor = UIColor(patternImage: UIImage(named: "link.png")!)
        
        let delete = UITableViewRowAction(style: .normal, title: "delete") { action, index in
            print("delete button tapped")
        }
     //   delete.backgroundColor = UIColor(patternImage: UIImage(named: "delete.png")!)
        
        return [delete, link, star]
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let files = filesArray[indexPath.row]
        if files.isFolder == "true" {
                performSegue(withIdentifier: "fromFolder", sender: Any?.self)
        
        } else {
            
            let alert = UIAlertController(title: "Ooops!!!", message: "This is not a folder", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            print("This is not a folder")
        }
        
    }

}
