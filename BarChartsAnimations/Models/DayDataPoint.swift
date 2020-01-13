//
//  DayDataPoint.swift
//  BarChartsAnimations
//
//  Created by De La Cruz, Eduardo on 13/01/2020.
//  Copyright © 2020 De La Cruz, Eduardo. All rights reserved.
//

import SwiftUI

struct DayDataPoint: Identifiable {
    let id = UUID()
    let day: String
    let value: CGFloat
}
