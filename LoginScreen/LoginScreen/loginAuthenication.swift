//
//  loginAuthenication.swift
//  LoginScreen
//
//  Created by KEA Vanchanraya on 1/4/19.
//  Copyright © 2019 Soeng Saravit. All rights reserved.
//

import Foundation
import LocalAuthentication

class BiometricIDAuth {
    
    let context = LAContext()
    let loginReason = "This app uses Touch ID."
    
    func canEvaluatePolicy() -> Bool {
        return context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
    }
    
    func authenicateUser(sucess completion: @escaping ()->Void){
        guard canEvaluatePolicy() else {
            return
        }
        context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: loginReason) { (success, error) in
            if success{
                DispatchQueue.main.async {
                    completion()
                }
            }else{
                //TODO: LAError case
            }
        }
    }
    
    func biometricType() -> BiometricType {
        let _ = context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil) //the same as below
        //context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
        switch context.biometryType {
            case .none:
                return .none
            case .touchID:
                return .touchID
            case .faceID:
                return .faceID
            default:
                return .none
        }
        
    }
    
}

enum BiometricType {
    case none
    case touchID
    case faceID
}
