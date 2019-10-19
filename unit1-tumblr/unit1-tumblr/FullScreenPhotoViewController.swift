//
//  FullScreenPhotoViewController.swift
//  Alamofire
//
//  Created by Ruolin Zheng on 2019/10/19.
//

import UIKit

class FullScreenPhotoViewController: UIViewController {

    var photoUrl: URL?
    
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var photoScroll: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        photoImage.af_setImage(withURL: photoUrl!)
    }

}
