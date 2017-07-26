//
//  AddonCategories.swift
//  ThoagiOS
//
//  Created by Parallax on 6/20/17.
//  Copyright © 2017 Parallax. All rights reserved.
//

import Foundation


class AddonCategories{

    private var _addon_category_id : String!
    private var _addon_category_name : String!
    private var _created_at : String!
    private var _description : String!
    
    var addonItemArr = [AdonItems]()
    var selectedAddonItemArr = [AdonItems]()
    
    private var _food_id : String!
    private var _id : String!
    private var _number_of_required_item : String!
    private var _required : String!
    private var _restaurant_id : String!
    private var _status : String!
    private var _updated_at : String!

    init(){
        self._addon_category_id = ""
        self._addon_category_name = ""
        self._created_at = ""
        self._description = ""
        self._food_id = ""
        self._id = ""
        self._number_of_required_item = ""
        self._required = ""
        self._restaurant_id = ""
        self._status = ""
        self._updated_at = ""
    }
    
    
    var addon_category_id: String{
        get{return _addon_category_id}
        set(_addon_category_id){ self._addon_category_id = _addon_category_id}
    }
    
    var addon_category_name: String{
        get{return _addon_category_name}
        set(_addon_category_name){ self._addon_category_name = _addon_category_name}
    }
    
    var created_at: String{
        get{return _created_at}
        set(_created_at){ self._created_at = _created_at}
    }
    
    var description: String{
        get{return _description}
        set(_description){ self._description = _description}
    }
    
    var food_id: String{
        get{return _food_id}
        set(_food_id){ self._food_id = _food_id}
    }
    
    var id: String{
        get{return _id}
        set(_id){ self._id = _id}
    }
    
    var number_of_required_item: String{
        get{return _number_of_required_item}
        set(_number_of_required_item){ self._number_of_required_item = _number_of_required_item}
    }
    
    var required: String{
        get{return _required}
        set(_required){ self._required = _required}
    }
    
    var restaurant_id: String{
        get{return _restaurant_id}
        set(_restaurant_id){ self._restaurant_id = _restaurant_id}
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
