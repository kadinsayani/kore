//
//  ContentView.swift
//  Kore
//
//  Created by Kadin Sayani on 2022-02-18.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    print("Application is starting up. ApplicationDelegate didFinishLaunchingWithOptions.")
    FirebaseApp.configure()
    return true
  }
}

struct ContentView: View {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var user: String = "User"
    var program: String = "Workout 1"
    var daysOnProgram: Int = 5
    var programDays: Int = 30
    
    var body: some View {
        NavigationView() {
            TabView {
                VStack {
                    Text("Welcome, \(user)!")
                        .font(.system(size: 32, weight: .bold, design: .rounded))
                    Spacer()
                    VStack {
                        Text("Current Program: \(program)")
                        Text("Day \(daysOnProgram) out of \(programDays)")
                    }
                }
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
                        destination: Text("workout"), label: {
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
