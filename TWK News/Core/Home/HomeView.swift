//
//  HomeView.swift
//  TWK News
//
//  Created by Nevio Hirani on 06.02.24.
//

import SwiftUI

struct HomeView: View {
    @State private var settingsSheetShown: Bool = false
    
    var body: some View {
        VStack {
            Text("Hello World!")
        }
        .tint(.orange)
        .navigationTitle("Discover")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    settingsSheetShown.toggle()
                } label: {
                    Image(systemName: "gearshape")
                }
                .sheet(isPresented: $settingsSheetShown) {
                    Text("Hi")
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
