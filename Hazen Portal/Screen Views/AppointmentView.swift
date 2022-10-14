//
//  AppointmentView2.swift
//  Hazen Portal
//
//  Created by Corey Bright on 10/12/22.
//

import SwiftUI

struct AppointmentView: View {
        @State private var locationPicked: String = "Select a location"
        @State private var reasonPicked: String = "Reason for visit"
        
        @State private var date = Date()
        @State private var menuShowing = false
        

            
        var body: some View {
            
            
                VStack {
                    ScrollView {
                        HeaderView()
                        if (menuShowing == false) {
                            
                            
                            Button {
                                menuShowing = true
                            } label: {
                                
                                Image(systemName: "arrow.right")
                                    .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                                    .padding([.leading], 15)
                            }
                            Group {
                                Text("Create an appointment")
                                    .font(.myHazen)
                                    .foregroundColor(Color("AccentColor"))
                                    .padding([.bottom], 15)
                                
                                Group {
                                    
                                    //Text/Menu 1 ----
                                    
                                    Text("Location")
                                        .font(.loginPrompt)
                                        .foregroundColor(Color("AccentColor"))
                                    
                                    Menu {
                                        Button(action: {
                                            locationPicked = "Hazen Center"
                                        }, label: {
                                            Text("Hazen Center")
                                        })
                                        Button(action: {
                                            locationPicked = "Zoom"
                                        }, label: {
                                            Text("Zoom")
                                        })
                                    }
                                    // menu label
                                label: {
                                    Label (title: {Text("\(locationPicked)").font(.loginPrompt) },
                                           icon: {Image(systemName: "chevron.down")}
                                    )
                                    .frame(width:215, height: 40)
                                    .foregroundColor(Color("Background"))
                                    .background(Color("AccentColor"))
                                    .cornerRadius(8)
                                }
                                    
                                    
                                    //Text Menu 2 ----
                                    Text("Reason")
                                        .font(.loginPrompt)
                                        .foregroundColor(Color("AccentColor"))
                                    
                                    
                                    Menu {
                                        
                                        Button(action: {
                                            reasonPicked = "Reason 1"
                                            
                                        }, label: {
                                            Text("Reason 1")
                                            
                                        })
                                        Button(action: {
                                            reasonPicked = "Reason 2"
                                        }, label: {
                                            
                                            Text("Reason 2")
                                                .foregroundColor(Color("AccentColor"))
                                        })
                                        Button(action: {
                                            reasonPicked = "Reason 3"
                                        }, label: {
                                            Text("Reason 3")
                                                .foregroundColor(Color("AccentColor"))
                                        })
                                        
                                        Button(action: {
                                            reasonPicked = "Reason for visit"
                                        }, label: {
                                            Text("Reason for visit")
                                        })
                                        
                                    } label: {
                                        Label (title: {Text("\(reasonPicked)").font(.loginPrompt) },
                                               icon: {Image(systemName: "chevron.down")}
                                        )
                                        
                                        .frame(width:215, height: 40)
                                        .foregroundColor(Color("Background"))
                                        .background(Color("AccentColor"))
                                        .cornerRadius(8)
                                    }
                                    
                                    
                                    
                                    //Text menu 2 end --
                                    
                                }// every text menu  - group
                                
                                
                            } .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                                .border(.red)
                                .padding([.leading], 15)
                        } else {
                            
                            VStack {
                                
                                Button {
                                    menuShowing = false
                                } label: {
                                    
                                    Image(systemName: "arrow.down")
                                        .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                                        .padding([.leading], 15)
                                }
                                Group {
                                
                                    Text("Create an appointment")
                                        .font(.myHazen)
                                        .foregroundColor(Color("AccentColor"))
                                        .padding([.bottom], 15)
                                    
                                    
                                    Group {
                                        
                                        //Text/Menu 1 ----
                                        
                                        Text("Location")
                                            .font(.loginPrompt)
                                            .foregroundColor(Color("AccentColor"))
                                        
                                        Menu {
                                            Button(action: {
                                                locationPicked = "Hazen Center"
                                            }, label: {
                                                Text("Hazen Center")
                                            })
                                            Button(action: {
                                                locationPicked = "Zoom"
                                            }, label: {
                                                Text("Zoom")
                                            })
                                        }
                                        // menu label
                                    label: {
                                        Label (title: {Text("\(locationPicked)").font(.loginPrompt) },
                                               icon: {Image(systemName: "chevron.down")}
                                        )
                                        .frame(width:215, height: 40)
                                        .foregroundColor(Color("Background"))
                                        .background(Color("AccentColor"))
                                        .cornerRadius(8)
                                    }
                                        
                                        
                                        //Text Menu 2 ----
                                        Text("Reason")
                                            .font(.loginPrompt)
                                            .foregroundColor(Color("AccentColor"))
                                        
                                        
                                        Menu {
                                            
                                            Button(action: {
                                                reasonPicked = "Reason 1"
                                                
                                            }, label: {
                                                Text("Reason 1")
                                                
                                            })
                                            Button(action: {
                                                reasonPicked = "Reason 2"
                                            }, label: {
                                                
                                                Text("Reason 2")
                                                    .foregroundColor(Color("AccentColor"))
                                            })
                                            Button(action: {
                                                reasonPicked = "Reason 3"
                                            }, label: {
                                                Text("Reason 3")
                                                    .foregroundColor(Color("AccentColor"))
                                            })
                                            
                                            Button(action: {
                                                reasonPicked = "Reason for visit"
                                            }, label: {
                                                Text("Reason for visit")
                                            })
                                            
                                        } label: {
                                            Label (title: {Text("\(reasonPicked)").font(.loginPrompt) },
                                                   icon: {Image(systemName: "chevron.down")}
                                            )
                                            
                                            .frame(width:215, height: 40)
                                            .foregroundColor(Color("Background"))
                                            .background(Color("AccentColor"))
                                            .cornerRadius(8)
                                        }
                                        
                                        
                                        
                                        //Text menu 2 end --
                                        
                                    }// every text menu  - group
                            
                                    
                                } .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                                    .border(.red)
                                    .padding([.leading], 15)
                                    .blur(radius: 5) // blurs screen
                                    .disabled(true) // makes screen non interactable
                                
                                CondensedMenuView()
                                    .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .center)
                                      //  .border(.red)
                                        .padding([.top], -200)
                              
                    
                                    
                            }
                            
                            
                        }
                    
                }
               // .border(.red)
                
            } .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(Color("Background"))
                
                
             //   .border(.red)
            
        }
}

struct AppointmentView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentView()
    }
}
