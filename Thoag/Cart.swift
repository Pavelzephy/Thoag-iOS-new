//
//  Cart.swift
//  ThoagiOS
//
//  Created by Parallax on 6/22/17.
//  Copyright © 2017 Parallax. All rights reserved.
//

import Foundation

class Cart{

    private var _quantity : Int!
    private var _totalPrice : Double!
    private var _foodName : String!
    
    var itemList = [AdonItems]()
    
    init(){
       self._quantity = 1
       self._totalPrice = 0.0
       self._foodName = ""
    
    }
    
    
    var quantity : Int{
        get{ return _quantity}
        set(_quantity){
            self._quantity = _quantity
        }
    }
    
    var totalPrice : Double{
        get{ return _totalPrice}
        set(_totalPrice){
            self._totalPrice = _totalPrice
        }
    }
    
    var foodName : String{
        get{ return _foodName}
        set(_foodName){
            self._foodName = _foodName
        }
    }
    
    
    var cartList = [Cart]()
    
    static var instance : Cart!
    class func sharedInstance()-> Cart{
        self.instance = (self.instance ?? Cart())
        return self.instance
    }
    

}
