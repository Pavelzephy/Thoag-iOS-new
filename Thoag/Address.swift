//
//  Address.swift
//  ThoagiOS
//
//  Created by Parallax on 6/17/17.
//  Copyright © 2017 Parallax. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Address{
    private var _address        : String!
    private var _contact_person : String!
    private var _contact_number : String!
    private var _email_address  : String!
    private var _created_at     : String!
    private var _updated_at     : String!
    
    private var _id             : String!
    private var _latitude       : String!
    private var _longitude      : String!
    private var _status         : String!
    private var _city_id        : String!
    private var _district_id    : String!
    private var _location_for   : String!
    private var _location_type  : String!
    
    private var _isSelected     : String!
    
    
    init(){
       self._address        = ""
       self._created_at     = ""
       self._updated_at     = ""
       self._contact_number = ""
       self._email_address  = ""
       self._contact_person = ""
        
       self._id             = ""
       self._latitude       = ""
       self._longitude      = ""
       self._status         = ""
       self._city_id        = ""
       self._district_id    = ""
       self._location_for   = ""
       self._location_type  = ""
        
       self._isSelected     = "0"
    }
    
    var isSelected: String{
        get{return _isSelected}
        set(_isSelected){ self._isSelected = _isSelected}
    }
    
    var id: String{
        get{return _id}
        set(_id){ self._id = _id}
    }
    
    var latitude: String{
        get{return _latitude}
        set(_latitude){ self._latitude = _latitude}
    }
    
    var longitude: String{
        get{return _longitude}
        set(_longitude){ self._longitude = _longitude}
    }
    
    var status: String{
        get{return _status}
        set(_status){ self._status = _status}
    }
    
    var city_id: String{
        get{return _city_id}
        set(_city_id){ self._city_id = _city_id}
    }
    
    var district_id: String{
        get{return _district_id}
        set(_district_id){ self._district_id = _district_id}
    }
    
    var location_for: String{
        get{return _location_for}
        set(_location_for){ self._location_for = _location_for}
    }
    
    var location_type: String{
        get{return _location_type}
        set(_location_type){ self._location_type = _location_type}
    }
    
    var address: String{
        get{return _address}
        set(_address){ self._address = _address}
    }
    
    var contact_person: String{
        get{return _contact_person}
        set(_contact_person){ self._contact_person = _contact_person}
    }
    
    var contact_number: String{
        get{return _contact_number}
        set(_contact_number){ self._contact_number = _contact_number}
    }
    
    var email_address: String{
        get{return _email_address}
        set(_email_address){ self._email_address = _email_address}
    }
    
    var created_at: String{
        get{return _created_at}
        set(_created_at){ self._created_at = _created_at}
    }
    
    var updated_at: String{
        get{return _updated_at}
        set(_updated_at){ self._updated_at = _updated_at}
    }

    func getAddressList(parameters : [String:String], success : @escaping (_ status: Int, _ message: String)-> Void, failure : @escaping (_ message: String)-> Void){
        
        let url = Base_Url + "m-delivery-address-list"
        print(parameters)
        print(url)
        
        
        Alamofire.request(url, method: .post, parameters: parameters, headers: nil).responseJSON { (response:DataResponse<Any>) in
            print(response)
            
            switch(response.result) {
            case .success(_):
                if let data = response.result.value{
                    
                    let jsonDatas = JSON(data)
                    
                    for item in jsonDatas["response"]["delivery_addresses"].array!{
                        let IndividualAddress = Address()
                        if let address = item["address"].string{
                            IndividualAddress.address = address
                        }
                        if let contact_person = item["contact_person"].string{
                            IndividualAddress.contact_person = contact_person
                        }
                        if let contact_number = item["contact_number"].string{
                            IndividualAddress.contact_number = contact_number
                        }
                        if let email_address = item["email_address"].string{
                            IndividualAddress.email_address = email_address
                        }
                        if let created_at = item["created_at"].string{
                            IndividualAddress.created_at = created_at
                        }
                        if let updated_at = item["updated_at"].string{
                            IndividualAddress.updated_at = updated_at
                        }
                        User.sharedInstance().addressList.append(IndividualAddress)
                    }
                    
                    
                    DispatchQueue.global(qos: .userInitiated).async {
                        success(200,"Seccussful")
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
