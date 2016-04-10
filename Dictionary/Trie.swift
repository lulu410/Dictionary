//
//  Hashtable.swift
//  Dictionary
//
//  Created by Madison on 4/9/16.
//  Copyright © 2016 Madison. All rights reserved.
//  Reference
import Foundation

public class Trie{
    var key: Character
    var kids: [Trie]
 //   let capacity: Int
    var isEnd: Bool
    var word: String
    
    init(){
        self.key = "_"
        self.isEnd = false
 //       self.capacity = 10
        self.kids = Array<Trie>()
        self.word = ""
    }
    
    func add(word: String){
 //       var current: Trie = self
        if word.characters.count == 0{
            return;
        }
        
        if search(word) == "Found"{
            return;
        }
        
        var kidInUse: Trie!
        for kid in kids{
            if kid.key == word.sub(0){
                kidInUse = kid
       //         current = kidInUse
            }
        }
        //add a new trie
        if kidInUse == nil && word.characters.count > 0{
          //  print(word)
            kidInUse = Trie()
            kidInUse.key = word.sub(0)
            if(word.characters.count == 1){
                kidInUse.isEnd = true
            }
            if !kidInUse.isEnd{
                kidInUse.add(word.sub(1...(word.characters.count - 1)))
            }
            
            kidInUse.word = self.word + String(kidInUse.key)
        }
        kids.append(kidInUse)
        print("Finish adding hahaha\r\r\r\r\r")
    }
    func search(word: String)->String?{
        var remain: String = word
        if(key == "_"){
            print(word)
            for kid in kids{
                if kid.key != word.sub(0){
                    continue
                }
                else{
                    remain = kid.search(word)!
                    if remain != "Found"{
                        return remain
                    }else{
                        return "Found"
                    }
                }
                
            }
        }
        else{
            print(word)
            if(word.characters.count == 0){
                return "Found"
            }
            let curChar: Character = word.sub(0)
            
            
            if key != curChar{
                return word
            }else{
                if(word.characters.count == 1){
                    return "Found"
                }
                if kids.count == 0{
                    return word.sub(1...(word.characters.count - 1))
                }
                for kid in kids{
                    remain = kid.search(word.sub(1...(word.characters.count-1)))!
                    if kid.key != word.sub(1){
                        continue
                    }
                    else{
                        if remain != "Found"{
                            return remain
                        }else{
                            return "Found"
                        }
                    }
                    
                }
            }
        }
        return remain
    }

    func endTrue() -> Bool?{
        return self.isEnd
    }
    
    func toString()-> String{
        return self.word
    }
    
}

extension String{
    func sub(i: Int) -> Character{
      //  print(self)
        return self[self.startIndex.advancedBy(i)]
    }
    
    func sub(r: Range<Int>) -> String {
        let start = startIndex.advancedBy(r.startIndex)
        let end = start.advancedBy(r.endIndex - r.startIndex)
        return self[Range(start ..< end)]
    }
}


