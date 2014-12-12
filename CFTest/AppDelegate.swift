//
//  AppDelegate.swift
//  CFTest
//
//  Created by Boris Bügling on 12/12/14.
//  Copyright (c) 2014 Boris Bügling. All rights reserved.
//

import ContentfulDeliveryAPI
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(app: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let client = CDAClient()

        client.fetchEntriesWithSuccess({ (response, array) -> Void in
            NSLog("%@", array.items)
        }, failure: { (response, error) -> Void in
            NSLog("Error: %@", error)
        });

        return true
    }

}
