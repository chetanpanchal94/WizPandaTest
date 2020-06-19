//
//  UIFontExtension.swift
//  WizPandaTest
//
//  Created by Chetan Panchal on 19/06/20.
//  Copyright © 2020 Chetan Panchal. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    
    @nonobjc class var titleFont: UIFont {
        return UIFont.systemFont(ofSize: 48.0)
    }
    
    @nonobjc class var headingFont: UIFont {
        return UIFont.systemFont(ofSize: 18.0)
    }
    
    @nonobjc class var bodyFont: UIFont {
      return UIFont.systemFont(ofSize: 15.0)
    }
    
    @nonobjc class var noteFont: UIFont {
      return UIFont.systemFont(ofSize: 13.0)
    }
    
    
}
