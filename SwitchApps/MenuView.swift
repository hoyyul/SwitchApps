//
//  MenuView.swift
//  SwitchApps
//
//  Created by Lu Haoyu on 2023/06/06.
//

import SwiftUI

struct MenuView: View {
    @AppStorage("selectedMenu") var selectedValue: Menu = .compass
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        List(navigationItems) { item in
            Button{
                selectedValue = item.menu
                presentationMode.wrappedValue.dismiss()
            }label:{
                Label(item.title, systemImage: item.icon)
                    .foregroundColor(.primary)
                    .padding(8)
            }
        }
        .listStyle(.plain)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
