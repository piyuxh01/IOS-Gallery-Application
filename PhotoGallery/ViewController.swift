//
//  ViewController.swift
//  PhotoGallery
//
//  Created by Piyush on 30/10/23.
//

import UIKit
import AVKit
import AVFoundation

var wallpaper = ["background", "calm", "chaos", "fun"]
var profile_image = 0


class ViewController: UIViewController, UITextFieldDelegate{
    var vlc: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        login.layer.cornerRadius = 38
        reset.layer.cornerRadius = 40
        email.delegate = self
        password.delegate = self
        //backgroundViewController.image = UIImage(named: wallpaper[profile_image])
    }

    @IBOutlet weak var login: UIButton!
    
    @IBOutlet weak var reset: UIButton!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var profileSegment: UISegmentedControl!
    
    @IBOutlet weak var backgroundViewController: UIImageView!
    
    
    
    
    @IBAction func loginAction(_ sender: Any) {
        
        if email.text == "admin" && password.text == "admin123"{
            performSegue(withIdentifier: "toMain", sender: nil)
            
            do{
                let song_url = Bundle.main.path(forResource: "correct", ofType: "mp3")
                try vlc = AVAudioPlayer(contentsOf: NSURL(string: song_url!) as! URL)
                vlc.play()
            }
            catch{}
        }
        else {
            let alrt = UIAlertController(title: "Wrong Username or Password", message: "", preferredStyle: UIAlertController.Style.alert)
            alrt.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.destructive, handler: nil))
            present(alrt, animated: true, completion: nil)
            
            //email.text = ""
            //password.text = ""
            
            do{
                let song_url = Bundle.main.path(forResource: "error", ofType: "mp3")
                try vlc = AVAudioPlayer(contentsOf: NSURL(string: song_url!) as! URL)
                vlc.play()
            }
            catch{}
        }
    }
    
    
    @IBAction func clearAction(_ sender: Any) {
        
        do{
            let song_url = Bundle.main.path(forResource: "scrapping", ofType: "mp3")
            try vlc = AVAudioPlayer(contentsOf: NSURL(string: song_url!) as! URL)
            vlc.play()
        }
        catch{}        
        
        email.text = ""
        password.text = ""

    }
    
    
    @IBAction func profileSegAct(_ sender: Any) {
        
        let value = profileSegment.selectedSegmentIndex
        
        if value == 0 {
            profile_image = 0
        }
        else if value == 1 {
            profile_image = 1
        }
        else if value == 2 {
            profile_image = 2
        }
        else {
            profile_image = 3
        }
        
        backgroundViewController.image = UIImage(named: wallpaper[profile_image])
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destiny = segue.destination as? selection{
            destiny.n = email.text!
            
        }
        
    }
}

