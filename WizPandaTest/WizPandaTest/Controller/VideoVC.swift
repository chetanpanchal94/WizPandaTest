//
//  VideoVC.swift
//  WizPandaTest
//
//  Created by Chetan Panchal on 19/06/20.
//  Copyright © 2020 Chetan Panchal. All rights reserved.
//

import UIKit
import WebKit

class VideoVC: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnClose: UIButton!
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnClose.setTitle("X", for: .normal)
        btnClose.titleLabel?.font = .titleFont
        btnClose.setTitleColor(.dodgerBlue, for: .normal)
        
        webView.configuration.allowsInlineMediaPlayback = true
        webView.configuration.mediaTypesRequiringUserActionForPlayback = []
        
        
        let videoUrl = "https://www.youtube.com/embed/CJN1n3fId_A?playsinline=1"
        guard let url = URL(string: videoUrl) else { return }
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
    

    @IBAction func btnCloseAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
