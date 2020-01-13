//
//  Bar.swift
//  BarChartsAnimations
//
//  Created by De La Cruz, Eduardo on 13/01/2020.
//  Copyright © 2020 De La Cruz, Eduardo. All rights reserved.
//

import SwiftUI

struct Bar: View {
    
    var dataPoint: DayDataPoint
    var width: CGFloat
    
    var body: some View {        
        VStack {
            ZStack(alignment: .bottom) {
                Capsule()
                    .frame(width: width, height: 200)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("barBackground")))
                Capsule()
                    .frame(width: width, height: dataPoint.value * 200)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("barForeground")))
            }.padding(.bottom, 8)
            Text(dataPoint.day)
                .font(.system(size: 14))
        }
    }
}

struct Bar_Previews: PreviewProvider {
    static var previews: some View {
        Bar(dataPoint: DayDataPoint(day: "M", value: 0.3), width: 30)
    }
}
