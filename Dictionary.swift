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
        if let filepath = NSBundle.mainBundle().pathForResource("Dictionary", ofType: "txt") {
            do {
                let contents = try NSString(contentsOfFile: filepath, usedEncoding: nil) as String
                let words: [String] = contents.componentsSeparatedByString("\r")
                for word in words{
                    if !(word == "") && !(word.sub(0) == "#"){
                       // print(word)
                        dictionary.add(word)
                    }
                }
             //   print(dictionary.search("abandon"))
              //  var result:[String] = [String]()
             //   print(dictionary.bfs("str").toString())
             //   print(result)
                
            } catch {
                print("Context cannot be loaded")
            }
        } else {
            print("Dictionary.txt cannot be found")
        }
    }
    
    func autoCorrec(con: String)->[String]{
        return dictionary.bfs(con.lowercaseString).toString()
    }
    
    
    
}
