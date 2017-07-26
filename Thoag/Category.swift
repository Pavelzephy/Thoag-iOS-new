//
//  Category.swift
//  ThoagiOS
//
//  Created by Parallax on 6/14/17.
//  Copyright © 2017 Parallax. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Category{

    private var _categoryID : Int!
    private var _restaurant_id : Int!
    private var _status : Int!
    private var _category_name : String!
    private var _created_at : String!
    private var _updated_at : String!
    private var _category_url : String!
    
    init(){
        self._category_name = ""
        self._categoryID = 0
        self._status = 0
        self._restaurant_id = 0
        self._created_at = ""
        self._updated_at = ""
        self._category_url = ""
    }
    
    var foodList = [Food]()
    
    var categoryID: Int{
        get{ return  _categoryID }
        set(_categoryID){
           self._categoryID = _categoryID
        }
    }

    var restaurant_id: Int{
        get{ return  _restaurant_id }
        set(_restaurant_id){
            self._restaurant_id = _restaurant_id
        }
    }
    
    var status: Int{
        get{ return  _status }
        set(_status){
            self._status = _status
        }
    }
    
    var created_at: String{
        get{ return  _created_at }
        set(_created_at){
            self._created_at = _created_at
        }
    }
    
    var updated_at: String{
        get{ return  _updated_at }
        set(_updated_at){
            self._updated_at = _updated_at
        }
    }
    
    var category_name: String{
        get{ return  _category_name }
        set(_category_name){
            self._category_name = _category_name
        }
    }
    
    var category_url: String{
        get{ return  _category_url }
        set(_category_url){
            self._category_url = _category_url
        }
    }
    
    var categoryList = [Category]()
    
    func getCategoryDatas(parameters : [String:String], success : @escaping (_ status: Int, _ message: String)-> Void, failure : @escaping (_ message: String)-> Void){
        
        let url = Base_Url + "m-restaurant-details"
        print(parameters)
        print(url)
        
        
        Alamofire.request(url, method: .post, parameters: parameters, headers: nil).responseJSON { (response:DataResponse<Any>) in
            print(response)
            
            switch(response.result) {
            case .success(_):
                if let data = response.result.value{
                    
                    let jsonDatas = JSON(data)
                    for item in jsonDatas["response"]["restaurant_food_categories"].array!{
                        
                        let category = Category()
                        
                        if let categoryID = item["id"].int {
                            category.categoryID = categoryID
                        }
                        
                        if let restaurant_id = item["restaurant_id"].int {
                            category.restaurant_id = restaurant_id
                        }
                        
                        if let status = item["status"].int {
                            category.status = status
                        }
                        
                        if let category_name = item["category_name"].string {
                            category.category_name = category_name
                        }
                        
                        if let category_url = item["category_url"].string {
                            category.category_url = category_url
                        }
                        
                        if let created_at = item["created_at"].string {
                            category.created_at = created_at
                        }
                        
                        if let updated_at = item["updated_at"].string {
                            category.updated_at = updated_at
                        }
                        
                        for indvidualFood in item["foods"].array!{
                            let food = Food()
                        
                            if let foodID = indvidualFood["id"].string{
                               food.foodID = foodID
                            }
                            
                            if let restaurant_id = indvidualFood["restaurant_id"].string{
                                food.restaurant_id = restaurant_id
                            }
                            
                            if let food_category_id = indvidualFood["food_category_id"].string{
                                food.food_category_id = food_category_id
                            }

                            if let food_name = indvidualFood["food_name"].string{
                                food.food_name = food_name
                            }

                            if let food_image_thumb = indvidualFood["food_image_thumb"].string{
                                food.food_image_thumb = food_image_thumb
                            }

                            if let description = indvidualFood["description"].string{
                                food.description = description
                            }
                            
                            if let ingredients = indvidualFood["ingredients"].string{
                                food.ingredients = ingredients
                            }
                            
                            if let nutrition_detail = indvidualFood["nutrition_detail"].string{
                                food.nutrition_detail = nutrition_detail
                            }
                            
                            if let catering = indvidualFood["catering"].string{
                                food.catering = catering
                            }
                            
                            if let full_catering_service = indvidualFood["full_catering_service"].string{
                                food.full_catering_service = full_catering_service
                            }
                            
                            if let delivery_included = indvidualFood["delivery_included"].string{
                                food.delivery_included = delivery_included
                            }
                            
                            if let aditional_fee = indvidualFood["aditional_fee"].string{
                                food.aditional_fee = aditional_fee
                            }
                            
                            if let price = indvidualFood["price"].string{
                                food.price = price
                            }
                            
                            if let tax_fee = indvidualFood["tax_fee"].string{
                                food.tax_fee = tax_fee
                            }
                            
                            if let minimum_order_unit = indvidualFood["minimum_order_unit"].string{
                                food.minimum_order_unit = minimum_order_unit
                            }
                            
                            if let maximum_order_unit = indvidualFood["maximum_order_unit"].string{
                                food.maximum_order_unit = maximum_order_unit
                            }
                            
                            if let minimum_order_notice = indvidualFood["minimum_order_notice"].string{
                                food.minimum_order_notice = minimum_order_notice
                            }
                            
                            if let maximum_service_time = indvidualFood["maximum_service_time"].string{
                                food.maximum_service_time = maximum_service_time
                            }
                            
                            if let preperation_time = indvidualFood["preperation_time"].string{
                                food.preperation_time = preperation_time
                            }
                            
                            if let status = indvidualFood["status"].string{
                                food.status = status
                            }
                            
                            if let created_at = indvidualFood["created_at"].string{
                                food.created_at = created_at
                            }
                            
                            if let updated_at = indvidualFood["updated_at"].string{
                                food.updated_at = updated_at
                            }
                            
                            category.foodList.append(food)
                            
                            
                        }
                        
                        self.categoryList.append(category)
//                        print(self.categoryList[self.categoryList.count - 1].foodList.count)
                    }
                    
                    DispatchQueue.global(qos: .userInitiated).async {
                        success(Success_Code,"Seccussful")
                    }
                    
                    
                }
                break
                
            case .failure(_):
                print(response.result.error ?? "Nothing")
                DispatchQueue.global(qos: .userInitiated).async {
                    failure("Failure")
                }
                break
                
            }
        }
        
    }


}
