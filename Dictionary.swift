//
//  Dictionary.swift
//  Dictionary
//
//  Created by Madison on 4/9/16.
//  Copyright © 2016 Madison. All rights reserved.
//

import Foundation

class Dictionary{
    init(){
        let location = NSString(string:"/Users/madison/Desktop/CS/iOS/Dictionary/Dictionary.txt ").stringByExpandingTildeInPath
        let fileContent = try? NSString(contentsOfFile: location, encoding: NSUTF8StringEncoding)
        print(fileContent)
    }
    
}
