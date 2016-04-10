//
//  Hashtable.swift
//  Dictionary
//
//  Created by Madison on 4/9/16.
//  Copyright © 2016 Madison. All rights reserved.
// Reference: http://waynewbishop.com/swift/tries/

import Foundation

public class Trie{
    var key: Character
    var kids: [Trie]
    let capacity: Int
    var isEnd: Bool
    
    init(){
        self.key = "a"
        self.isEnd = true
        self.capacity = 10
        self.kids = Array<Trie>()
    }
    
    func add(word: String){
        if word.characters.count < 0{
            return;
        }
        
        if search(word) == nil{
            return;
        }
        var kidInUse: Trie!
        for kid in kids{
            if kid.key == word.sub(0){
               kidInUse = kid
            }
        }
        //add a new trie
        if kidInUse == nil{
            kidInUse.key = word.sub(0)
            kidInUse.isEnd = word.characters.count == 1 ? true: false
            kidInUse.add(word.sub(1...(word.characters.count - 1)))
        }
        
        
    }
    
    func search(word: String)->String?{
        let curStr: String = word
        let curChar: Character = curStr.sub(0)
        if key != curChar{
            return word;
        }
        else{
            search(word.sub(1...(word.characters.count-1)))
        }
        return nil;
    }
    
    func endTrue() -> Bool?{
        return self.isEnd
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


