//
//  HourPickerView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 07/03/22.
//

import SwiftUI

struct HourPickerView: View {
    
    @Binding var selectedHours : Int
    @Binding var selectedMinutes : Int
    
    @State var hoursArray = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24]
    @State var minutesArray = [0,10,20,30,40,50]
    
    var body: some View {
        ZStack{
            Color("gray1")
                .ignoresSafeArea()
            VStack{
                Text("Hours")
                    .fontWeight(.heavy)
                Picker("Hours", selection: $selectedHours) {
                    ForEach(0...hoursArray.count-1,id: \.self){i in
                        Text("\(hoursArray[i])").tag("\(i)")
                    }
                }
                .pickerStyle(WheelPickerStyle())
                Text("Minutes")
                    .fontWeight(.heavy)
                Picker("Minutes", selection: $selectedMinutes) {
                    ForEach(0...minutesArray.count-1,id: \.self){i in
                        Text("\(minutesArray[i])").tag("\(i)")
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }.padding(.top,25)
        }.padding(.top,50)
    }
}

//struct HourPickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        HourPickerView()
//    }
//}
