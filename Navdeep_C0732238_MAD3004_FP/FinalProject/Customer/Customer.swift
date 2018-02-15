//
//  Customer.swift
//  FinalProject
//
//  Created by MacStudent on 2018-02-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


class Customer{
    
    init() {
        self.name = ""
        self.address = ""
        self.email = ""
        self.creditCardInfo = ""
        self.ShipingAddress = ""
    }
    
    private var name:String
    private var address:String
    private var email:String
    private var creditCardInfo:String
    private var ShipingAddress:String
    
    public var customerName: String{
        get {
            return name
        }
        set(newValue) {
            name = newValue
        }
    }
    
    public var customerAddress: String{
        get {
            return address
        }
        set(newValue) {
            address = newValue
        }
    }
    
    public var customerEmail: String{
        get {
            return email
        }
        set(newValue) {
            email = newValue
        }
    }
    
    public var customerCreditCardInfo: String{
        get {
            return creditCardInfo
        }
        set(newValue) {
            creditCardInfo = newValue
        }
    }
    
    public var customerShipingAddress: String{
        get {
            return ShipingAddress
        }
        set(newValue) {
            ShipingAddress = newValue
        }
    }
    
    public func login(){
        
        let user = User()
        print("Please input you User id and password,First User id")
        user.userID = readLine()!
        print("Password")
        user.password = readLine()!
        
        if user.varifyLogin(){
            
            print(user.displayData())
        } else {
            print("User id or password is incorrect, Please try again!")
        }
    }
    
    public func register(){
        print("Please input Fields for registration!")
        addEditInfo()
    }
    
    public func updateProfile(){
        print("Please input Fields for udpate profile!")
        addEditInfo()
    }
    
    private func addEditInfo(){
        
        print("First name")
        name = readLine()!
        
        print("address")
        address = readLine()!
        
        print("email")
        email = readLine()!
        
        print("address")
        address = readLine()!
        
        print("Credit Card Info")
        creditCardInfo = readLine()!
        
        print("Shiping Address")
        ShipingAddress = readLine()!
        
        print("Here is your data - " + displayData())
    }
}

extension Customer: IDisplay {
    func displayData() -> String {
        let allData = "name " + self.name + " address " + self.address + " email " + self.email + " creditCardInfo " + self.creditCardInfo + "  " + self.ShipingAddress
        
        return allData
    }
}
