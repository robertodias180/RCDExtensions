//
//  BundleVersion.swift
//  Trivial Pol
//
//  Created by Roberto Dias on 22/02/2017.
//  Copyright © 2017 WalkMe. All rights reserved.
//

import Foundation

extension Bundle {
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
}
