//
//  main.swift
//  FinalProject
//
//  Created by MacStudent on 2018-02-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

let customer = Customer()
print("Please input 1 or login and 2 for register and 3 for update profile of customer")
let res = readLine()!
if res == "1" {
    customer.login()
} else if res == "2"{
    customer.register()
} else if res == "3"{
    customer.updateProfile()
}

print("Please input 1 or order and 2 exit")
let resOrder = readLine()!
if resOrder == "1" {
    let orderDetail1 = OrderDetail()
    let orderDetail2 = OrderDetail()
    let orderDetail3 = OrderDetail()
    
    orderDetail1.createOrder(name: "iPhone", cost: 360)
    orderDetail2.createOrder(name: "Cycle", cost: 160)
    orderDetail3.createOrder(name: "TV", cost: 250)
    
    print("Please Choose order from below")
    print("1. Product name = " + orderDetail1.productName + " Price = "  + String(orderDetail1.unitCost))
    print("2. Product name = " + orderDetail2.productName + " Price = "  + String(orderDetail2.unitCost))
    print("3. Product name = " + orderDetail3.productName + " Price = "  + String(orderDetail3.unitCost))
    
    var orderDetail:OrderDetail?
    
    let resOrder = readLine()!
    if resOrder == "1" {
        orderDetail = orderDetail1
    } else if resOrder == "2"{
        orderDetail = orderDetail2
    } else if resOrder == "3"{
        orderDetail = orderDetail3
    }
    
    orderDetail!.calcPrice()
    

    let shippingInfo = ShippingInfo()
    shippingInfo.updateShippingInfo()
    
    let order = Order()
    order.placeOrder(customer:customer,orderDetail:orderDetail!,shippingInfo:shippingInfo)
    
    let shopingCart = ShopingCart()
    shopingCart.addCartItem(order:order)
    shopingCart.viewCartDetails()
    
}




