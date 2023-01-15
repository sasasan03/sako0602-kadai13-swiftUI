import SwiftUI

var fruits = [
//    private let fruits = [
    "りんご": false,
    "みかん": true,
    "バナナ": false,
    "パイナップル": true,
]

//let key = Bool(fruits.keys) ?? false
//let value = String(fruits.keys) ?? "存在しないフルーツ"
fruits.forEach { (key: String, value: Bool) in
//    print(key)
    print(value)
    print(key)
    fruits.values
    fruits.keys
}

let value = fruits.keys
print(value)


//private let fruits = ["りんご": 1,"みかん": 2,"バナナ": 1,"パイナップル": 2]
/*
 let dictionalyKey = fruits["りんご"]
 print(dictionalyKey)

 if let aaa = dictionalyKey {
     print(aaa)
 }
 */
fruits.forEach { elem in
    let key = elem.key
    let value = elem.value
    
    if key == "りんご" {
        return
    }
    print("key: \(key),value: \(value)")
}

fruits.forEach { (key, value) in
    if  key == "りんご" {
        print("check")
    }
}

//辞書リテラル 型推論
let dictionary = ["りんご":true,"レモン":false]//[String:Bool]
let dictionaryMiss = [["a":"b"]:true,["g":"f"]:false]
//空
let dictionaryEmpty: [String:Bool] = [:]
//操作
let fruit = dictionary["りんご"]
//print(fruit) -> optional(true)
//✨dictionary型の正式な書き方
//Dictionary<Key: Hashable, Value> Hashableは配列は入れれない。なんかいけた。
let りんご = dictionary["りんご"] != nil
let なし = dictionary["なし"] != nil

