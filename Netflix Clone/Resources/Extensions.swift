//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Eduardo Jordan on 6/3/25.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
