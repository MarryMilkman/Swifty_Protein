//
//  Ligands.swift
//  Swifty_Proteins
//
//  Created by Serhii PERKHUN on 10/27/18.
//  Copyright © 2018 Serhii PERKHUN. All rights reserved.
//

import UIKit

struct Ligands {
    static var ligands: [String] = []
    static var LigandsGeom: [(x: Float, y: Float, z: Float, name: String, color: UIColor, radius: Float)] = []
    static var boundsGeom: [(from: Int, to: Int, number: Int)] = []
}

let atomName : [String : (UIColor, Float)] = [
    "B"  : (UIColor(red:1.00, green:0.71, blue:0.71, alpha:1.0), 0.29 * 4.5),
    "BR" : (UIColor(red:0.65, green:0.16, blue:0.16, alpha:1.0), 0.313 * 4.5),
    "C"  : (UIColor(red:0.56, green:0.56, blue:0.56, alpha:1.0), 0.223 * 4.5),
    "CA" : (UIColor(red: 0.239, green:1, blue:0, alpha:1.0), 0.646 * 4.5),
    "CL" : (UIColor(red:0.12, green:0.94, blue:0.12, alpha:1.0), 0.263 * 4.5),
    "CO" : (UIColor(red:0.94, green:0.56, blue:0.63, alpha:1.0), 0.506 * 4.5),
    "CR" : (UIColor(red:0.54, green:0.60, blue:0.78, alpha:1.0), 0.553 * 4.5),
    "F"  : (UIColor(red:0.56, green:0.88, blue:0.31, alpha:1.0), 0.14 * 4.5),
    "FE" : (UIColor(red:0.88, green:0.40, blue:0.20, alpha:1.0), 0.52 * 4.5),
    "H"  : (UIColor.white, 0.176 * 4.5),
    "I"  : (UIColor(red:0.58, green:0.00, blue:0.58, alpha:1.0), 0.383 * 4.5),
    "MG" : (UIColor(red:0.54, green:1.00, blue:0.00, alpha:1.0), 0.483 * 4.5),
    "MN" : (UIColor(red:0.61, green:0.48, blue:0.78, alpha:1.0), 0.536 * 4.5),
    "MO" : (UIColor(red:0.33, green:0.71, blue:0.71, alpha:1.0), 0.633 * 4.5),
    "N"  : (UIColor(red:0.19, green:0.31, blue:0.97, alpha:1.0), 0.186 * 4.5),
    "O"  : (UIColor(red:1.00, green:0.05, blue:0.05, alpha:1.0), 0.16 * 4.5),
    "P"  : (UIColor(red:1.00, green:0.50, blue:0.00, alpha:1.0), 0.326 * 4.5),
    "PT" : (UIColor(red:0.82, green:0.82, blue:0.88, alpha:1.0), 0.59 * 4.5),
    "RH" : (UIColor(red:0.04, green:0.49, blue:0.55, alpha:1.0), 0.576 * 4.5),
    "RU" : (UIColor(red:0.14, green:0.56, blue:0.56, alpha:1.0), 0.593 * 4.5),
    "S"  : (UIColor(red:1.00, green:1.00, blue:0.19, alpha:1.0), 0.29 * 4.5),
    "SE" : (UIColor(red:1.00, green:0.63, blue:0.00, alpha:1.0), 0.343 * 4.5),
    "V"  : (UIColor(red:0.65, green:0.65, blue:0.67, alpha:1.0), 0.57 * 4.5),
    "W"  : (UIColor(red:0.13, green:0.58, blue:0.84, alpha:1.0), 0.643 * 4.5),
    "EU" : (UIColor(red:0.38, green:1.00, blue:0.78, alpha:1.0), 0.77 * 4.5),
    "ZN" : (UIColor(red:0.49, green:0.50, blue:0.69, alpha:1.0), 0.473 * 4.5),
    "K" : (UIColor(red:0.56, green:0.25, blue:0.83, alpha:1.0), 0.81 * 4.5),
    "CU" : (UIColor(red:0.78, green:0.50, blue:0.20, alpha:1.0), 0.483 * 4.5)
]

