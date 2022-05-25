//
//  ThermometerScaleView.swift
//  SmartHomeThermostat
//
//  Created by Nick Rice on 25/05/2022.
//

import SwiftUI

struct ThermometerScaleView: View {
    private let scaleSize: CGFloat = 276
    private let horizontalPadding: CGFloat = 20
    private let verticalPadding: CGFloat = 25
    
    var body: some View {
        ZStack {
            ForEach(0..<21) { line in
                scaleLine(at: line)
            }
            .frame(width: scaleSize, height: scaleSize)
            
            ZStack {
                HStack {
                    Text("10°")
                    Spacer()
                    Text("30°")
                }
                
                VStack {
                    Text("20°")
                    Spacer()
                }
            }
            .frame(width: 390 - 2 * horizontalPadding, height: 390 - 2 * verticalPadding)
            .font(.subheadline)
            .foregroundColor(.white.opacity(0.3))
        }
    }
    
    func scaleLine(at line: Int) -> some View {
        VStack {
            Rectangle()
                .fill(Color("Scale Line"))
                .frame(width: 2, height: 10)
            
            Spacer()
        }
        .rotationEffect(.degrees(Double(line) * 9 - 90))
    }
}

struct ThermometerScaleView_Previews: PreviewProvider {
    static var previews: some View {
        ThermometerScaleView()
    }
}
