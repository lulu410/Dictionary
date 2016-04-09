//
//  Hashtable.swift
//  Dictionary
//
//  Created by Madison on 4/9/16.
//  Copyright © 2016 Madison. All rights reserved.
//

import Foundation

public class Trie{
    var key: Char
    var kids: [Trie]
    let capacity: Int
    var isEnd: Bool
    
    init(){
        self.capacity = 10
    }
    
    func add(word: String){
        if word.characters.count < 0{
            return;
        }
        if var remain: String = search(word){
            
        }
        
        
    }
    
    func search(word: String)->String{
        var curStr: String = word
        var curChar: Character = curStr.sub(0)
        if key != curChar{
            return word;
        }
        else{
            search(word.sub(1...(word.characters.count-1)))
        }
        return nil;
    }
    
    
}

extension String{
    func sub(i: Int) -> Character{
        return self[self.startIndex.advancedBy(i)]
    }
    
    func sub(r: Range<Int>) -> String {
        let start = startIndex.advancedBy(r.startIndex)
        let end = start.advancedBy(r.endIndex - r.startIndex)
        return self[Range(start ..< end)]
    }
}


