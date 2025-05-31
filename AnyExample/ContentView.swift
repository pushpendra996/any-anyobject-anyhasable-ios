//
//  ContentView.swift
//  AnyExample
//
//  Created by Pushpendra on 31/05/25.
//

import SwiftUI

struct ContentView: View {
    


    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear() {
            
        }
    }
}

class ModelClass : ObservableObject {
    @Published var text : String = ""
    
    var anything: Any = 42
    func someFunction() {
        print("Anything: \(self.anything)")
        self.anything = "Pushpendra"
        self.anything = true
        
        if self.anything is String {
            
        } else if self.anything is Int {
            
        } else {
            
        }
    }
    var anyObject : AnyObject = A()
    func anotherFunction() {
        anyObject = B() as AnyObject
    }
    
    
    var user : [AnyHashable : Any] = [:]
    func setUser() {
        user["name"] = "Pushpendra"
        user["age"] = 25
        user[25] = "Age"
    }
}

class A  {
    let name : String = "Pushpendra"
}

struct B  {
    let dob : String = "11-June-1994"
}

#Preview {
    ContentView()
}


