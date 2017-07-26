//
//  AdonItems.swift
//  ThoagiOS
//
//  Created by Parallax on 6/20/17.
//  Copyright © 2017 Parallax. All rights reserved.
//

import Foundation

class AdonItems{

    private var _addon_category_id : String!
    private var _addon_item_id : String!
    private var _addon_item_name : String!
    private var _category_id : String!
    private var _created_at : String!
    private var _description : String!
    private var _id : String!
    private var _price : String!
    private var _status : String!
    private var _updated_at : String!
    private var _isSelected : Bool!

    
    init(){
        self._addon_category_id = ""
        self._addon_item_id     = ""
        self._addon_item_name   = ""
        self._category_id       = ""
        self._created_at        = ""
        self._description       = ""
        self._id                = ""
        self._price             = ""
        self._status            = ""
        self._updated_at        = ""
        self._isSelected        = false;
    }
    
    var isSelected: Bool{
        get{return _isSelected}
        set(_isSelected){ self._isSelected = _isSelected}
    }
    
    var addon_category_id: String{
        get{return _addon_category_id}
        set(_addon_category_id){ self._addon_category_id = _addon_category_id}
    }
    
    var addon_item_id: String{
        get{return _addon_item_id}
        set(_addon_item_id){ self._addon_item_id = _addon_item_id}
    }
    
    var addon_item_name: String{
        get{return _addon_item_name}
        set(_addon_item_name){ self._addon_item_name = _addon_item_name}
    }
    
    
    var category_id: String{
        get{return _category_id}
        set(_category_id){ self._category_id = _category_id}
    }
    
    var created_at: String{
        get{return _created_at}
        set(_created_at){ self._created_at = _created_at}
    }
    
    var description: String{
        get{return _description}
        set(_description){ self._description = _description}
    }
    
    var id: String{
        get{return _id}
        set(_id){ self._id = _id}
    }
    
    var price: String{
        get{return _price}
        set(_price){ self._price = _price}
    }
    
    var status: String{
        get{return _status}
        set(_status){ self._status = _status}
    }
    
    var updated_at: String{
        get{return _updated_at}
        set(_updated_at){ self._updated_at = _updated_at}
    }
    
}
