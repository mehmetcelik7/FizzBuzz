//
//  String Extension.swift
//  FizzBuzz
//
//  Created by mehmet Çelik on 3.03.2025.
//

import Foundation

extension String {
    func indent() -> String {
        
        var result = ""
        let listOfLines = self.split(separator: "\n")
        listOfLines.forEach{
            line in
            
            result += "\t\(line)\n"
        }
        
        return String(result.dropLast())
    }
}
