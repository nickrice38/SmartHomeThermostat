//
//  ThermometerSummaryView.swift
//  SmartHomeThermostat
//
//  Created by Nick Rice on 25/05/2022.
//

import SwiftUI

struct ThermometerSummaryView: View {
    var status: Status
    var showStatus: Bool
    var temprature: CGFloat
    
    var body: some View {
        VStack(spacing: 0) {
            // Temp status
            Text(status.rawValue)
                .font(.headline)
                .foregroundColor(.white)
                .opacity(showStatus ? 0.6 : 0)
                .animation(.easeIn(duration: 0.5), value: showStatus)
            
            Text("\(temprature, specifier: "%.0f")")
                .font(.system(size: 54))
                .foregroundColor(.white)
            
            Image(systemName: "leaf.fill")
                .font(.title2.bold())
                .foregroundColor(.green)
        }
        .padding(.top, 40)
    }
}

struct ThermometerSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        ThermometerSummaryView(status: .heating, showStatus: true, temprature: 22)
            .background(Color("Inner Dial 2"))
    }
}
