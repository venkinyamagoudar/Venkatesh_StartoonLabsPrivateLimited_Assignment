//
//  DetailsTextView.swift
//  Venkatesh_StartoonLabsPrivateLimited_Assignment
//
//  Created by Venkatesh Nyamagoudar on 2/22/24.
//

import SwiftUI

struct DetailsTextView: View {
    private var head: String
    private var detail: String
    private var imageName: String
    init(head: String, detail: String, imageName: String) {
        self.head = head
        self.detail = detail
        self.imageName = imageName
    }
    var body: some View {
        HStack{
            Text(head)
                .foregroundStyle(Color(hex: "AEACAC"))
                .font(.caption)
                .frame(width: 100,alignment: .leading)
            Image(systemName: imageName)
                .resizable()
                .frame(width: 12, height: 12)
                .padding(.leading)
                .foregroundStyle( head == "Mail ID" ? Color(hex: "012E57") : head == "Affected side" ? Color(hex: "DF0100") : Color(hex: "000000"))
            Text(detail)
                .font(.caption)
            Spacer()
        }
    }
}

#Preview {
    DetailsTextView(head: "Phone no.", detail: "678687828787", imageName: "phone.fill")
}
