//
//  Data.swift
//  SwitchApps
//
//  Created by Lu Haoyu on 2023/06/06.
//

import Foundation

struct NavigationItem: Identifiable, Hashable{
    var id = UUID()
    var title: String
    var icon: String
    var menu: Menu
}

var navigationItems = [
    NavigationItem(title: "Compass App", icon: "safari", menu: .compass),
    NavigationItem(title: "3D card", icon: "lanyardcard", menu: .card),
    NavigationItem(title: "Radial Layout", icon: "clock", menu: .radial),
    NavigationItem(title: "Gooey Action Button", icon: "plus.circle", menu: .actionbutton),
    NavigationItem(title: "Gooey Menu", icon: "drop", menu: .gooey),
    NavigationItem(title: "Charts", icon: "chart.xyaxis.line", menu: .chart),
    NavigationItem(title: "Half Sheet", icon: "rectangle.portrait.bottomhalf.filled", menu: .halfsheet)
]

enum Menu: String{
    case compass
    case card
    case chart
    case radial
    case halfsheet
    case gooey
    case actionbutton
}
