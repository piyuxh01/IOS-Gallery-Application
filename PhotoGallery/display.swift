//
//  display.swift
//  PhotoGallery
//
//  Created by Piyush on 01/11/23.
//

import UIKit

class display: UIViewController {

    @IBOutlet weak var img: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.image = UIImage(named: cam[myIndex])

        prevBtn.layer.cornerRadius = 10
        nextBtn.layer.cornerRadius = 10
        
        img.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        
        backgroundDisplay.image = UIImage(named: wallpaper[profile_image])
    }
    
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var prevBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var zoomSlider: UISlider!
    
    
    @IBOutlet weak var backgroundDisplay: UIImageView!
    
    
    @IBAction func prevAction(_ sender: Any) {
        myIndex -= 1
        
        if myIndex < 0 {
            myIndex  = cam.count - 1
        }
        
        img.image = UIImage(named: cam[myIndex])
    }
    
    @IBAction func nextAction(_ sender: Any) {
        myIndex += 1
        
        if myIndex >= cam.count {
            myIndex = 0
        }
        img.image = UIImage(named: cam[myIndex])
    }
    
    @IBAction func zoom(_ sender: Any) {
        let zoomScale = CGFloat(zoomSlider.value)
        img.transform = CGAffineTransform(scaleX: zoomScale, y: zoomScale)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        zoomSlider.maximumValue = 2.0
        zoomSlider.minimumValue = 0.5
    }
    
}
    
    
    



