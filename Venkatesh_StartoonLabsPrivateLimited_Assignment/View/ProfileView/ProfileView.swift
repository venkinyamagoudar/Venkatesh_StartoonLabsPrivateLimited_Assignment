//
//  ContentView.swift
//  Venkatesh_StartoonLabsPrivateLimited_Assignment
//
//  Created by Venkatesh Nyamagoudar on 2/22/24.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) var dismiss
    var patient: PatientDetails
    var body: some View {
        ScrollView {
            Section{
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("\(patient.name),\(patient.gender.rawValue)/\(patient.age)")
                                .bold()
                            Text("Patient ID: \(patient.patientID)")
                                .font(.caption)
                        }
                        .foregroundStyle(Color(hex: "012E57"))
                        Spacer()
                        if patient.profileImage != nil {
                            Image("profileImage")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .padding()
                                .foregroundStyle(Color(hex:"002647"))
                                .clipShape(Circle())
                        } else {
                            Image(systemName: "person.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .padding()
                                .foregroundStyle(Color(hex:""))
                                .clipShape(Circle())
                        }
                    }
                    .padding(.horizontal)
                }
            }
            Rectangle()
                .frame(height: 2)
                .foregroundStyle(Color(hex:"D9D9D9"))
            Section{
                VStack {
                    Text("Goal reached")
                        .font(.headline)
                        .foregroundStyle(Color(hex: "FFFFFF"))
                        .padding(.top, 8)
                    HStack {
                        Spacer()
                        SemicircularShapeView(ringWidth: 15, percent: patient.percent,backgroundColor: Color(hex: "D9D9D9"), foregroundColor: Color(hex: "FCB000"))
                            .frame(width: 150, height: 150)
                        Spacer()
                        VStack{
                            Image("EMG")
                                .resizable()
                                .frame(width: 50,height: 30)
                            Image("ROM")
                                .resizable()
                                .frame(width: 50,height: 30)
                        }
                        Spacer()
                    }
                    .padding(.all,0)
                }
                .background(Color(hex: "012E57"))
                .clipShape(
                    RoundedRectangle(
                        cornerRadius: 8
                    )
                )
            }
            .padding(.horizontal)
            .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5)
            Section {
                VStack(alignment: .leading, spacing: 10) {
                    DetailsTextView(head: "Phone no.", detail: String(patient.phoneNumber), imageName: "phone.fill")
                    DetailsTextView(head: "Mail ID", detail: patient.mailID, imageName: "envelope.fill")
                    DetailsTextView(head: "Affected side", detail: patient.affcetedSide, imageName: "tshirt.fill")
                    DetailsTextView(head: "Condition", detail: patient.condition, imageName: "accessibility.fill")
                    DetailsTextView(head: "Speciality", detail: patient.speciality, imageName: "cross.case.fill")
                }
                .padding()
            }
            Rectangle()
                .frame(height: 2)
                .foregroundStyle(Color(hex:"D9D9D9"))
            Section {
                HStack {
                    Image(systemName: "doc.fill")
                    Text("Medical History")
                        .font(.system(size: 11))
                        .bold()
                        .foregroundStyle(Color(hex: "012E57"))
                    Text(patient.mediacalHistory.joined(separator: ", "))
                        .font(.caption)
                    Spacer()
                }
                .padding(.leading)
            }
            Rectangle()
                .frame(height: 2)
                .foregroundStyle(Color(hex:"D9D9D9"))
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.backward")
                        Text("View patient")
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView(patient: PatientDetails(name: "S.Meena", gender: Gender.female, age: "23", patientID: "8720200727153457", phoneNumber: 8022334455, mailID: "meenaarabiansachin2@gmail.com", affcetedSide: "Bilateral", condition: "Ortho", speciality: "Osteoarthritis", mediacalHistory: ["Hypertension", "DM", "Hypothyrodism"], profileImage: nil, percent: 40))
}
