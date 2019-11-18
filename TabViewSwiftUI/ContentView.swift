//
//  ContentView.swift
//  TabViewSwiftUI
//
//  Created by shiga on 19/11/19.
//  Copyright © 2019 Shigas. All rights reserved.
//

import SwiftUI
extension ContentView{
    enum Tab:Hashable{
        case home
        case more
    }
}

struct ContentView: View {
    
    @State private var selectedTab: Tab = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Home Screen")
                .tabItem { Text("Home")}
                .tag(Tab.home)
            
            Text("More Screen")
            .tabItem{Text("More")}
                .tag(Tab.more)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
