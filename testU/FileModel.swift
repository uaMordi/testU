//
//  FileModel.swift
//  testU
//
//  Created by Mor Di on 27.01.17.
//  Copyright © 2017 Mor Di. All rights reserved.
//

import Foundation
import UIKit

class Files {
    
    var filename: String
    var isFolder: String
    var modDate: Date
    var fileType: String
    var isOrange: Bool
    var isBlue: Bool
    
    init(filename: String, isFolder: String, modDate: Date, fileType: String, isOrange: Bool, isBlue: Bool) {
        
        self.filename = filename
        self.isFolder = isFolder
        self.modDate = modDate
        self.fileType = fileType
        self.isOrange = isOrange
        self.isBlue = isBlue
    }
}
