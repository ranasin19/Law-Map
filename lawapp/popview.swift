//
//  popview.swift
//  lawapp
//
//  Created by rana omar zaheri on 17/06/1444 AH.
//

import SwiftUI

struct popview: View {
    @State private var showPopover: Bool = false
    var body: some View {
        
        
        Text("Show The Law")
            
            .frame(width:200, height:33)
            
            .onTapGesture {
                self.showPopover = true
            }
        if(showPopover){
           popup1(title: "Error", message: "Sorry, that email address is already used!", buttonText: "OK", showPopover: $showPopover)
           
       }
    }
}

struct popview_Previews: PreviewProvider {
    static var previews: some View {
        popview()
    }
}
