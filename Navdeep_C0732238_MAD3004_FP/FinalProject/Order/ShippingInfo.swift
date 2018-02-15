//
//  ShippingInfo.swift
//  FinalProject
//
//  Created by MacStudent on 2018-02-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation



class ShippingInfo{
    
    init() {       
        self.ID = 0
        self.cost = 0
        self.regionID = 0
        self.type = ""
    }
    
    private var ID:Int
    private var type:String
    private var cost:Int
    private var regionID:Int
    
    
    public var shippingID: Int{
        get {
            return ID
        }
        set(newValue) {
            ID = newValue
        }
    }
    
    public var shippingType: String{
        get {
            return type
        }
        set(newValue) {
            type = newValue
        }
    }
    
    public var shippingCost: Int{
        get {
            return cost
        }
        set(newValue) {
            cost = newValue
        }
    }
    
    public var shippingRegionId : Int{
        get {
            return regionID
        }
        set(newValue) {
            regionID = newValue
        }
    }
    
    public func updateShippingInfo(){
        print("Shipping ID")
        shippingID = Int(readLine()!)!
        
        print("shipping Cost")
        shippingCost = Int(readLine()!)!
        
        print("Shipping Type")
        shippingType = readLine()!
        
        print("Shipping Region Id")
        shippingRegionId = Int(readLine()!)!
        
        print("Your shipping info save successfully")
    }
    
}

extension ShippingInfo: IDisplay {
    func displayData() -> String {
        let allData = "shippingID " + String(self.shippingID) + " shippingType " + self.shippingType + " shippingCost " + String(self.shippingCost) + " shippingRegionId  " + String(self.shippingRegionId)
        return allData
    }
}
