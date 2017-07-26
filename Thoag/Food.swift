//
//  Food.swift
//  ThoagiOS
//
//  Created by Parallax on 6/14/17.
//  Copyright © 2017 Parallax. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class Food{

    private var _foodID : String!
    private var _restaurant_id : String!
    private var _food_category_id : String!
    private var _food_name : String!
    private var _food_image : String!
    private var _food_image_thumb : String!
    private var _description : String!
    private var _ingredients : String!
    private var _nutrition_detail : String!
    private var _catering : String!
    private var _full_catering_service : String!
    private var _delivery_included : String!
    private var _aditional_fee : String!
    private var _price : String!
    private var _tax_fee : String!
    private var _minimum_order_unit : String!
    private var _maximum_order_unit : String!
    private var _minimum_order_notice : String!
    private var _maximum_service_time : String!
    private var _preperation_time : String!
    private var _status : String!
    private var _updated_at : String!
    private var _created_at : String!

    init(){
       self._foodID = ""
       self._restaurant_id = ""
       self._food_category_id = ""
       self._food_name = ""
       self._food_image = ""
       self._food_image_thumb = ""
       self._description = ""
       self._ingredients = ""
       self._nutrition_detail = ""
       self._catering = ""
       self._full_catering_service = ""
       self._delivery_included = ""
       self._price = ""
       self._aditional_fee = ""
       self._minimum_order_unit = ""
       self._maximum_order_unit = ""
       self._minimum_order_notice = ""
       self._maximum_service_time = ""
       self._preperation_time = ""
       self._status = ""
       self._updated_at = ""
       self._created_at = ""
    }
    
    var updated_at: String{
        get{
            return _updated_at
        }
        set(_updated_at){
            self._updated_at = _updated_at
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
    
    var foodID: String{
        get{
            return _foodID
        }
        set(_foodID){
            self._foodID = _foodID
        }
    }

    var restaurant_id: String{
        get{
            return _restaurant_id
        }
        set(_restaurant_id){
            self._restaurant_id = _restaurant_id
        }
    }
    
    var food_category_id: String{
        get{
            return _food_category_id
        }
        set(_food_category_id){
            self._food_category_id = _food_category_id
        }
    }
    
    var food_name: String{
        get{
            return _food_name
        }
        set(_food_name){
            self._food_name = _food_name
        }
    }
    
    var food_image: String{
        get{
            return _food_image
        }
        set(_food_image){
            self._food_image = _food_image
        }
    }
    
    var food_image_thumb: String{
        get{
            return _food_image_thumb
        }
        set(_food_image_thumb){
            self._food_image_thumb = _food_image_thumb
        }
    }
    
    var description: String{
        get{
            return _description
        }
        set(_description){
            self._description = _description
        }
    }
    
    var ingredients: String{
        get{
            return _ingredients
        }
        set(_ingredients){
            self._ingredients = _ingredients
        }
    }
    
    var nutrition_detail: String{
        get{
            return _nutrition_detail
        }
        set(_nutrition_detail){
            self._nutrition_detail = _nutrition_detail
        }
    }
    
    var catering: String{
        get{
            return _catering
        }
        set(_catering){
            self._catering = _catering
        }
    }
    
    var full_catering_service: String{
        get{
            return _full_catering_service
        }
        set(_full_catering_service){
            self._full_catering_service = _full_catering_service
        }
    }

    var delivery_included: String{
        get{
            return _delivery_included
        }
        set(_delivery_included){
            self._delivery_included = _delivery_included
        }
    }

    var aditional_fee: String{
        get{
            return _aditional_fee
        }
        set(_aditional_fee){
            self._aditional_fee = _aditional_fee
        }
    }

    var price: String{
        get{
            return _price
        }
        set(_price){
            self._price = _price
        }
    }

    var tax_fee: String{
        get{
            return _tax_fee
        }
        set(_tax_fee){
            self._tax_fee = _tax_fee
        }
    }

    var minimum_order_unit: String{
        get{
            return _minimum_order_unit
        }
        set(_minimum_order_unit){
            self._minimum_order_unit = _minimum_order_unit
        }
    }

    var maximum_order_unit: String{
        get{
            return _maximum_order_unit
        }
        set(_maximum_order_unit){
            self._maximum_order_unit = _maximum_order_unit
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

    var maximum_service_time: String{
        get{
            return _maximum_service_time
        }
        set(_maximum_service_time){
            self._maximum_service_time = _maximum_service_time
        }
    }
    
    var preperation_time: String{
        get{
            return _preperation_time
        }
        set(_preperation_time){
            self._preperation_time = _preperation_time
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
    
    var addonCategoriesArray = [AddonCategories]()
    
    static var instance : Food!
    class func sharedInstance()-> Food{
        self.instance = (self.instance ?? Food())
        return self.instance
    }
    
    
    
    func getFoodAttributes(parameters : [String:String], success : @escaping (_ status: Int, _ message: String)-> Void, failure : @escaping (_ message: String)-> Void){
        
        let url = Base_Url + "m-food-details"
        print(parameters)
        print(url)
        
        
        Alamofire.request(url, method: .post, parameters: parameters, headers: nil).responseJSON { (response:DataResponse<Any>) in
            print(response)
            
            switch(response.result) {
            case .success(_):
                if let data = response.result.value{
                    let jsonDatas = JSON(data)
                    
                    var status = Int()
                    let msg = "Successfully done work"
                    if let _status = jsonDatas["meta"]["status"].int{
                        status = _status
                    }
                    
                    
                    if let aditional_fee = jsonDatas["response"]["food_detail"]["aditional_fee"].string{
                       Food.sharedInstance().aditional_fee = aditional_fee
                    }
                    
                    if let catering = jsonDatas["response"]["food_detail"]["catering"].string{
                        Food.sharedInstance().catering = catering
                    }
                    
                    if let created_at = jsonDatas["response"]["food_detail"]["created_at"].string{
                        Food.sharedInstance().created_at = created_at
                    }
                    
                    if let delivery_included = jsonDatas["response"]["food_detail"]["delivery_included"].string{
                        Food.sharedInstance().delivery_included = delivery_included
                    }
                    
                    if let description = jsonDatas["response"]["food_detail"]["description"].string{
                        Food.sharedInstance().description = description
                    }
                    
                    if let food_category_id = jsonDatas["response"]["food_detail"]["food_category_id"].string{
                        Food.sharedInstance().food_category_id = food_category_id
                    }
                    
                    if let food_image = jsonDatas["response"]["food_detail"]["food_image"].string{
                        Food.sharedInstance().food_image = food_image
                    }
                    
                    if let food_image_thumb = jsonDatas["response"]["food_detail"]["food_image_thumb"].string{
                        Food.sharedInstance().food_image_thumb = food_image_thumb
                    }
                    
                    if let food_name = jsonDatas["response"]["food_detail"]["food_name"].string{
                        Food.sharedInstance().food_name = food_name
                    }
                    
                    if let full_catering_service = jsonDatas["response"]["food_detail"]["full_catering_service"].string{
                        Food.sharedInstance().full_catering_service = full_catering_service
                    }
                    
                    if let id = jsonDatas["response"]["food_detail"]["id"].string{
                        Food.sharedInstance().foodID = id
                    }
                    
                    if let ingredients = jsonDatas["response"]["food_detail"]["ingredients"].string{
                        Food.sharedInstance().ingredients = ingredients
                    }
                    
                    if let maximum_order_unit = jsonDatas["response"]["food_detail"]["maximum_order_unit"].string{
                        Food.sharedInstance().maximum_order_unit = maximum_order_unit
                    }
                    
                    if let maximum_service_time = jsonDatas["response"]["food_detail"]["maximum_service_time"].string{
                        Food.sharedInstance().maximum_service_time = maximum_service_time
                    }
                    
                    if let minimum_order_notice = jsonDatas["response"]["food_detail"]["minimum_order_notice"].string{
                        Food.sharedInstance().minimum_order_notice = minimum_order_notice
                    }
                    
                    if let minimum_order_unit = jsonDatas["response"]["food_detail"]["minimum_order_unit"].string{
                        Food.sharedInstance().minimum_order_unit = minimum_order_unit
                    }
                    
                    if let nutrition_detail = jsonDatas["response"]["food_detail"]["nutrition_detail"].string{
                        Food.sharedInstance().nutrition_detail = nutrition_detail
                    }
                    
                    if let preperation_time = jsonDatas["response"]["food_detail"]["preperation_time"].string{
                        Food.sharedInstance().preperation_time = preperation_time
                    }
                    
                    if let price = jsonDatas["response"]["food_detail"]["price"].string{
                        Food.sharedInstance().price = price
                    }
                    
                    if let restaurant_id = jsonDatas["response"]["food_detail"]["restaurant_id"].string{
                        Food.sharedInstance().restaurant_id = restaurant_id
                    }
                    
                    if let status = jsonDatas["response"]["food_detail"]["status"].string{
                        Food.sharedInstance().status = status
                    }
                    
                    if let tax_fee = jsonDatas["response"]["food_detail"]["tax_fee"].string{
                        Food.sharedInstance().tax_fee = tax_fee
                    }
                    
                    if let updated_at = jsonDatas["response"]["food_detail"]["updated_at"].string{
                        Food.sharedInstance().updated_at = updated_at
                    }
                    
                    Food.sharedInstance().addonCategoriesArray.removeAll()
                    for item in jsonDatas["response"]["food_detail"]["food_addon_categories"].array!{
                        
                        let IndividualAddonCategories = AddonCategories()
                        
                        if let addon_category_id = item["addon_category_id"].string{
                           IndividualAddonCategories.addon_category_id = addon_category_id
                        }
                        
                        if let addon_category_name = item["addon_category_name"].string{
                            IndividualAddonCategories.addon_category_name = addon_category_name
                        }
                        
                        if let created_at = item["created_at"].string{
                            IndividualAddonCategories.created_at = created_at
                        }
                        
                        if let description = item["description"].string{
                            IndividualAddonCategories.description = description
                        }
                        
                        if let food_id = item["food_id"].string{
                            IndividualAddonCategories.food_id = food_id
                        }
                        
                        if let id = item["id"].string{
                            IndividualAddonCategories.id = id
                        }
                        
                        if let number_of_required_item = item["number_of_required_item"].string{
                            IndividualAddonCategories.number_of_required_item = number_of_required_item
                        }
                        
                        if let required = item["required"].string{
                            IndividualAddonCategories.required = required
                        }
                        
                        if let restaurant_id = item["restaurant_id"].string{
                            IndividualAddonCategories.restaurant_id = restaurant_id
                        }
                        
                        if let status = item["status"].string{
                            IndividualAddonCategories.status = status
                        }
                        
                        if let updated_at = item["updated_at"].string{
                            IndividualAddonCategories.updated_at = updated_at
                        }
                        
                        for prd in item["food_addon_items"].array!{
                            
                            let addonItem = AdonItems()
                            if let addon_category_id = prd["addon_category_id"].string{
                               addonItem.addon_category_id = addon_category_id
                            }
                            
                            if let addon_item_id = prd["addon_item_id"].string{
                                addonItem.addon_item_id = addon_item_id
                            }
                            
                            if let addon_item_name = prd["addon_item_name"].string{
                                addonItem.addon_item_name = addon_item_name
                            }
                            
                            if let category_id = prd["category_id"].string{
                                addonItem.category_id = category_id
                            }
                            
                            if let created_at = prd["created_at"].string{
                                addonItem.created_at = created_at
                            }
                            
                            if let description = prd["description"].string{
                                addonItem.description = description
                            }
                            
                            if let id = prd["id"].string{
                                addonItem.id = id
                            }
                            
                            if let price = prd["price"].string{
                                addonItem.price = price
                            }
                            
                            if let status = prd["status"].string{
                                addonItem.status = status
                            }
                            
                            if let updated_at = prd["updated_at"].string{
                                addonItem.updated_at = updated_at
                            }
                            IndividualAddonCategories.addonItemArr.append(addonItem)
                        }
                        Food.sharedInstance().addonCategoriesArray.append(IndividualAddonCategories)
                    }
                    
                    DispatchQueue.global(qos: .userInitiated).async {
                        success(status,msg)
                    }
                }
                break
                
            case .failure(_):
                print(response.result.error ?? "Nothing")
                failure(response.result.error.debugDescription)
                break
                
            }
        }
        
    }

    

}
