//
//  User.swift
//  Random Users
//
//  Created by Andrew Dhan on 9/7/18.
//  Copyright © 2018 Erica Sadun. All rights reserved.
//

import Foundation
extension String{
    func capitalizeFirstLetter() -> String {
        return prefix(1).uppercased() + dropFirst()
    }
}
struct User: Codable {
    
    init(fullName: String, email: String, phone: String, photoURL: String, thumbnailURL: String){
        self.fullName = fullName
        self.email = email
        self.phone = phone
        self.photoURL = photoURL
        self.thumbnailURL = thumbnailURL
    }
    
    init(userRepresentation: UserRepresentation) {
        let name = userRepresentation.name
        self.fullName = name.title.capitalizeFirstLetter() + " " +
            name.first.capitalizeFirstLetter() + " " +
            name.last.capitalizeFirstLetter()
        
        self.email = userRepresentation.email
        self.phone = userRepresentation.phone
        self.photoURL = userRepresentation.picture.large
        self.thumbnailURL = userRepresentation.picture.thumbnail
    }
    
    
    let fullName: String
    let email: String
    let phone: String
    let photoURL: String
    let thumbnailURL:String
}
