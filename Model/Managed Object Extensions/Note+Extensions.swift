//
//  Note+Extensions.swift
//  Mooskine
//
//  Created by Julio Rico on 8/27/19.
//  Copyright © 2019 Udacity. All rights reserved.
//
import CoreData
import Foundation

extension Note {
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        
        creationDate = Date()
    }
}
