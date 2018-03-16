//
//  Score.swift
//  20171027
//
//  Created by Student on 2017/10/27.
//  Copyright © 2017年 TNFSH104. All rights reserved.
//  Model

import Foundation
class AccountAuth{
    var Account : String
    var Password : String

    init(AccountFO : String,PasswordFO: String) {
        self.Account=AccountFO
        self.Password=PasswordFO
    }
    
    var UserAuth : Bool {
        switch Account {
        case "user1":
            switch Password {
            case "password1":
                return true
            default :
                return false
            }
        case "user2":
            switch Password {
            case "password2":
                return true
            default :
                return false
            }
        case "user3":
            switch Password {
            case "password3":
                return true
            default :
                return false
            }
        case "user4":
            switch Password {
            case "password4":
                return true
            default :
                return false
            }
        case "user5":
            switch Password {
            case "password5":
                return true
            default :
                return false
            }
        default:
            return false
        }
    }
    
    var UserName : String {
        switch Account {
        case "user1":
            switch Password {
            case "password1":
                return "王小明"
            default :
                return "PWfalse"
            }
        case "user2":
            switch Password {
            case "password2":
                return "王大明"
            default :
                return "PWfalse"
            }
        case "user3":
            switch Password {
            case "password3":
                return "張小明"
            default :
                return "PWfalse"
            }
        case "user4":
            switch Password {
            case "password4":
                return "張大明"
            default :
                return "PWfalse"
            }
        case "user5":
            switch Password {
            case "password5":
                return "王小美"
            default :
                return "PWfalse"
            }
        default:
            return "false"
        }
    }
    
    var AdminAuth : Bool {
        switch Account {
        case "Administrator" :
            switch Password {
            case "adminpassword" :
                return true
            default :
                return false
            }
            
        default:
            return false
        }
    }
    
    
}

