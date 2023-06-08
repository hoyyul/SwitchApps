//
//  ContentView.swift
//  SwitchApps
//
//  Created by Lu Haoyu on 2023/06/05.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    @AppStorage("selectedMenu") var selectedValue: Menu = .compass
    @GestureState var press = false
    
    var longPress: some Gesture{
        LongPressGesture(minimumDuration: 1)
            .updating($press) { currentState, gestureState, transaction in
                gestureState = currentState
            }
            .onEnded { value in
                showMenu = true
            }
    }
    
    var body: some View{
        ZStack {
            Color(.systemBackground).ignoresSafeArea()
            
            switch selectedValue {
            case .compass:
                MessageView()
            case .card:
                Text("Card")
            case .chart:
                Text("Chart")
            case .radial:
                RadialLayoutView()
            case .halfsheet:
                MenuView()
            case .gooey:
                Text("Gooey")
            case .actionbutton:
                Text("Action butoon")
            }
            
        }
        .gesture(longPress)
        .sheet(isPresented: $showMenu){
            MenuView()
                .presentationDetents([.medium])
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
