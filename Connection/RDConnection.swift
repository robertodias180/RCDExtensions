//
//  TestConnection.swift
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
