//
//  NavigationStackView.swift
//  SwitchApps
//
//  Created by Lu Haoyu on 2023/06/06.
//

import SwiftUI

struct NavigationStackView: View {
    var body: some View {
        NavigationStack {
            List(navigationItems) { item in
                NavigationLink(value: item) {
                    Label(item.title, systemImage: item.icon)
                }
            }
            .navigationDestination(for: NavigationItem.self){ item in
                switch(item.menu){
                    case .compass:
                        ContentView()
                    case .card:
                        Text(item.title)
                    case .chart:
                        Text(item.title)
                    case .radial:
                        Text(item.title)
                    case .halfsheet:
                        Text(item.title)
                    case .gooey:
                        Text(item.title)
                    case .actionbutton:
                        Text(item.title)
                }
            }
            .navigationTitle("SwitchApps")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.plain)
        }
    }
}

struct NavigationStackView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackView()
    }
}
