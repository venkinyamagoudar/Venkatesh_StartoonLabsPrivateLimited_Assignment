//
//  ring.swift
//  Venkatesh_StartoonLabsPrivateLimited_Assignment
//
//  Created by Venkatesh Nyamagoudar on 2/22/24.
//

import SwiftUI

struct SemicircularShapeView: View {
    private let ringWidth: CGFloat
    private let percent: Double
    private let backgroundColor: Color
    private let foregroundColor: Color
    private let startAngle: Double = -180
    init(ringWidth: CGFloat, percent: Double, backgroundColor: Color, foregroundColor: Color) {
        self.ringWidth = ringWidth
        self.percent = percent
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
    }
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RingShape()
                    .stroke(style: StrokeStyle(lineWidth: self.ringWidth))
                    .fill(self.backgroundColor)
                RingShape(percent: self.percent, startAngle: self.startAngle)
                    .stroke(style: StrokeStyle(lineWidth: self.ringWidth+2, lineCap: .butt))
                    .fill(self.foregroundColor)
                Text(String(format: "%.2f%%", percent))
                    .font(.system(size: 20))
                    .foregroundStyle(Color(hex: "FFFFFF"))
                    .fontWeight(.bold)
                    .padding(.top,30)
            }
            .padding(.all,0)
        }
        .frame(width: 150,height: 75)
    }
}

#Preview {
    SemicircularShapeView(ringWidth: 20, percent: 40, backgroundColor: Color(hex: "D9D9D9"), foregroundColor: Color(hex: "FCB000"))
        .padding()
}
