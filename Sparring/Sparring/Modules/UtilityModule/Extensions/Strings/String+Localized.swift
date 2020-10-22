//
//  String+Localized.swift
//  Sparring
//
//  Created by Wojciech Kulas on 22/10/2020.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
