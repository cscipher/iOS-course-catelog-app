//
//  MockTest.swift
//  course_catelog_app
//
//  Created by Harsh Soni on 22/01/23.
//

import SwiftUI


struct MockTest { // MockTest Ui Model
    let imageName: String
    let title: String
    let description: String
    let sellingPrice: String
    let originalPrice: String
    let url: URL
}


struct MockTestList {
    static let mockDataList = [
        MockTest(imageName: "mt-1", title: "C++ Advanced Mock Test", description: "An advanced level mock test to brush up your C++ skills!", sellingPrice: "399", originalPrice: "799", url: URL(string: "https://picsum.photos/500")!)
        
    ]
}
