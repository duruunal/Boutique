//
//  LoginView.swift
//  Boutique
//
//  Created by Student on 2022-05-29.
//

import SwiftUI
struct LoginView: View {
    @State var showingSignup = false // pour alterner entre sign i et sign up
    @State var email = ""
    @State var password = ""
    @State var repeatPassword = ""
    
    var body: some View {
        VStack {
            Text("Sign In")
                .fontWeight(.heavy)
                .font(.largeTitle)
                .padding([.bottom, .top], 20)
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("Email")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(Color.init(.label))
                        .opacity(0.75)
                    TextField("Enter your email", text: $email)
                    Divider()
                    Text("Password")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(Color.init(.label))
                        .opacity(0.75)
                    
                    SecureField("Enter your password", text: $password)
                    Divider()
                    
                    if showingSignup {
                        Text("Repeat Password")
                            .font(.headline)
                            .fontWeight(.light)
                            .foregroundColor(Color.init(.label))
                            .opacity(0.75)
                        
                        SecureField("Repeat password", text: $repeatPassword)
                        Divider()
                    }
                }
                .padding(.bottom, 15)
                .animation(.easeOut(duration: 0.1))
                //Fin du VStack
                HStack {
                    
                    Spacer()
                    
                    Button(action: {
                        
                        self.resetPassword()
                    }, label: {
                        Text("Forgot Password?")
                            .foregroundColor(Color.gray.opacity(0.5))
                    })
                }//Fin du HStack
                
            } .padding(.horizontal, 6)
            //Fin du VStack
            Button(action: {

                self.showingSignup ? self.signUpUser() : self.loginUser()
            }, label: {
                Text(showingSignup ? "Sign Up" : "Sign In")
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 120)
                    .padding()
            }) //Fin du  Button
                .background(Color.blue)
                .clipShape(Capsule())
                .padding(.top, 45)
            
            SignUpView(showingSignup: $showingSignup)
    
        }//Fin du VStack
        
    }//Fin du body

    private func loginUser()
    {// à compléter
        
    }
    private func signUpUser()
    {// à compléter
        
    }
    private func resetPassword()
    {// à compléter
        
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


struct SignUpView : View {
    @Binding var showingSignup: Bool
    var body: some View {
        VStack {
            Spacer()
            HStack(spacing: 8) {
                Text("Don't have an Account?")
                    .foregroundColor(Color.gray.opacity(0.5))
                Button(action: {
                    self.showingSignup.toggle()
                }, label: {
                    Text("Sign Up")
                })
                    .foregroundColor(.blue)
            }//Fin de HStack
                .padding(.top, 25)
        } //Fin de VStack
    }
}
