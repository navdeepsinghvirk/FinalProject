//
//  Administrator.swift
//  FinalProject
//
//  Created by MacStudent on 2018-02-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


class Adminstrator {
    
    init() {
        self.name = ""
        self.email = ""
    }
    
    private var name:String
    private var email:String
    
    public var adminName : String{
        get {
            return name
        }
        set(newValue) {
            name = newValue
        }
    }
    
    public var adminEmail: String{
        get {
            return email
        }
        set(newValue) {
            email = newValue
        }
    }
    
    
    public func updateCatalog() -> Bool{
        return true
    }
}

extension Adminstrator: IDisplay {
    func displayData() -> String {
        let allData = "Admin Name " + self.adminName + " Admin Email " + self.adminEmail
        
        return allData
    }
}
