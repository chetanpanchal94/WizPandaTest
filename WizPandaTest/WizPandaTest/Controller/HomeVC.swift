//
//  HomeVC.swift
//  WizPandaTest
//
//  Created by Chetan Panchal on 19/06/20.
//  Copyright © 2020 Chetan Panchal. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var btnImage: UIButton!
    @IBOutlet weak var btnVideo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .blueberry
        
        
        setupButton(title: "Image Demo", button: btnImage)
        setupButton(title: "Video Demo", button: btnVideo)
    }
    
    /// formatting buttons
    func setupButton(title: String, button: UIButton) {
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .headingFont
        button.backgroundColor = .dodgerBlue
        button.setTitleColor(.white, for: .normal)
    }

    
    // MARK: button actions
    
    @IBAction func btnImageAction(_ sender: Any) {
        let imageVC = self.storyboard?.instantiateViewController(identifier: "ImageVC") as! ImageVC
        imageVC.modalPresentationStyle = .overCurrentContext
        self.present(imageVC, animated: true, completion: nil)
    }
    
    @IBAction func btnVideoAction(_ sender: Any) {
        let videoVC = self.storyboard?.instantiateViewController(identifier: "VideoVC") as! VideoVC
        videoVC.modalPresentationStyle = .overCurrentContext
        self.present(videoVC, animated: true, completion: nil)
    }
}
