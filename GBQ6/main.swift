//
//  main.swift
//  GBQ6
//
//  Created by Даниил Мурыгин on 23.10.2019.
//  Copyright © 2019 Даниил Мурыгин. All rights reserved.
//

import Foundation

struct Queque<T>{
    private var array = [T]()
    
    mutating func push (_ value: T){
        array.append(value)
    }
    mutating func pop () -> T?{
        return array.removeFirst()
    }
    
    func count() -> Int {
        return array.count
    }
    

    
   mutating func filter(_ clouser:(T) -> Bool) -> [T] {
        var result:[T] = []
        for i in array{
            if clouser(i){
                result.append(i)
            }
        }
        return result
    }
    
    mutating func removeFirst() -> T{
        return array.removeFirst()
    }
    
    
    
    mutating func removeLast() -> T {
        return array.removeLast()
    }
    
    
    mutating func removeAll()  {
        array = []
    }

    mutating func removeAll(_ clouser:(T) -> Bool)  {
        for (i,j) in array.enumerated(){
            if clouser(j){
                self.array.remove(at: i)
            }
        }
    }

    subscript(value:Int) -> T?{
        get{
            if value >= array.count{
                return nil
            }
            return array[value]
        }
        set{
            if value >= array.count{
                return
            }
            array[value] = newValue!
        }
    }
}

var q = Queque<Int>()

var ar = [1,2,3,4]

q.push(10)
q.push(12)
q.push(13)

print(q.filter{ $0 > 11})
print(q)
q.removeAll({$0 < 13})
print(q)
