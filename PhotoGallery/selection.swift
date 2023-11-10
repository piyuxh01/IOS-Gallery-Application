//
//  selection.swift
//  PhotoGallery
//
//  Created by Piyush on 07/11/23.
//

import UIKit

class selection: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcome.layer.masksToBounds = true
        welcome.layer.cornerRadius = 45
        
        images.layer.cornerRadius = 47
        videos.layer.cornerRadius = 47
        
        welcome.text = "Welcome" + " " + n
        backgroundSelection.image = UIImage(named: wallpaper[profile_image])
        // Do any additional setup after loading the view.
        
    }
    
    @IBOutlet weak var welcome: UILabel!
    @IBOutlet weak var images: UIButton!
    @IBOutlet weak var videos: UIButton!
    @IBOutlet weak var backgroundSelection: UIImageView!
    
    
    var n = " "
    //var i = " "

}


