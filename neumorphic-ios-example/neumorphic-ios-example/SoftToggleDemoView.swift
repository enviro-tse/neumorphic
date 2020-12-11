//
//  SoftToggleDemoView.swift
//  neumorphic-ios-example
//
//  Created by Costa Chung on 11/12/2020.
//  Copyright © 2020 Costa Chung. All rights reserved.
//

import SwiftUI
import Neumorphic

struct SoftToggleDemoView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    @State var toggleIsOn : Bool = false
    
    var body: some View {
        Neumorphic.shared.colorScheme = colorScheme
        return ZStack {
            Neumorphic.shared.mainColor().edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack(spacing:8){
                    Text("softSwitchToggleStyle")
                    HStack(spacing:15) {
                        Spacer()
                        Toggle(isOn: $toggleIsOn, label: {
                            Text("Toggle Switch")
                        })
                        .softSwitchToggleStyle(tint: .green)
                        Spacer()
                    }
                    .padding()
                
                    
                    Text("softToggleStyle")

                    //Play Button
                    HStack(spacing:15) {
                        Toggle(isOn: $toggleIsOn, label: {
                            if toggleIsOn {
                                Image(systemName: "stop.fill")
                            }
                            else{
                                Image(systemName: "play.fill")
                            }
                        })
                        .softToggleStyle(Circle())
                    }

                    
                    //Rect
                    HStack(spacing:15) {
  
                        Toggle(isOn: $toggleIsOn, label: {
                            Text("Rect")
                        })
                        .softToggleStyle(Rectangle())
                        
                        Toggle(isOn: $toggleIsOn, label: {
                            Text("Rect")
                        })
                        .softToggleStyle(Rectangle(), pressedEffect: .flat)
                    }
                    .padding()
                    
                    //Rounded
                    HStack(spacing:15) {
                        Toggle(isOn: $toggleIsOn, label: {
                            Text("Rounded Rect")
                        })
                        .softToggleStyle(RoundedRectangle(cornerRadius: 8))
                        
                        Toggle(isOn: $toggleIsOn, label: {
                            Text("Rounded Rect")
                        })
                        .softToggleStyle(RoundedRectangle(cornerRadius: 8), pressedEffect: .flat)
                    }
                    .padding()
                    
                    //Capsule
                    HStack(spacing:15) {
                        Toggle(isOn: $toggleIsOn, label: {
                            Text("Capsule")
                        })
                        .softToggleStyle(Capsule())
                        
                        Toggle(isOn: $toggleIsOn, label: {
                            Text("Capsule")
                        })
                        .softToggleStyle(Capsule(), pressedEffect: .flat)
                    }
                    .padding()
                     
                    //Circle
                    HStack(spacing:15) {
                        Toggle(isOn: $toggleIsOn, label: {
                            Text("Circle")
                        })
                        .softToggleStyle(Circle(), padding: 20)
                        
                        Toggle(isOn: $toggleIsOn, label: {
                            Text("Circle")
                        })
                        .softToggleStyle(Circle(), padding: 20, pressedEffect: .flat)
                    }
                    .padding()
                    
                    
                }
            }
            
        }
    }
}

struct SoftToggleDemoView_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            NavigationView {
                SoftToggleDemoView()
                    .navigationBarTitle("Toggle Demo")
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environment(\.colorScheme, .light)
        }
    }
}
