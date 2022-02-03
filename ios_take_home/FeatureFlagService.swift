//
//  FeatureFlagService.swift
//  ios_take_home
//
//  Created by Deepak Kumar on 2/2/22.
//

import Foundation

class FeatureFlagService {
    
    var username: String
    
    init(username: String) {
        self.username = username
    }
    
    private var nickname: String = ""
    
    func getCustomizedNickname() -> String {
        var nickname = ""
        switch username {
        case "wsmith1":
            nickname = "Fresh Prince"
        case "mAndM":
            nickname = "Slim Shady"
        default:
            nickname = "Nickname not configured"
        }
        return nickname
    }
    
}
