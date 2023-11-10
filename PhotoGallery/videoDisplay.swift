//
//  videoDisplay.swift
//  PhotoGallery
//
//  Created by Piyush on 07/11/23.
//

import UIKit
import AVKit

class videoDisplay: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        backgroundVidDis.image = UIImage(named: wallpaper[profile_image])
    }
    
    @IBOutlet weak var backgroundVidDis: UIImageView!
    
    @IBAction func Play(_ sender: Any) {
        let path = Bundle.main.path(forResource: vid[videoIndex], ofType: "mp4")
        let myurl = URL(fileURLWithPath: path!)
        
        let vlc = AVPlayer(url: myurl)
        
        let myvlc = AVPlayerViewController()
        myvlc.player = vlc
        present(myvlc, animated: true, completion: nil)
        
    }
    
    

}
