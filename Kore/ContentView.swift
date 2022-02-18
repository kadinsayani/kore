//
//  ContentView.swift
//  Kore
//
//  Created by Kadin Sayani on 2022-02-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView() {
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
                List(1...10, id: \.self) { index in
                    NavigationLink(
                        destination: Text("Workout #\(index) Details"), label: {
                            Text("Workout #\(index)").font(.system(size: 20, weight: .bold, design: .rounded))
                        })
                }
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Browse")
                    }
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
