//
//  Order.swift
//  FinalProject
//
//  Created by MacStudent on 2018-02-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


class Order{
    
    init() {
        self.ID = ""
        self.created = ""
        self.shipped = ""
        self.cname = ""
        self.cID = ""
        self.orderStatus = ""
        self.sID = ""
    }
    
    private var ID:String
    private var created:String
    private var shipped:String
    private var cname:String
    private var cID:String
    private var orderStatus:String
    private var sID:String
    
    public var orderID: String{
        get {
            return ID
        }
        set(newValue) {
            ID = newValue
        }
    }
    
    public var dateCreated: String{
        get {
            return created
        }
        set(newValue) {
            created = newValue
        }
    }
    
    public var dateShipped: String{
        get {
            return shipped
        }
        set(newValue) {
            shipped = newValue
        }
    }
    
    public var customerName: String{
        get {
            return cname
        }
        set(newValue) {
            cname = newValue
        }
    }
    
    public var customerID: String{
        get {
            return cID
        }
        set(newValue) {
            cID = newValue
        }
    }
    
    public var status: String{
        get {
            return orderStatus
        }
        set(newValue) {
            orderStatus = newValue
        }
    }
    
    public var shippingID: String{
        get {
            return sID
        }
        set(newValue) {
            sID = newValue
        }
    }
    
    public func placeOrder(customer:Customer, orderDetail:OrderDetail,shippingInfo:ShippingInfo){
        ID = String(orderDetail.orderID)
        customerName = customer.customerName
        shippingID = String(shippingInfo.shippingID)
        
        print("Date Created ")
        created = readLine()!
        
        print("Add Status")
        status = readLine()!
        
        print("Your order placed successfully")
    }
}

extension Order: IDisplay {
    func displayData() -> String {
        let allData = "Order ID " + self.ID + " Date Created " + self.created + " Date Shipped " + self.shipped + " Customer Name " + self.customerName + " Customer ID " + self.customerID + " status " + self.status + " Shipping ID " + self.shippingID
        return allData
    }
}
