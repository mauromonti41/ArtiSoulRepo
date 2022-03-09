//
//  PhaseEditingView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 06/03/22.
//

import SwiftUI

struct PhaseEditingView: View {
    @EnvironmentObject var phasesViewModel : PhaseViewModel
    @State var phaseNumber : Int
    @State var newPhaseName : String = ""
    
    let quote1:LocalizedStringKey="quote_nameOfProdPhase"
    let quote2:LocalizedStringKey="quote_timeOfProdPhase"
    let quote3:LocalizedStringKey="hours_ProdPhase"
    let quote4:LocalizedStringKey="quote_videoOfProdPhase1"
    let quote5:LocalizedStringKey="quote_videoOfProdPhase2"
    let quote6:LocalizedStringKey="quote_addAvideo"
    
    @State var selectedHours : Int = 0
    @State var selectedMinutes : Int = 0
    @State var videoDuration : Int = 0
    
    var body: some View {
        
        ZStack{
            Color("gray1")
                .ignoresSafeArea()
            GeometryReader{_ in
                VStack{
                    Text(quote1)
                        .fontWeight(.regular)
                        .font(.system(size: 15))
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,16)
                    TextField("Text", text: $newPhaseName)
                        .padding(.top,6)
                        .frame(maxWidth: .infinity , alignment: .leading)
                        .frame(height: 54)
                        .padding(.leading,16)
                        .background(.white)
                    Text(quote2)
                        .fontWeight(.regular)
                        .font(.system(size: 15))
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.top,16)
                        .padding(.leading,16)
                    HStack{
                        Text(quote3)
                            .frame(maxWidth: .infinity,alignment: .leading)
                            .padding(.leading,16)
                        NavigationLink(destination: HourPickerView(selectedHours: $selectedHours, selectedMinutes: $selectedMinutes)){
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color("gray1"))
                                Text("\(selectedHours):\(selectedMinutes)")
                                    .foregroundColor(.accentColor)
                            }.frame(width: 100, height: 36)
                        }
                        .frame(maxWidth: .infinity,alignment: .trailing)
                        .padding(.trailing,16)
                    }
                    .padding(.top,6)
                    .frame(maxWidth: .infinity , alignment: .leading)
                    .frame(height: 54)
                    .background(.white)
                    HStack{
                        Text(quote4)
                            .fontWeight(.regular)
                            .font(.system(size: 15))
                        Text("\(videoDuration)")
                            .fontWeight(.regular)
                            .font(.system(size: 15))
                        Text(quote5)
                            .fontWeight(.regular)
                            .font(.system(size: 15))
                        }
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,16)
                        .padding(.top,16)
                    PhaseVideoView()
                        .padding(.top,6)
                    Button(action:{}){
                    Text(quote6)
                    }
                    .padding(.top,16)
                    .frame(maxWidth: .infinity,alignment: .center)
                }
            }.padding(.top,25)
        }.padding(.top,50)
        
    }
}

//struct PhaseEditingView_Previews: PreviewProvider {
//    static var previews: some View {
//        PhaseEditingView()
//    }
//}
