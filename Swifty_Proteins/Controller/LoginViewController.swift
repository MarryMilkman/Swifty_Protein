//
//  LoginViewController.swift
//  Swifty_Proteins
//
//  Created by Ivan SELETSKYI on 10/25/18.
//  Copyright © 2018 Ivan SELETSKYI. All rights reserved.
//

import UIKit
import LocalAuthentication

class LoginViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            loginTouch.isHidden = false
            loginButton.isHidden = true
        } else {
            loginButton.isHidden = false
            loginTouch.isHidden = true
        }
    }
    
    @IBOutlet weak var loginBut: UIButton! {
        willSet {
            newValue.layer.cornerRadius = 50
            newValue.clipsToBounds = true
        }
    }
    @IBAction func loginAction(_ sender: Any) {
        autenteficationUser()
    }
    @IBAction func loginButtonAction(_ sender: Any) {
        autenteficationUser()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "seguePopupFromLogin") {
            let vc = segue.destination as? PopupViewController
            vc?.data = sender as! [String]
        }
    }
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginTouch: UIButton!
    
    private func autenteficationUser() {
        
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            loginTouch.isHidden = false
            loginButton.isHidden = true
        } else {
            loginButton.isHidden = false
            loginTouch.isHidden = true
        }
        
        if context.canEvaluatePolicy(.deviceOwnerAuthentication, error: nil) {
            context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: "You need to be authenticated", reply: { (succes, error) in
                if succes {
                    DispatchQueue.main.sync {
                        self.performSegue(withIdentifier: "segueFromLoginToTable", sender: self)
                    }
                }
                else {
                    DispatchQueue.main.sync {
                        let data: [String] = ["Sorry", "Authorization is fail =("]
                        self.performSegue(withIdentifier: "seguePopupFromLogin", sender: data)
                    }
                }
            })
        }
    }

}
