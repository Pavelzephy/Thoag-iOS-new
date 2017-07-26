//
//  Card.swift
//  ThoagiOS
//
//  Created by Parallax on 6/19/17.
//  Copyright © 2017 Parallax. All rights reserved.
//

import Foundation

class Card{

    private var _created_at             : String!
    private var _customer_id            : String!
    private var _payment_gateway        : String!
    private var _payment_method_id      : String!
    private var _payment_method_status  : String!
    private var _updated_at             : String!
    private var _user_id                : String!
    private var _last4Digit             : String!
    
    init(){
        self._user_id               = ""
        self._customer_id           = ""
        self._created_at            = ""
        self._payment_gateway       = ""
        self._payment_method_id     = ""
        self._payment_method_status = ""
        self._updated_at            = ""
        self._last4Digit            = ""
    }
    
    var user_id: String{
        get{return _user_id}
        set(_user_id){ self._user_id = _user_id}
    }
    
    var customer_id: String{
        get{return _customer_id}
        set(_customer_id){ self._customer_id = _customer_id}
    }
    
    var created_at: String{
        get{return _created_at}
        set(_created_at){ self._created_at = _created_at}
    }
    
    var payment_gateway: String{
        get{return _payment_gateway}
        set(_payment_gateway){ self._payment_gateway = _payment_gateway}
    }
    
    var payment_method_id: String{
        get{return _payment_method_id}
        set(_payment_method_id){ self._payment_method_id = _payment_method_id}
    }
    
    var payment_method_status: String{
        get{return _payment_method_status}
        set(_payment_method_status){ self._payment_method_status = _payment_method_status}
    }

    var updated_at: String{
        get{return _updated_at}
        set(_updated_at){ self._updated_at = _updated_at}
    }
    
    var last4Digit: String{
        get{return _last4Digit}
        set(_last4Digit){ self._last4Digit = _last4Digit}
    }

}
