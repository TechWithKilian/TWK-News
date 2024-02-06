//
//  SideBarView.swift
//  TWK News
//
//  Created by Nevio Hirani on 06.02.24.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink {
                                            
                    } label: {
                        Label("Discover", systemImage: "star")
                    }
                    NavigationLink {
                                            
                    } label: {
                        Label("Account", systemImage: "person.crop.circle")
                    }
                    NavigationLink {
                                            
                    } label: {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                }
                
                Section("Browse") {
                    NavigationLink {
                                            
                    } label: {
                        Label("News", systemImage: "newspaper")
                    }
                    NavigationLink {
                                            
                    } label: {
                        Label("Bookmarks", systemImage: "bookmark")
                    }
                    NavigationLink {
                                            
                    } label: {
                        Label("Downloads", systemImage: "arrow.down.circle")
                    }
                    NavigationLink {
                                            
                    } label: {
                        Label("Continue Watching", systemImage: "play.circle")
                    }
                }
                
                Section("Topics") {
                    NavigationLink {
                                            
                    } label: {
                        Label("Audio & Video", systemImage: "tv.and.hifispeaker.fill")
                    }
                    NavigationLink {
                                            
                    } label: {
                        Label("Community", systemImage: "person.3.fill")
                    }
                    NavigationLink {
                                            
                    } label: {
                        Label("Design", systemImage: "paintbrush")
                    }
                    NavigationLink {
                                            
                    } label: {
                        Label("Developer Tools", systemImage: "hammer")
                    }
                    NavigationLink {
                                            
                    } label: {
                        Label("Essentials", systemImage: "cube")
                    }
                    NavigationLink {
                                            
                    } label: {
                        Label("Graphics & Games", systemImage: "gamecontroller")
                    }
                    NavigationLink {
                                            
                    } label: {
                        Label("Spatial Computing", systemImage: "visionpro")
                    }
//                    NavigationLink {
//                                            
//                    } label: {
//                        Label("Swift", systemImage: "swift")
//                    }
//                    NavigationLink {
//                                            
//                    } label: {
//                        Label("SwiftUI & Frameworks", systemImage: "switch.2")
//                    }
                    NavigationLink {
                                            
                    } label: {
                        Label("Tech Reviews", systemImage: "tv.and.hifispeaker.fill")
                    }
                    NavigationLink {
                                            
                    } label: {
                        Label("Tutorials", systemImage: "list.bullet.below.rectangle")
                    }
                }
                
                Section("Events") {
                    NavigationLink {
                                            
                    } label: {
                        Label("Tech Talks", systemImage: "")
                    }
                    NavigationLink {
                                            
                    } label: {
                        Label("WWDC", systemImage: "lanyardcard")
                    }
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("News")
            .navigationBarTitleDisplayMode(.large)
            
            HomeView()
        }
        .tint(.indigo)
    }
}

#Preview {
    SideBarView()
}
