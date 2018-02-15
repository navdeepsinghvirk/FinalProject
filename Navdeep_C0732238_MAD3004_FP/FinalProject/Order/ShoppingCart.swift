//
//  ShoppingCart.swift
//  FinalProject
//
//  Created by MacStudent on 2018-02-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation



class ShopingCart{
    
    init() {       
        self.cID = 0
        self.pID = 0
        self.qnt = 0
        self.addedDate = ""
    }
    
    private var cID:Int
    private var pID:Int
    private var qnt:Int
    private var addedDate:String
    
    
    public var cartID: Int{
        get {
            return cID
        }
        set(newValue) {
            cID = newValue
        }
    }
    
    public var productID: Int{
        get {
            return pID
        }
        set(newValue) {
            pID = newValue
        }
    }
    
    public var quantity: Int{
        get {
            return qnt
        }
        set(newValue) {
            qnt = newValue
        }
    }
    
    public var dateAdded : String{
        get {
            return addedDate
        }
        set(newValue) {
            addedDate = newValue
        }
    }
    
    public func addCartItem(order:Order){
        print("Please input")
        print("Cart ID")
        cartID = Int(readLine()!)!
        
        print("ProductID")
        productID = Int(readLine()!)!
        
        print("quantity")
        quantity = Int(readLine()!)!
        
        print("Date Added")
        dateAdded = readLine()!
    }
    
    public func updateQuantity(){
        print("Update quantity")
        quantity = Int(readLine()!)!
    }
    
    public func viewCartDetails(){
        print("Here is your Cart detail - " + displayData())
    }
}

extension ShopingCart: IDisplay {
    func displayData() -> String {
        let allData = "cart ID " + String(self.cID) + " productID " + String(self.pID) + " quantity " + String(self.qnt) + " dateAdded  " + self.addedDate
        return allData
    }
}
