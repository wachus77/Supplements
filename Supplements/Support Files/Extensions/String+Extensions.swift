//
//  String+Extensions.swift
//  Supplements
//
//  Created by Tomasz Iwaszek on 4/9/19.
//  Copyright © 2019 matchusolutions. All rights reserved.
//

import  Foundation

extension String {
    
    func localized(bundle: Bundle = .main, tableName: String) -> String {
        return NSLocalizedString(self, tableName: tableName, value: "**\(self)**", comment: "")
    }
}
