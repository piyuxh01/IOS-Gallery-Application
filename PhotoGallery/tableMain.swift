//
//  tableMain.swift
//  PhotoGallery
//
//  Created by Piyush on 30/10/23.
//

import UIKit

var cam = ["cam01", "cam02", "cam03", "cam04", "cam05", "cam06", "cam07", "cam08"]

//var camImg = [UIImage(named: "cam01"), UIImage(named: "cam02"), UIImage(named: "cam03")]

var myIndex = 0

class tableMain: UIViewController {
    
    
    @IBOutlet weak var myTable: UITableView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundTM.image = UIImage(named: wallpaper[profile_image])
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var backgroundTM: UIImageView!
    //var itm = " "
    


}

extension tableMain:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cam.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = cam[indexPath.row]
        //cell.imageView?.image = camImg[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        myTable.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "toDisplay", sender: self)
    }
    
    
}
