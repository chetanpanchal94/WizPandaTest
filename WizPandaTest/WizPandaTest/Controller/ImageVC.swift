//
//  ImageVC.swift
//  WizPandaTest
//
//  Created by Chetan Panchal on 19/06/20.
//  Copyright © 2020 Chetan Panchal. All rights reserved.
//

import UIKit

class ImageVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var btnClose: UIButton!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imageCV: UICollectionView!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var pager: UIPageControl!
    @IBOutlet weak var btnContinue: UIButton!
    
    let images = ["smoothies1","smoothies2","smoothies3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnClose.setTitle("X", for: .normal)
        btnClose.titleLabel?.font = .titleFont
        btnClose.setTitleColor(.dodgerBlue, for: .normal)
        
        lblTitle.textColor = .dodgerBlue
        lblTitle.font = .headingFont
        lblTitle.numberOfLines = 0
        lblTitle.lineBreakMode = .byTruncatingTail
        lblTitle.textAlignment = .center
        lblTitle.text = "Discover Smooties"
        
        btnContinue.setTitle("Continue", for: .normal)
        btnContinue.titleLabel?.font = .headingFont
        btnContinue.backgroundColor = .blueberry
        btnContinue.setTitleColor(.white, for: .normal)
        
        lblDescription.textColor = .dodgerBlue
        lblDescription.font = .bodyFont
        lblDescription.numberOfLines = 0
        lblDescription.lineBreakMode = .byTruncatingTail
        lblDescription.textAlignment = .center
        lblDescription.text = "Discover thousands of smoothies for any drink snthusiast"
        
        pager.numberOfPages = 3
        pager.pageIndicatorTintColor = .gray
        pager.currentPageIndicatorTintColor = .dodgerBlue
        pager.currentPage = 0
        
        setupImageCollectionView()
    }
    
    // MARK: collectionview datasource and delegates
    
    func setupImageCollectionView() {
        
        imageCV.bounces = false
        imageCV.showsVerticalScrollIndicator = false
        imageCV.showsHorizontalScrollIndicator = false
        imageCV.isPagingEnabled = true
        imageCV.allowsSelection = false
        imageCV.allowsMultipleSelection = false
        imageCV.backgroundColor = .white
        
        
        /// formating collectionview
        if let layout = imageCV.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        
        let imageCVCell = UINib(nibName: "ImageCVCell", bundle: nil)
        imageCV.register(imageCVCell, forCellWithReuseIdentifier: "ImageCVCell")

        imageCV.dataSource = self
        imageCV.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: imageCV.frame.width, height: imageCV.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let imageCVCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCVCell", for: indexPath) as! ImageCVCell
        imageCVCell.imageView.image = UIImage(named: images[indexPath.row])
        return imageCVCell
        
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        pager.currentPage = indexPath.row
    }
    
    // MARK: button actions
    
    @IBAction func btnCloseAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnContinueAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
