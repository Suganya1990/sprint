//
//  ContentView.swift
//  TimeMySprint Watch App
//
//  Created by Suganya Maheswaran on 2025-04-09.
//

import SwiftUI


struct LoadingCircleView: View {
    @State private var isLoading = false
    var body: some View{
        ZStack{
            Image("Logo")
                .resizable()
                .frame(width: 150, height: 100)
            Circle()
                .trim(from: 0, to: 0.2)
                .stroke(.tint, lineWidth: 10)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                .animation(Animation.linear(duration: 2).repeatCount(2, autoreverses: false), value: self.isLoading)
                .onAppear() {
                    self.isLoading = true
                }
                .onDisappear(){
                   
                   
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background{
            Color.white
                .ignoresSafeArea()
                
        }
    }
}


struct MenuView: View{
    var body: some View{
        VStack{
            HStack {
               Text("Time My Sprint")
            }
            .foregroundStyle(.black)
            .multilineTextAlignment(.leading)
            Button("40 Meter", action: {getMeters(meter:50)})
                .foregroundColor(.blue)
            Button("100Meter", action: {getMeters(meter:100)})
                .foregroundColor(.blue)
            Button("Custom", action: {getMeters(meter:100)})
                .foregroundColor(.blue)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background{
            Color.white
                .ignoresSafeArea()
                
        }
    }
}
struct CountDownView: View{
    var body: some View{
        Text("this Works")
    }
}
func getMeters(meter: Int){
    print(meter)
}
#Preview {
    CountDownView()
}
