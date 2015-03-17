//
//  LibraryAPI.swift
//  BlueLibrarySwift
//
//  Created by chenzhipeng on 3/17/15.
//  Copyright (c) 2015 Raywenderlich. All rights reserved.
//

import UIKit

class LibraryAPI: NSObject {
   // 1
    /// Create a class variable as a computed type property. The class variable, like class methods in Obj-c, is something you can call without having to instantiate the class LibraryAPI
    class var sharedInstance: LibraryAPI {
        // 2
        /// Nested within the class variable is a struct called Singleton
        struct Singleton {
            // 3
            // the static means this property only exists once . in swift, the Instance is not created until it's needed
            static let instance = LibraryAPI()
        }
        // 4
        return Singleton.instance
    }
}
