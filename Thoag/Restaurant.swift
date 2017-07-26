//
//  Restaurant.swift
//  ThoagiOS
//
//  Created by Parallax on 6/10/17.
//  Copyright © 2017 Parallax. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Restaurant{

    private var _id                    : String!
    private var _restaurant_code       : String!
    private var _restaurant_name       : String!
    private var _restaurantOwner       : String!
    private var _contact_person        : String!
    private var _contact_number        : String!
    private var _contact_email         : String!
    private var _restaurant_logoUrl    : String!
    private var _serve_catering        : String!
    private var _acceptCashDelivery    : String!
    private var _down_payment          : String!
    private var _preparation_time      : String!
    private var _minimum_order_notice  : String!
    private var _minimum_food_orders   : String!
    private var _free_delivery         : String!
    private var _restaurant_category_id: String!
    private var _is_pre_order          : String!
    private var _delivery_charge       : String!
    private var _delivery_start_time   : String!
    private var _delivery_end_time     : String!
    private var _total_ratings         : String!
    private var _average_rating        : String!
    private var _status                : String!
    private var _created_at            : String!
    private var _updated_at            : String!
    private var _foodCategory          : String!
    private var _restaurant_url        : String!
    
    init(){

       self._id                      = ""
       self._restaurant_code         = ""
       self._restaurant_name         = ""
       self._restaurantOwner         = ""
       self._contact_person          = ""
       self._contact_number          = ""
       self._contact_email           = ""
       self._restaurant_logoUrl      = ""
       self._serve_catering          = ""
       self._acceptCashDelivery      = ""
       self._down_payment            = ""
       self._minimum_order_notice    = ""
       self._preparation_time        = ""
       self._minimum_food_orders     = ""
       self._free_delivery           = ""
       self._restaurant_category_id  = ""
       self._is_pre_order            = ""
       self._delivery_charge         = ""
       self._delivery_start_time     = ""
       self._delivery_end_time       = ""
       self._total_ratings           = ""
       self._average_rating          = ""
       self._status                  = ""
       self._created_at              = ""
       self._updated_at              = ""
       self._foodCategory            = ""
       self._restaurant_url          = ""
        
    }


    var restaurant_url: String{
        get{
            return _restaurant_url
        }
        set(_restaurant_url){
            self._restaurant_url = _restaurant_url
        }
    }
    
    var foodCategory: String{
        get{
            return _foodCategory
        }
        set(_foodCategory){
            self._foodCategory = _foodCategory
        }
    }


    var id: String{
        get{
            return _id
        }
        set(_id){
            self._id = _id
        }
    }
    
    var restaurant_code: String{
        get{
            return _restaurant_code
        }
        set(_restaurant_code){
            self._restaurant_code = _restaurant_code
        }
    }
    
    var restaurant_name: String{
        get{
            return _restaurant_name
        }
        set(_restaurant_name){
            self._restaurant_name = _restaurant_name
        }
    }
    
    var restaurantOwner: String{
        get{
            return _restaurantOwner
        }
        set(_restaurantOwner){
            self._restaurantOwner = _restaurantOwner
        }
    }
    
    var contact_person: String{
        get{
            return _contact_person
        }
        set(_contact_person){
            self._contact_person = _contact_person
        }
    }
    
    var contact_number: String{
        get{
            return _contact_number
        }
        set(_contact_number){
            self._contact_number = _contact_number
        }
    }
    
    var contact_email: String{
        get{
            return _contact_email
        }
        set(_contact_email){
            self._contact_email = _contact_email
        }
    }
    
    var restaurant_logoUrl: String{
        get{
            return _restaurant_logoUrl
        }
        set(_restaurant_logoUrl){
            self._restaurant_logoUrl = _restaurant_logoUrl
        }
    }
    
    var serve_catering: String{
        get{
            return _serve_catering
        }
        set(_serve_catering){
            self._serve_catering = _serve_catering
        }
    }
    
    var acceptCashDelivery: String{
        get{
            return _acceptCashDelivery
        }
        set(_acceptCashDelivery){
            self._acceptCashDelivery = _acceptCashDelivery
        }
    }


    var down_payment: String{
        get{
            return _down_payment
        }
        set(_down_payment){
            self._down_payment = _down_payment
        }
    }
    
    
    var preparation_time: String{
        get{
            return _preparation_time
        }
        set(_preparation_time){
            self._preparation_time = _preparation_time
        }
    }
    
    var minimum_order_notice: String{
        get{
            return _minimum_order_notice
        }
        set(_minimum_order_notice){
            self._minimum_order_notice = _minimum_order_notice
        }
    }
    
    var minimum_food_orders: String{
        get{
            return _minimum_food_orders
        }
        set(_minimum_food_orders){
            self._minimum_food_orders = _minimum_food_orders
        }
    }
    
    var free_delivery: String{
        get{
            return _free_delivery
        }
        set(_free_delivery){
            self._free_delivery = _free_delivery
        }
    }
    
    var restaurant_category_id: String{
        get{
            return _restaurant_category_id
        }
        set(_restaurant_category_id){
            self._restaurant_category_id = _restaurant_category_id
        }
    }
    
    var is_pre_order: String{
        get{
            return _is_pre_order
        }
        set(_is_pre_order){
            self._is_pre_order = _is_pre_order
        }
    }
    
    var delivery_charge: String{
        get{
            return _delivery_charge
        }
        set(_delivery_charge){
            self._delivery_charge = _delivery_charge
        }
    }
    
    var delivery_start_time: String{
        get{
            return _delivery_start_time
        }
        set(_delivery_start_time){
            self._delivery_start_time = _delivery_start_time
        }
    }
    
    var delivery_end_time: String{
        get{
            return _delivery_end_time
        }
        set(_delivery_end_time){
            self._delivery_end_time = _delivery_end_time
        }
    }
    
    var total_ratings: String{
        get{
            return _total_ratings
        }
        set(_total_ratings){
            self._total_ratings = _total_ratings
        }
    }
    
    var average_rating: String{
        get{
            return _average_rating
        }
        set(_average_rating){
            self._average_rating = _average_rating
        }
    }
    
    
    var status: String{
        get{
            return _status
        }
        set(_status){
            self._status = _status
        }
    }
    
    var created_at: String{
        get{
            return _created_at
        }
        set(_created_at){
            self._created_at = _created_at
        }
    }
    
    var updated_at: String{
        get{
            return _updated_at
        }
        set(_updated_at){
            self._updated_at = _updated_at
        }
    }
    
    
    static var instance : Restaurant!
    class func sharedInstance()-> Restaurant{
        self.instance = (self.instance ?? Restaurant())
        return self.instance
    }
    
    var restaurantList = [Restaurant]()
    var cusineList     = [CuisineModel]()
    
    func getRstDatas(parameters : [String:String], success : @escaping (_ status: Int, _ message: String)-> Void, failure : @escaping (_ message: String)-> Void){
        
        let url = Base_Url + "m-search-restaurant"
        print(parameters)
        print(url)
        
        
        Alamofire.request(url, method: .post, parameters: parameters, headers: nil).responseJSON { (response:DataResponse<Any>) in
            print(response)
            
            switch(response.result) {
            case .success(_):
                if let data = response.result.value{
                    
                    let jsonDatas = JSON(data)
                    
//                    Restaurant.sharedInstance().cusineList.removeAll()
                    for item in jsonDatas["response"]["cuisine_list"].array!{
                        
                        let causine = CuisineModel()
                        
                        if let cuisine_name = item["cuisine_name"].string {
                            causine.cuisine_name = cuisine_name
                        }
                        
                        if let cuisine_Id = item["id"].string {
                            causine.cuisine_Id = cuisine_Id
                        }
                        
                        if let location_for = item["location_for"].string {
                            causine.location_for = location_for
                        }
                        
                        self.cusineList.append(causine)
                        Restaurant.sharedInstance().cusineList.append(causine)
                    }
                    
//                    Restaurant.sharedInstance().restaurantList.removeAll()
                    for item in jsonDatas["response"]["restaurant_list"].array!{
                        
                        
                            let restaurant = Restaurant()
                            
                            if let restName = item["restaurant_name"].string {
                                    restaurant.restaurant_name = restName
                            }
                            
                            if let id = item["id"].string {
                                    restaurant.id = id
                            }
                            
                            if let restaurant_code = item["restaurant_code"].string {
                                    restaurant.restaurant_code = restaurant_code
                            }
                            
                            if let restaurant_owner = item["restaurant_owner"].string {
                                    restaurant.restaurantOwner = restaurant_owner
                            }
                            
                            if let contact_person = item["contact_person"].string {
                                    restaurant.contact_person = contact_person
                            }
                            
                            if let contact_number = item["contact_number"].string {
                                    restaurant.contact_number = contact_number
                            }
                            
                            if let contact_email = item["contact_email"].string {
                                    restaurant.contact_email = contact_email
                            }
                            
                            if let restaurant_logo = item["restaurant_logo"].string {
                                    restaurant._restaurant_logoUrl = restaurant_logo
                            }
                            
                            if let serve_catering = item["serve_catering"].string {
                                    restaurant.serve_catering = serve_catering
                            }
                            
                            if let accept_cash_delivery = item["accept_cash_delivery"].string {
                                    restaurant.acceptCashDelivery = accept_cash_delivery
                            }
                            
                            if let down_payment = item["down_payment"].string {
                                    restaurant.down_payment = down_payment
                            }
                            
                            if let preparation_time = item["preparation_time"].string {
                                    restaurant.preparation_time = preparation_time
                            }
                            
                            if let minimum_order_notice = item["minimum_order_notice"].string {
                                    restaurant.minimum_order_notice = minimum_order_notice
                            }
                            
                            if let minimum_food_orders = item["minimum_food_orders"].string {
                                    restaurant.minimum_food_orders = minimum_food_orders
                            }
                            
                            if let free_delivery = item["free_delivery"].string {
                                    restaurant.free_delivery = free_delivery
                            }
                            
                            if let restaurant_category_id = item["restaurant_category_id"].string {
                                    restaurant.restaurant_category_id = restaurant_category_id
                            }
                            
                            if let is_pre_order = item["is_pre_order"].string {
                                    restaurant.is_pre_order = is_pre_order
                            }
                                                        
                            if let delivery_charge = item["delivery_charge"].string {
                                    restaurant.delivery_charge = delivery_charge
                            }
                                                        
                            if let delivery_start_time = item["delivery_start_time"].string {
                                    restaurant.delivery_start_time = delivery_start_time
                            }
                                                        
                            if let delivery_end_time = item["delivery_end_time"].string {
                                    restaurant.delivery_end_time = delivery_end_time
                            }
                        
                            if let food_categories = item["food_categories"].string {
                                    restaurant.foodCategory = food_categories
                            }
                        
                            if let total_ratings = item["total_ratings"].string {
                                    restaurant.total_ratings = total_ratings
                            }
                                                        
                            if let average_rating = item["average_rating"].string {
                                    restaurant.average_rating = average_rating
                            }
                                                        
                            if let status = item["status"].string {
                                    restaurant.status = status
                            }
                                                        
                            if let created_at = item["created_at"].string {
                                    restaurant.created_at = created_at
                            }
                                                        
                            if let updated_at = item["updated_at"].string {
                                    restaurant.updated_at = updated_at
                            }
                        
                            if let restaurant_url = item["restaurant_url"].string {
                                    restaurant.restaurant_url = restaurant_url
                                    //print(restaurant_url)
                            }
                        
                            self.restaurantList.append(restaurant)
                    }
                    
                    DispatchQueue.global(qos: .userInitiated).async {
                        success(200,"Seccussful")
                    }
                    
                
                }
                break
                
            case .failure(_):
                print(response.result.error ?? "Nothing")
                break
                
            }
        }

    }
    
}
