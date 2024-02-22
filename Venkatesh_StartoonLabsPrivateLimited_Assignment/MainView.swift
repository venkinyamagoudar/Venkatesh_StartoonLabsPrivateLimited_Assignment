//
//  MainView.swift
//  Venkatesh_StartoonLabsPrivateLimited_Assignment
//
//  Created by Venkatesh Nyamagoudar on 2/22/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Go to Profile View") {
                ProfileView(patient: PatientDetails(name: "S.Meena", gender: Gender.female, age: "23", patientID: "8720200727153457", phoneNumber: 8022334455, mailID: "meenaarabiansachin2@gmail.com", affcetedSide: "Bilateral", condition: "Ortho", speciality: "Osteoarthritis", mediacalHistory: ["Hypertension", "DM", "Hypothyrodism"], profileImage: nil, percent: 40))
                    .navigationBarBackButtonHidden(true)
            }
        }
    }
}

#Preview {
    MainView()
}
