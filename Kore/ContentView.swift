//
//  ContentView.swift
//  Kore
//
//  Created by Kadin Sayani on 2022-02-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Dashboard")
                .tabItem {
                    Image(systemName: "house")
                    Text("Dashboard")
                }
            Text("Start")
                .tabItem {
                    Image(systemName: "bolt.heart")
                    Text("Start")
                }
            Text("Browse")
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Browse")
                }
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
