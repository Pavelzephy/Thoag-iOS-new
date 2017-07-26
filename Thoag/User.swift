//
//  User.swift
//  ThoagiOS
//
//  Created by Parallax on 6/17/17.
//  Copyright © 2017 Parallax. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class User{

    private var _user_id : String!
    private var _first_name : String!
    private var _last_name : String!
    private var _email : String!
    private var _contact_number : String!
    private var _user_name : String!
    private var _password : String!
    private var _gender : String!
    private var _date_of_birth : String!
    private var _location : String!
    private var _latitude : String!
    private var _longitude : String!
    private var _person_image : String!
    private var _person_image_thumb : String!
    private var _avater_round : String!
    private var _subscription_detail_id : String!
    private var _subscription_type : String!
    private var _user_type : String!
    private var _reset_password_status : String!
    private var _user_status : String!
    private var _session_token : String!
    private var _created_at : String!
    private var _updated_at : String!
    
    
    init(){
        self._user_id                  = ""
        self._first_name               = ""
        self._last_name                = ""
        self._email                    = ""
        self._contact_number           = ""
        self._user_name                = ""
        self._password                 = ""
        self._gender                   = ""
        self._date_of_birth            = ""
        self._location                 = ""
        self._latitude                 = ""
        self._longitude                = ""
        self._person_image             = ""
        self._person_image_thumb       = ""
        self._avater_round             = ""
        self._subscription_detail_id   = ""
        self._subscription_type        = ""
        self._user_type                = ""
        self._reset_password_status    = ""
        self._user_status              = ""
        self._session_token            = ""
        self._created_at               = ""
        self._updated_at               = ""
    }
    
    var updated_at : String{
        get{ return _created_at}
        set(_created_at){ self._created_at = _created_at}
    }
    
    var created_at : String{
        get{ return _created_at}
        set(_created_at){ self._created_at = _created_at}
    }
    
    var user_id : String{
        get{ return _user_id}
        set(_user_id){ self._user_id = _user_id}
    }
    
    var first_name : String{
        get{ return _first_name}
        set(_first_name){ self._first_name = _first_name}
    }
    
    var last_name : String{
        get{ return _last_name}
        set(_last_name){ self._last_name = _last_name}
    }
    
    var email : String{
        get{ return _email}
        set(_email){ self._email = _email}
    }
    
    var contact_number : String{
        get{ return _contact_number}
        set(_contact_number){ self._contact_number = _contact_number}
    }

    var user_name : String{
        get{ return _user_name}
        set(_user_name){ self._user_name = _user_name}
    }
    
    var password : String{
        get{ return _password}
        set(_password){ self._password = _password}
    }
    
    var gender : String{
        get{ return _gender}
        set(_gender){ self._gender = _gender}
    }
    
    var date_of_birth : String{
        get{ return _date_of_birth}
        set(_date_of_birth){ self._date_of_birth = _date_of_birth}
    }
    
    var location : String{
        get{ return _location}
        set(_location){ self._location = _location}
    }
    
    var latitude : String{
        get{ return _latitude}
        set(_latitude){ self._latitude = _latitude}
    }
    
    var longitude : String{
        get{ return _longitude}
        set(_longitude){ self._longitude = _longitude}
    }
    
    var person_image : String{
        get{ return _person_image}
        set(_person_image){ self._person_image = _person_image}
    }
    
    var person_image_thumb : String{
        get{ return _person_image_thumb}
        set(_person_image_thumb){ self._person_image_thumb = _person_image_thumb}
    }
    
    var avater_round : String{
        get{ return _avater_round}
        set(_avater_round){ self._avater_round = _avater_round}
    }
    
    var subscription_detail_id : String{
        get{ return _subscription_detail_id}
        set(_subscription_detail_id){ self._subscription_detail_id = _subscription_detail_id}
    }
    
    var subscription_type : String{
        get{ return _subscription_type}
        set(_subscription_type){ self._subscription_type = _subscription_type}
    }
    
    var user_type : String{
        get{ return _user_type}
        set(_user_type){ self._user_type = _user_type}
    }
    
    var reset_password_status : String{
        get{ return _reset_password_status}
        set(_reset_password_status){ self._reset_password_status = _reset_password_status}
    }
    
    var user_status : String{
        get{ return _user_status}
        set(_user_status){ self._user_status = _user_status}
    }
    
    var session_token : String{
        get{ return _session_token}
        set(_session_token){ self._session_token = _session_token}
    }
    
    var addressList = [Address]()
    var cardList    = [Card]()
    
    static var instance : User!
    class func sharedInstance()-> User{
       self.instance = (self.instance ?? User())
       return self.instance
    }
    
    func signInApiAction(parameters : [String:String], success : @escaping (_ status: Int, _ message: String)-> Void, failure : @escaping (_ message: String)-> Void){
    
        let url = Base_Url + "m-sign-in"
        print(parameters)
        print(url)
        
        
        Alamofire.request(url, method: .post, parameters: parameters, headers: nil).responseJSON { (response:DataResponse<Any>) in
            print(response)
            
            switch(response.result) {
            case .success(_):
                if let data = response.result.value{
                    
                    let jsonDatas = JSON(data)
                    
                    var status = Int()
                    let msg = "Successfully Sign In"
                    
                    if let _status = jsonDatas["meta"]["status"].int{
                        status = _status
                    }
                    
                    if let user_id = jsonDatas["response"]["user_detail"]["id"].string{
                       User.sharedInstance().user_id = user_id
                    }

                    if let first_name = jsonDatas["response"]["user_detail"]["first_name"].string{
                        User.sharedInstance().first_name = first_name
                    }
                   
                    if let last_name = jsonDatas["response"]["user_detail"]["last_name"].string{
                        User.sharedInstance().last_name = last_name
                    }

                    if let email = jsonDatas["response"]["user_detail"]["email"].string{
                        User.sharedInstance().email = email
                    }
                    
                    if let contact_number = jsonDatas["response"]["user_detail"]["contact_number"].string{
                        User.sharedInstance().contact_number = contact_number
                    }
                    
                    if let user_name = jsonDatas["response"]["user_detail"]["user_name"].string{
                        User.sharedInstance().user_name = user_name
                    }
                    
                    if let password = jsonDatas["response"]["user_detail"]["password"].string{
                        User.sharedInstance().password = password
                    }
                    
                    if let gender = jsonDatas["response"]["user_detail"]["gender"].string{
                        User.sharedInstance().gender = gender
                    }
                    
                    if let date_of_birth = jsonDatas["response"]["user_detail"]["date_of_birth"].string{
                        User.sharedInstance().date_of_birth = date_of_birth
                    }
                    
                    if let location = jsonDatas["response"]["user_detail"]["location"].string{
                        User.sharedInstance().location = location
                    }
                    
                    if let latitude = jsonDatas["response"]["user_detail"]["latitude"].string{
                        User.sharedInstance().latitude = latitude
                    }
                    
                    if let longitude = jsonDatas["response"]["user_detail"]["longitude"].string{
                        User.sharedInstance().longitude = longitude
                    }
                    
                    if let person_image = jsonDatas["response"]["user_detail"]["person_image"].string{
                        User.sharedInstance().person_image = person_image
                    }
                    
                    if let person_image_thumb = jsonDatas["response"]["user_detail"]["person_image_thumb"].string{
                        User.sharedInstance().person_image_thumb = person_image_thumb
                    }
                    
                    if let avater_round = jsonDatas["response"]["user_detail"]["avater_round"].string{
                        User.sharedInstance().avater_round = avater_round
                    }
                    
                    if let subscription_detail_id = jsonDatas["response"]["user_detail"]["subscription_detail_id"].string{
                        User.sharedInstance().subscription_detail_id = subscription_detail_id
                    }
                    
                    if let subscription_type = jsonDatas["response"]["user_detail"]["subscription_type"].string{
                        User.sharedInstance().subscription_detail_id = subscription_type
                    }
                    
                    if let user_type = jsonDatas["response"]["user_detail"]["user_type"].string{
                        User.sharedInstance().user_type = user_type
                    }
                    
                    if let reset_password_status = jsonDatas["response"]["user_detail"]["reset_password_status"].string{
                        User.sharedInstance().reset_password_status = reset_password_status
                    }
                    
                    if let user_status = jsonDatas["response"]["user_detail"]["user_status"].string{
                        User.sharedInstance().user_status = user_status
                    }
                    
                    if let session_token = jsonDatas["response"]["session_token"].string{
                        User.sharedInstance().session_token = session_token
                    }
                    
                    User.sharedInstance().addressList.removeAll()
                    if (jsonDatas["response"]["address"].array?.count)! > 0{
                        for item in jsonDatas["response"]["address"].array!{
                            
                            let address = Address()
                            
                            if let addressName = item["address"].string{
                                address.address = addressName
                            }
                            
                            if let is_selected = item["is_selected"].string{
                                address.isSelected = is_selected
                            }
                            
                            if let city_id = item["city_id"].string{
                                address.city_id = city_id
                            }
                            
                            if let created_at = item["created_at"].string{
                                address.created_at = created_at
                            }
                            
                            if let district_id = item["district_id"].string{
                                address.district_id = district_id
                            }
                            
                            if let id = item["id"].string{
                                address.id = id
                            }
                            
                            if let latitude = item["latitude"].string{
                                address.latitude = latitude
                            }
                            
                            if let location_for = item["location_for"].string{
                                address.location_for = location_for
                            }
                            
                            if let location_type = item["location_type"].string{
                                address.location_type = location_type
                            }
                            
                            
                            if let updated_at = item["updated_at"].string{
                                address.updated_at = updated_at
                            }
                            
                            print(address.address)
                            if let longitude = item["longitude"].string{
                                address.longitude = longitude
                            }
                            print(address.address)
                            
                            
                            
                            if let status = item["status"].string{
                                address.status = status
                            }
                            print(address.address)
                            
                            
                            User.sharedInstance().addressList.append(address)
                            
                            print("\(User.sharedInstance().addressList[User.sharedInstance().addressList.count - 1].address)")
                            
                        }
                    }
                    
                    
                    
                    
                    User.sharedInstance().cardList.removeAll()
                    if (jsonDatas["response"]["payment_methods"].array?.count)! > 0{
                        for item in jsonDatas["response"]["payment_methods"].array!{
                            let card = Card()
                            
                            if let created_at = item["created_at"].string{
                                card.created_at = created_at
                            }
                            
                            if let customer_id = item["customer_id"].string{
                                card.customer_id = customer_id
                            }
                            
                            if let payment_gateway = item["payment_gateway"].string{
                                card.payment_gateway = payment_gateway
                            }
                            
                            if let payment_method_id = item["payment_method_id"].string{
                                card.payment_method_id = payment_method_id
                            }
                            
                            if let payment_method_status = item["payment_method_status"].string{
                                card.payment_method_status = payment_method_status
                            }
                            
                            if let updated_at = item["updated_at"].string{
                                card.updated_at = updated_at
                            }
                            
                            if let user_id = item["user_id"].string{
                                card.user_id = user_id
                            }
                            
                            if let last_four_digit = item["last_four_digit"].string{
                                card.last4Digit = last_four_digit
                            }
                            
                            User.sharedInstance().cardList.append(card)
                        }
                    }
                    
                    DispatchQueue.global(qos: .userInitiated).async {
                        success(status,msg)
                    }
                    
                    
                }
                break
                
            case .failure(_):
                print(response.result.error ?? "Nothing")
                failure((response.result.error?.localizedDescription)!)
                break
                
            }
        }
    
    }
    
    
    func signUpApiAction(parameters : [String:String], success : @escaping (_ status: Int, _ message: String)-> Void, failure : @escaping (_ message: String)-> Void){
        
        let url = Base_Url + "m-sign-up"
        print(parameters)
        print(url)
        
        
        Alamofire.request(url, method: .post, parameters: parameters, headers: nil).responseJSON { (response:DataResponse<Any>) in
            print(response)
            
            switch(response.result) {
            case .success(_):
                if let data = response.result.value{
                    
                    let jsonDatas = JSON(data)
                    
                    User.sharedInstance().addressList.removeAll()
                    User.sharedInstance().cardList.removeAll()
                    
                    if let user_id = jsonDatas["response"]["user_detail"]["id"].string{
                        User.sharedInstance().user_id = user_id
                    }
                    
                    if let first_name = jsonDatas["response"]["user_detail"]["first_name"].string{
                        User.sharedInstance().first_name = first_name
                    }
                    
                    if let last_name = jsonDatas["response"]["user_detail"]["last_name"].string{
                        User.sharedInstance().last_name = last_name
                    }
                    
                    if let email = jsonDatas["response"]["user_info"]["email"].string{
                        User.sharedInstance().email = email
                    }
                    
                    if let contact_number = jsonDatas["response"]["user_info"]["contact_number"].string{
                        User.sharedInstance().contact_number = contact_number
                    }
                    
                    if let updated_at = jsonDatas["response"]["user_info"]["updated_at"].string{
                        User.sharedInstance().updated_at = updated_at
                    }
                    
                    if let created_at = jsonDatas["response"]["user_info"]["created_at"].string{
                        User.sharedInstance().created_at = created_at
                    }
                    
                    if let user_name = jsonDatas["response"]["user_info"]["user_name"].string{
                        User.sharedInstance().user_name = user_name
                    }
                    
                    if let password = jsonDatas["response"]["user_info"]["password"].string{
                        User.sharedInstance().password = password
                    }
                    
                    if let gender = jsonDatas["response"]["user_info"]["gender"].string{
                        User.sharedInstance().gender = gender
                    }
                    
                    if let date_of_birth = jsonDatas["response"]["user_info"]["date_of_birth"].string{
                        User.sharedInstance().date_of_birth = date_of_birth
                    }
                    
                    if let location = jsonDatas["response"]["user_info"]["location"].string{
                        User.sharedInstance().location = location
                    }
                    
                    if let latitude = jsonDatas["response"]["user_info"]["latitude"].string{
                        User.sharedInstance().latitude = latitude
                    }
                    
                    if let longitude = jsonDatas["response"]["user_info"]["longitude"].string{
                        User.sharedInstance().longitude = longitude
                    }
                    
                    if let person_image = jsonDatas["response"]["user_info"]["person_image"].string{
                        User.sharedInstance().person_image = person_image
                    }
                    
                    if let person_image_thumb = jsonDatas["response"]["user_info"]["person_image_thumb"].string{
                        User.sharedInstance().person_image_thumb = person_image_thumb
                    }
                    
                    if let avater_round = jsonDatas["response"]["user_info"]["avater_round"].string{
                        User.sharedInstance().avater_round = avater_round
                    }
                    
                    if let subscription_detail_id = jsonDatas["response"]["user_info"]["subscription_detail_id"].string{
                        User.sharedInstance().subscription_detail_id = subscription_detail_id
                    }
                    
                    if let subscription_type = jsonDatas["response"]["user_info"]["subscription_type"].string{
                        User.sharedInstance().subscription_detail_id = subscription_type
                    }
                    
                    if let user_type = jsonDatas["response"]["user_info"]["user_type"].string{
                        User.sharedInstance().user_type = user_type
                    }
                    
                    if let reset_password_status = jsonDatas["response"]["user_info"]["reset_password_status"].string{
                        User.sharedInstance().reset_password_status = reset_password_status
                    }
                    
                    if let user_status = jsonDatas["response"]["user_info"]["user_status"].string{
                        User.sharedInstance().user_status = user_status
                    }
                    
                    if let session_token = jsonDatas["response"]["session_token"].string{
                        User.sharedInstance().session_token = session_token
                    }
                    
                    var status = Int()
                    var msg = "Successfully Registration"
                    if let _status = jsonDatas["meta"]["status"].int{
                        status = _status
                    }
                    if let message = jsonDatas["response"]["message"].string{
                        msg = message
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
    
    func signOutApiAction(parameters : [String:String], success : @escaping (_ status: Int, _ message: String)-> Void, failure : @escaping (_ message: String)-> Void){
        
        let url = Base_Url + "m-sign-out"
        print(parameters)
        print(url)
        
        
        Alamofire.request(url, method: .post, parameters: parameters, headers: nil).responseJSON { (response:DataResponse<Any>) in
            print(response)
            
            switch(response.result) {
            case .success(_):
                if let data = response.result.value{
                    
                    let jsonDatas = JSON(data)
                    
                    var status = Int()
                    var msg = ""
                    
                    if let _status = jsonDatas["meta"]["status"].int{
                        status = _status
                    }
                    if let success = jsonDatas["response"]["success"].string{
                        msg = success
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
