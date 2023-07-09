//
//  ContentView.swift
//  Biography
//
//  Created by Enya Do on 3/7/23.
//

import SwiftUI

struct ContentView: View {
    //PART 2B - Create booleans to track your sheet visibility
    @State private var showSheet1 = false
    @State private var showSheet2 = false
    @State private var showSheet3 = false
    @State private var showSheet4 = false

    var body: some View {
        //PART1A - Design your header
        VStack {
            Text("All about Rohan")
                .font(.largeTitle)
                .padding()
            Image("pfp")
                .resizable()
                .scaledToFit()
                .padding()
        }
        
        Spacer()
        //PART1B - Add your form containing your buttons
        //create a form with a button that says "My favorite food" and another button that says "My favorite place"
        Form{
            Button("My favorite food") {
                showSheet1.toggle()
            }.padding().background(Color.blue).foregroundColor(.white).cornerRadius(10).sheet(isPresented: $showSheet1) {
                    Sheet1() }
            Button("My favorite place") {
                showSheet2.toggle()
            }.padding().background(Color.blue).foregroundColor(.white).cornerRadius(10)
            .sheet(isPresented: $showSheet2) {
                    Sheet2() }
            Button ("My favorite color") {
                showSheet3.toggle()
            }.padding().background(Color.blue).foregroundColor(.white).cornerRadius(10)
            .sheet(isPresented: $showSheet3) {
                    Sheet3()}
            Button("My favorite sport") {
                showSheet4.toggle()
            }.padding().background(Color.blue).foregroundColor(.white).cornerRadius(10)
            .sheet(isPresented: $showSheet4) {
                    Sheet4() }
        }


        }
    }


//PART2A - Creating a sheet
struct Sheet1: View {
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        //Add some content to the body of your sheet!
        //Remember to include a button that just calls dismiss() in the action
        //create a title called "My favorite food", a body that says "dosa" and a button that says "Close"
        VStack {
            Text("My favorite food")
                .font(.largeTitle)
                .padding()
            Text("Dosa")
                .font(.title)
                .padding()
            Button("Close") {
                dismiss()
            }
        }
    }

}

struct Sheet2: View {
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        //Add some content to the body of your sheet!
        //Remember to include a button that just calls dismiss() in the action
        //create a title called "My favorite place", a body that says "home" and a button that says "Close"
        VStack {
            Text("My favorite place")
                .font(.largeTitle)
                .padding()
            Text("Home")
                .font(.title)
                .padding()
            Button("Close") {
                dismiss()
            }
        }
    }

}

struct Sheet3: View {
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        //Add some content to the body of your sheet!
        //Remember to include a button that just calls dismiss() in the action
        //create a title called "My favorite color", a body that says "blue" and a button that says "Close"
        VStack {
            Text("My favorite color")
                .font(.largeTitle)
                .padding()
            Text("Blue")
                .font(.title)
                .padding()
            Button("Close") {
                dismiss()
            }
        }
    }

}

struct Sheet4: View {
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        //Add some content to the body of your sheet!
        //Remember to include a button that just calls dismiss() in the action
        //create a title called "My favorite sport", a body that says "soccer" and a button that says "Close"
        VStack {
            Text("My favorite sport")
                .font(.largeTitle)
                .padding()
            Text("Soccer")
                .font(.title)
                .padding()
            Button("Close") {
                dismiss()
            }
        }
    }
}

// As a reminder the code below displays a live preview of your app, feel free to comment out or delete it!
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
