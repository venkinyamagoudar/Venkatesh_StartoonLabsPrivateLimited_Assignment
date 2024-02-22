//
//  PatientDetails.swift
//  Venkatesh_StartoonLabsPrivateLimited_Assignment
//
//  Created by Venkatesh Nyamagoudar on 2/22/24.
//

import SwiftUI

struct PatientDetails {
    var name: String
    var gender: Gender
    var age: String
    var patientID: String
    var phoneNumber: Int
    var mailID: String
    var affcetedSide: String
    var condition: String
    var speciality: String
    var mediacalHistory: [String]
    var profileImage: String?
    var percent: Double
    init(name: String, gender: Gender, age: String, patientID: String, phoneNumber: Int, mailID: String, affcetedSide: String, condition: String, speciality: String, mediacalHistory: [String], profileImage: String?, percent: Double) {
        self.name = name
        self.gender = gender
        self.age = age
        self.patientID = patientID
        self.phoneNumber = phoneNumber
        self.mailID = mailID
        self.affcetedSide = affcetedSide
        self.condition = condition
        self.speciality = speciality
        self.mediacalHistory = mediacalHistory
        self.profileImage = profileImage
        self.percent = percent
    }
}

enum Gender: String {
    case male = "M"
    case female = "F"
    case other = "O"
}
