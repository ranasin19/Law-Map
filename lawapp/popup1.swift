//
//  popup1.swift
//  lawapp
//
//  Created by rana omar zaheri on 15/06/1444 AH.
//

import SwiftUI

struct popup1: View {
    var title: String
    var message: String
    var buttonText: String
    @Binding var showPopover: Bool
    @State private var showSheet: Bool = false

    var body: some View {
        ZStack{
            
            // PopUp Window
            VStack(alignment: .center, spacing: 8) {
                
                Spacer()
                Image(systemName: "exclamationmark.shield")
                    .resizable()
                    .frame(width: 40, height: 47)
                    .foregroundColor(.red)
             
                
                Text("You Are Near An Islamic Mosque")
                    .accessibilityLabel(Text("You Are Near An Islamic Mosque"))
                
                Text("Dont Play Music During Prayer Times")
                
                    .bold()
                    .font(Font.system(size: 16))
                    .accessibilityLabel(Text("Dont Play Music During Prayer Times"))
                Text("1000 SAR")
                    .accessibilityLabel(Text("1000 SAR"))
                    .padding(.bottom, 10)
                Spacer()
                
                HStack{
                    Image(systemName: "person.3.fill")
                        .resizable()
                        .frame(width: 27, height: 14)
                        .foregroundColor(.blue)
                    
                    Text("Violation rates 25% ")
                        .accessibilityLabel(Text("Violation rates 25% "))
                }
                Spacer()
                RoundedRectangle(cornerRadius: 0)
                    .stroke(Color.black, lineWidth: 0.2)
                
                    .frame(width: 400, height: 1)
                    .opacity(0.5)
                
                HStack{
                Button(action: {
                    // Dismiss the PopUp
                    withAnimation(.linear(duration: 0.3)) {
                        showPopover = false
                    }
                }, label: {
                    
                    Text("Ok")
                        .accessibilityLabel(Text("ok"))
                        .padding(.horizontal, 40)
                        .frame(height: 30, alignment: .center)
                        .foregroundColor(Color.blue)
                        .bold()
                        .font(Font.system(size: 20))
                    
                })
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(Color.black, lineWidth: 0.2)
                    
                        .frame(width: 0.4, height: 40)
                        .opacity(0.5)
                    
                    Button  { print("s")
                        showSheet.toggle()
                          
                       } label: {
                           
                           Text("More")
                               .accessibilityLabel(Text("More"))
                               .padding(.horizontal, 40)
                               .frame(height: 30, alignment: .center)
                               .foregroundColor(Color.blue)
                               .bold()
                               .font(Font.system(size: 20))
                               .sheet(isPresented: $showSheet) {
                                
                               
                                   VStack( spacing: 20
                                   ) {
                                     
                                       Text("About")
                                           .accessibilityLabel(Text("Search Location"))
                                           .foregroundColor(.blue)
                                       
                                     
                                       Text("Playing music during prayer times 1000 SAR")
                                           .accessibilityLabel(Text("Playing music during prayer times 1000 SAR"))
                                           .bold()
                                           .foregroundColor(.black)
                                           .font(Font.system(size:21))
                                           .multilineTextAlignment(.center)
                                       Text("The financial penalty shall be doubled when the violation is repeated and be  2000 SAR")
                                           .accessibilityLabel(Text("The financial penalty shall be doubled when the violation is repeated and be  2000 SAR"))
                                           .multilineTextAlignment(.center)
                                           .foregroundColor(.black)
                                       Divider()
                                       Text("For Violation Inquiry: ")
                                           .accessibilityLabel(Text("For Violation Inquiry:"))
                                           .foregroundColor(.black)
                                       HStack{
                                           Text("Visit")
                                               .accessibilityLabel(Text("Visit"))
                                               .foregroundColor(.black)
                                       
                                           Link("efaa", destination: URL(string: "https://efaa.sa")!)
                                               .accessibilityLabel(Text("efaa"))
                                           VStack(spacing: -44){
                                               Text("to check and review all your  ")
                                                   .accessibilityLabel(Text("to check and review all your  "))
                                                   .foregroundColor(.black)
                                                   .presentationDetents([.large, .medium, .fraction(0.75)])
                                        
                                           
                                           }
                                       
                                   }
                                   .padding()
                                       Text("violations in the government agencies.")
                                           .accessibilityLabel(Text("violations in the government agencies."))
                                           .foregroundColor(.black)
                               }
                                   
                       }
                           
                       }
                       }
                .buttonStyle(PlainButtonStyle()).cornerRadius(20)
            }
            .frame(maxWidth: 290, maxHeight: 230).padding(30)
            .background(.white).cornerRadius(29)
            .shadow(color:Color.gray, radius: 10, x: 0, y: 2)
           
        }
    }
}
struct popup1_Previews: PreviewProvider {
    static var previews: some View {
        popup1(title: "Error", message: "Sorry, that email address is already used!", buttonText: "OK", showPopover: Binding<Bool>.constant(true))
    }
}
