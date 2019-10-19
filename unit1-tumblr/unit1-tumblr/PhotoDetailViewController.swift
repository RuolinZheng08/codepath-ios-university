//
//  PhotoDetailViewController.swift
//  unit1-tumblr
//
//  Created by Ruolin Zheng on 2019/10/19.
//  Copyright © 2019 Ruolin Zheng. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    var photoUrl: URL?
    
    @IBAction func photoTapped(_ sender: Any) {
        performSegue(withIdentifier: "presentFullScreenPhoto", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        photoImageView.af_setImage(withURL: photoUrl!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentFullScreenPhoto" {
            let vc = segue.destination as! FullScreenPhotoViewController
            vc.photoUrl = self.photoUrl
        }
        
    }

}
