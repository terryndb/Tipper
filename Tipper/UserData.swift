//
//  UserData.swift
//  Tipper
//
//  Created by Terry Nguyen on 10/31/15.
//  Copyright © 2015 Terry. All rights reserved.
//

import Foundation

class UserData {
    static let DEFAULT_TIP_PERCENT_INDEX = "defaultTipPercentIndex"
    static let DARK_STYLE = "darkStyle"
    
    static var defaultTipPercentIndex = 0;
    static var darkStyle = false;
    
    static func load() {
        let defaults = NSUserDefaults.standardUserDefaults();
        defaultTipPercentIndex = defaults.integerForKey(DEFAULT_TIP_PERCENT_INDEX);
        darkStyle = defaults.boolForKey(DARK_STYLE);
    }
    
    static func save() {
        let defaults = NSUserDefaults.standardUserDefaults();
        defaults.setInteger(defaultTipPercentIndex, forKey:DEFAULT_TIP_PERCENT_INDEX);
        defaults.setBool(darkStyle, forKey:DARK_STYLE);    }
}