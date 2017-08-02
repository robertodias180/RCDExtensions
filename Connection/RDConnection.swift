//
//  TestConnection.swift
//  True&False
//
//  Created by Roberto Dias on 08/05/2017.
//  Copyright © 2017 Walkme. All rights reserved.
//

import Foundation
import Reachability

class RDConnection {
    
    static var isOn: Bool {
       return Reachability.forInternetConnection().currentReachabilityStatus() != .NotReachable
    }
 
    static var isWiFi: Bool {
        return Reachability.forInternetConnection().currentReachabilityStatus() != .ReachableViaWiFi
    }
    
    static var isWWan: Bool {
        return Reachability.forInternetConnection().currentReachabilityStatus() != .ReachableViaWWAN
    }

}
