//
//  CuisineModel.swift
//  ThoagiOS
//
//  Created by Parallax on 6/15/17.
//  Copyright © 2017 Parallax. All rights reserved.
//

import Foundation

class CuisineModel{

    private var _cuisine_name : String!
    private var _cuisine_Id   : String!
    private var _location_for : String!
    
    init(){
       self._cuisine_name = ""
       self._cuisine_Id   = ""
       self._location_for = ""
    }
    
    var cuisine_name : String{
        get{ return _cuisine_name}
        set(_cuisine_name){ self._cuisine_name = _cuisine_name}
    }

    var cuisine_Id : String{
        get{ return _cuisine_Id}
        set(_cuisine_Id){ self._cuisine_Id = _cuisine_Id}
    }

    var location_for : String{
        get{ return _location_for}
        set(_location_for){ self._location_for = _location_for}
    }
}
