//
//  GIFViewController.swift
//  SportsApp_ITI
//
//  Created by Zeinab on 02/02/2023.
//

import UIKit
import SwiftyGif

class GIFViewController: UIViewController {

   
    @IBOutlet weak var gifImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gifImg.backgroundColor = .black
        gifImg.layer.cornerRadius = 100
        do {
            let gif = try UIImage(gifName: "splash3.gif")
            self.gifImg.setGifImage(gif, loopCount: -1) // Will loop forever
        } catch {
            print(error)
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
           
            self.performSegue(withIdentifier: "initial", sender: nil)
        }
    }

   
}
