//
//  MockTextDetailsView.swift
//  course_catelog_app
//
//  Created by Harsh Soni on 22/01/23.
//

import SwiftUI

struct MockTextDetailsView: View {
    var mockTestData: MockTest
    
    var body: some View {
        VStack() {
            Image(mockTestData.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 210)
                .cornerRadius(15)
            
            Spacer()
                .frame(height: 20)
            
            HStack(alignment: .top, spacing: 20) {
                VStack(alignment: .leading) {
                    Text(mockTestData.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .lineLimit(2)
                    
                    Spacer()
                        .frame(height: 5)
                    
                    Text(mockTestData.description)
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                    
                    Spacer()
                        .frame(height: 20)
                }
                Text(rupeeSymbol+mockTestData.sellingPrice)
                    .bold()
                    .font(.title3)
                    .foregroundColor(.green)
                
                
            }
            
            Spacer()
                .frame(height: 60)
            
            HStack(spacing: 80){
                VStack{
                    Text("180")
                        .font(.title2)
                        
                    Text("MARKS")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                VStack{
                    Text("75")
                        .font(.title2)

                    
                    Text("MINS")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                VStack{
                    Text("60")
                        .font(.title2)

                    
                    Text("QUESTION")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            
            Spacer()
                .frame(height: 40)
            
            
            Link(destination: mockTestData.url) {
                Text("ENROLL NOW!")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color(.systemGreen))
                    .bold()
                    .cornerRadius(10)
            }

            
            
        }.padding(20)
    }
}

struct MockTextDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MockTextDetailsView(
            mockTestData: MockTestList.mockDataList.first!
        )
    }
}
