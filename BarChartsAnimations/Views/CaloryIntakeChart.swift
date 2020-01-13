//
//  CaloryIntakeChart.swift
//  BarChartsAnimations
//
//  Created by De La Cruz, Eduardo on 13/01/2020.
//  Copyright © 2020 De La Cruz, Eduardo. All rights reserved.
//

import SwiftUI

struct CaloryIntakeChart: View {
    
    static let morninrData: [DayDataPoint] = [
        .init(day: "Su", value: 0.2),
        .init(day: "M", value: 0.5),
        .init(day: "T", value: 0.3),
        .init(day: "W", value: 0.8),
        .init(day: "Th", value: 0.7),
        .init(day: "F", value: 0.4),
        .init(day: "Sa", value: 1.0),
    ]
    
    static let afternoonData: [DayDataPoint] = [
        .init(day: "Su", value: 0.1),
        .init(day: "M", value: 0.6),
        .init(day: "T", value: 0.2),
        .init(day: "W", value: 0.3),
        .init(day: "Th", value: 0.4),
        .init(day: "F", value: 0.9),
        .init(day: "Sa", value: 0.5),
    ]
    
    static let eveningData: [DayDataPoint] = [
        .init(day: "Su", value: 0.9),
        .init(day: "M", value: 0.4),
        .init(day: "T", value: 0.3),
        .init(day: "W", value: 0.3),
        .init(day: "Th", value: 0.5),
        .init(day: "F", value: 0.2),
        .init(day: "Sa", value: 0.1),
    ]
    
    @State var selectedItem = 0
    @State var dataSet: [[DayDataPoint]] = [
        morninrData, afternoonData, eveningData
    ]
    
    var spacing: CGFloat = 24
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color("appBackground").edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 16) {
                    Spacer()
                    
                    Text("Calory Intake")
                        .font(.system(size: 32))
                        .fontWeight(.heavy)
                        .padding(.bottom, 0)
                    
                    Picker(selection: self.$selectedItem, label: Text("What is your favorite color?")) {
                        Text("Morning").tag(0)
                        Text("Afternoon").tag(1)
                        Text("Evening").tag(2)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    HStack(spacing: self.spacing) {
                        Bar(dataPoint: self.dataSet[self.selectedItem][0], width: (geometry.size.width - (8 * self.spacing)) / 7)
                        Bar(dataPoint: self.dataSet[self.selectedItem][1], width: (geometry.size.width - (8 * self.spacing)) / 7)
                        Bar(dataPoint: self.dataSet[self.selectedItem][2], width: (geometry.size.width - (8 * self.spacing)) / 7)
                        Bar(dataPoint: self.dataSet[self.selectedItem][3], width: (geometry.size.width - (8 * self.spacing)) / 7)
                        Bar(dataPoint: self.dataSet[self.selectedItem][4], width: (geometry.size.width - (8 * self.spacing)) / 7)
                        Bar(dataPoint: self.dataSet[self.selectedItem][5], width: (geometry.size.width - (8 * self.spacing)) / 7)
                        Bar(dataPoint: self.dataSet[self.selectedItem][6], width: (geometry.size.width - (8 * self.spacing)) / 7)
                    }
                    .animation(.default)
                    
                    Spacer()
                }.padding(EdgeInsets(top: 0, leading: self.spacing, bottom: 0, trailing: self.spacing))
            }
        }
    }
}

struct CaloryIntake_Previews: PreviewProvider {
    static var previews: some View {
        CaloryIntakeChart()
    }
}
