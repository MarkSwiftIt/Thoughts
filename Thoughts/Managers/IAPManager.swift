//
//  IAPManager.swift
//  Thoughts
//
//  Created by Mark Goncharov on 20.02.2023.
//

import Foundation
import Purchases

final class IAPManager {
    static let shared = IAPManager()
    
    private init() {}
    
    func isPremium() -> Bool{
        return false
    }
    
    func subscribe() {
        
    }
    
    func restorePurchases() {
         
    }
}
