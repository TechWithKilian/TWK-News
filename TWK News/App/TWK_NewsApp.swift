// ===-------------------------------TechWithKilian-Entry-Point------------------------------=== //
//                                                                                               //
//  TWKNewsApp.swift                                                                             //
//  TWKNews Core                                                                                 //
//                                                                                               //
//  Copyright (c) 2024 TechWithKilian.                                                           //
//                                                                                               //
//  Licensed under the Apache License, Version 2.0 (the "License");                              //
//  you may not use this file except in compliance with the License.                             //
//  You may obtain a copy of the License at                                                      //
//                                                                                               //
//       http://www.apache.org/licenses/LICENSE-2.0                                              //
//                                                                                               //
//  Unless required by applicable law or agreed to in writing, software                          //
//  distributed under the License is distributed on an "AS IS" BASIS,                            //
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.                     //
//  See the License for the specific language governing permissions and                          //
//  limitations under the License.                                                               //
//                                                                                               //
//  YouTube: https://www.youtube.com/@TechWithKilian                                             //
//  See https://github.com/TechWithKilian/TWKNews/blob/main/LICENSE for license information      //
//  See https://github.com/TechWithKilian/TWK-News/graphs/contributors for the list of           //
//  all Contributors.                                                                            //
//                                                                                               //
// ===---------------------------------------------------------------------------------------=== //
//                                                                                               //
// This file declares the app's main entry point and contains configurations                     //
// for TWK News's Views                                                                          //
//                                                                                               //
// ===---------------------------------------------------------------------------------------=== //

import SwiftUI
import TipKit

@main
struct TWK_NewsApp: App {
    @UIApplicationDelegateAdaptor(TWKAppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
