//
//  MockTest.swift
//  course_catelog_app
//
//  Created by Harsh Soni on 22/01/23.
//

import SwiftUI


struct MockTest: Identifiable {
    // MockTest Ui Model
    let id = UUID() /// each list should be unique, as in case of [nos] they are itself unique, so we follow this protocol of making a 'UUID' for our list model
    let imageName: String
    let title: String
    let description: String
    let sellingPrice: String
    let originalPrice: String
    let url: URL
}


struct MockTestList {
    static let mockDataList = [
        MockTest(imageName: "mt-1", title: "C++ Advanced Mock Test", description: "An advanced level mock test to brush up your C++ skills! An advanced level mock test to brush up your C++ skills! An advanced level mock test to brush up your C++ skills! An advanced level mock test to brush up your C++ skills!", sellingPrice: "399", originalPrice: "799", url: URL(string: "https://www.udemy.com")!),
        
        MockTest(imageName: "mt-2", title: "Java in Depth Mock Test", description: "An advanced level mock test to brush up your core java skills! An advanced level mock test to brush up your core java skills! An advanced level mock test to brush up your core java skills! An advanced level mock test to brush up your core java skills!", sellingPrice: "599", originalPrice: "1299", url: URL(string: "https://www.udemy.com")!),
        
        MockTest(imageName: "mt-3", title: "C - Beginner level Mock Test", description: "A beginner friendly C language mock test! A beginner friendly C language mock test! A beginner friendly C language mock test! A beginner friendly C language mock test! A beginner friendly C language mock test!", sellingPrice: "FREE", originalPrice: "499", url: URL(string: "https://www.udemy.com")!)
        
    ]
}
