//
//  Temporary.swift
//  ThoagiOS
//
//  Created by Parallax on 7/2/17.
//  Copyright © 2017 Parallax. All rights reserved.
//

import Foundation

class Temporary{

    var address = Address()
    
    static var instance : Temporary!
    class func sharedInstance()-> Temporary{
        self.instance = (self.instance ?? Temporary())
        return self.instance
    }
}
