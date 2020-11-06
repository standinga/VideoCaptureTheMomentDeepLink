//
//  ContentView.swift
//  VideoCaptureOpener
//
//  Created by michal on 29/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Open Video Capture The Moment", action: {
            print("open")
            let url: URL = URL(string: "VideoCTM://code/123456789")!
            UIApplication.shared.open(url, options: [:]) { success in
                NSLog("VideoCaptureOpener should open \(url)")
            }
        })
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
