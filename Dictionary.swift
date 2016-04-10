//
//  Dictionary.swift
//  Dictionary
//
//  Created by Madison on 4/9/16.
//  Copyright © 2016 Madison. All rights reserved.
//

import Foundation

class Dictionary{

    var dictionary = Trie()
    
    init(){
//        if let filepath = NSBundle.mainBundle().pathForResource("Dictionary", ofType: "txt") {
//            do {
//                let contents = try NSString(contentsOfFile: filepath, usedEncoding: nil) as String
//                let words: [String] = contents.componentsSeparatedByString("\r")
//                for word in words{
//                    print(word)
//                    dictionary.add(word)
//                }
//                
//            } catch {
//                print("Context cannot be loaded")
//            }
//        } else {
//            print("Dictionary.txt cannot be found")
//        }
        dictionary.add("cat")
    //    dictionary.add("cet")
        print(dictionary.search("caw"))
        print(dictionary.search("cat"))
        print(dictionary.search("cate"))
    }
    
    
    
}
