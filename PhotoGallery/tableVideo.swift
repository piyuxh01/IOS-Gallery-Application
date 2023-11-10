//
//  tableVideo.swift
//  PhotoGallery
//
//  Created by Piyush on 07/11/23.
//

import UIKit

var vid = ["vid01", "vid02", "vid03", "vid04", "vid05", "vid06"]
var videoIndex = 0

class tableVideo: UIViewController {

    
    @IBOutlet weak var videoTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        backgroundTV.image = UIImage(named: wallpaper[profile_image])
    }
    
    @IBOutlet weak var backgroundTV: UIImageView!
    
   
}

extension tableVideo: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vid.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let videoCell = videoTable.dequeueReusableCell(withIdentifier: "vCell", for: indexPath)
        
        videoCell.textLabel?.text = vid[indexPath.row]
        
        return videoCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        videoIndex = indexPath.row
        videoTable.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "toVideoDisplay", sender: self)
    }
    
}
