//
//  TestClass.swift
//  TestFramework
//
//  Created by Prateek Kumar on 23/05/18.
//  Copyright © 2018 Prateek Kumar. All rights reserved.
//

import UIKit
import FacebookLogin

open class TestClass: NSObject {
    static let shared = TestClass()
    func foo() {}

    public func facebookLogin() {
        let loginManager = LoginManager()
        loginManager.logOut()
        loginManager.logIn(readPermissions: [.publicProfile, .email], viewController: nil) { (loginResult) in
            switch loginResult {
            case .failed(let error):
                print(error)
            case .cancelled:
                print("user cancelled the login")
            case .success(_, _, let accessToken): // (let grantedPermissions, let declinedPermissions, let accessToken)
                print("Logged in with FB ID: \(String(describing: accessToken.userId))")
                //self?.getFBAccountDetails()
            }
        }
    }
}
