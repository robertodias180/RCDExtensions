//
//  TestConnection.swift
//

import Foundation
import Reachability

public class RCDConnection {
    
    public static var isOn: Bool {
       return Reachability.forInternetConnection().currentReachabilityStatus() != .NotReachable
    }
 
    public static var isWiFi: Bool {
        return Reachability.forInternetConnection().currentReachabilityStatus() == .ReachableViaWiFi
    }
    
    public static var isWWan: Bool {
        return Reachability.forInternetConnection().currentReachabilityStatus() == .ReachableViaWWAN
    }

}
