// ===-------------------------------TechWithKilian-AppDelegate-------------------------------=== //
//                                                                                                //
//  TWKAppDelegate.swift                                                                          //
//  TWKNews Core                                                                                  //
//                                                                                                //
//  Copyright (c) 2024 TechWithKilian.                                                            //
//                                                                                                //
//  Licensed under the Apache License, Version 2.0 (the "License");                               //
//  you may not use this file except in compliance with the License.                              //
//  You may obtain a copy of the License at                                                       //
//                                                                                                //
//       http://www.apache.org/licenses/LICENSE-2.0                                               //
//                                                                                                //
//  Unless required by applicable law or agreed to in writing, software                           //
//  distributed under the License is distributed on an "AS IS" BASIS,                             //
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.                      //
//  See the License for the specific language governing permissions and                           //
//  limitations under the License.                                                                //
//                                                                                                //
//  YouTube: https://www.youtube.com/@TechWithKilian                                              //
//  See https://github.com/TechWithKilian/TWKNews/blob/main/LICENSE for license information       //
//  See https://github.com/TechWithKilian/TWK-News/graphs/contributors for the list of            //
//  all Contributors.                                                                             //
//                                                                                                //
// ===----------------------------------------------------------------------------------------=== //
//                                                                                                //
// This file contains settings and implementations for TWK News Client and                        //
// TWK News's DB.                                                                                 //
//                                                                                                //
// ===----------------------------------------------------------------------------------------=== //

#if os(iOS)
import UIKit
import SwiftUI
import UserNotifications
import os.log

#elseif os(macOS)
import AppKit
import SwiftUI
import UserNotifications
import os.log
#endif

class TWKAppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        // Register for remote notifications. This shows a permission dialog on first run, to
        // show the dialog at a more appropriate time move this registration accordingly.
        // [START register_for_notifications]
        UNUserNotificationCenter.current().delegate = self

        let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter.current().requestAuthorization(
            options: authOptions,
            completionHandler: { _,_  in /*granted, _ in*/
                
            }
        )
        
        application.registerForRemoteNotifications()
        // [END register_for_notifications]
        
        return true
    }
    
    private let logger = Logger(subsystem: "com.techwithkilian.TWKNews", category: "MemoryWarning")
    
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        logger.error("MEMORY ISSUE: Received memory warning!")
    }
}
