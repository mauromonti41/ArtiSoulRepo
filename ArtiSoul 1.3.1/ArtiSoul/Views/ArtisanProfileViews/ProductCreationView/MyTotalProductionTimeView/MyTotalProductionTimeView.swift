//
//  MyTotalProductionTimeView.swift
//  ArtiSoul
//
//  Created by Mauro Monti on 06/03/22.
//

import SwiftUI

struct MyTotalProductionTimeView: View {
    
    @EnvironmentObject var phasesViewModel : PhaseViewModel
    let product_totProd : LocalizedStringKey = "text 36" //my total production time
    let totalProdTime_prodPhases : LocalizedStringKey = "totalProdTime_prodPhases" //production phases
    @State var numOfPhases : Int = 1
  
    
    var body: some View {
        ZStack{
            Color("gray1")
                .ignoresSafeArea()
            GeometryReader{_ in
            VStack(spacing: 25){
                HStack{
                    HStack{
                        Text(totalProdTime_prodPhases)
                        Text(": \(numOfPhases)")
                    }
                    .frame(maxWidth:.infinity,alignment: .leading)
                    .padding(.leading,16)
                    Stepper(value: $numOfPhases, in: 0...10){
                    }
                    .frame(maxWidth:.infinity,alignment: .leading)
                    .padding(.trailing,16)
                }
                .frame(height: 54)
                .background(.white)
                
                VStack(spacing: 0){
                    ForEach(phasesViewModel.phases){item in
                        if(item.phaseNumber <= numOfPhases){
                            
                            NavigationLink(destination: PhaseEditingView(phaseNumber: item.phaseNumber)){
                                HStack{
                                    if(item.phaseName != ""){
                                        Text("\(item.phaseName)")
                                            .foregroundColor(.black)
                                            .frame(maxWidth : .infinity, alignment: .leading)
                                            .padding(.leading,16)
                                    }
                                    else{
                                        Text(item.localizedPhaseName)
                                            .foregroundColor(.black)
                                            .frame(maxWidth : .infinity, alignment: .leading)
                                            .padding(.leading,16)
                                    }
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.secondary)
                                        .frame(maxWidth : .infinity, alignment: .trailing)
                                        .padding(.trailing,16)
                                }
                                .frame(height: 54)
                                .background(.white)
                            }
                        }
                    }
                }
            }.padding(.top, 25)
            }
        }
        .padding(.top, 50)
        .navigationTitle(product_totProd)
    }
}

struct MyTotalProductionTimeView_Previews: PreviewProvider {
    static var previews: some View {
        MyTotalProductionTimeView()
    }
}
