import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//            
//            Button("버튼", action: {
//                print("asdf")
//            })
//            
//        }
//        .padding()
//    }
//}



struct ContentView: View {
    var body: some View {
      ZStack {
            Text("asdf")
                .background(.red)
            Text("asdfasfdasfafa")
                .background(.yellow)
            Text("asdf")
                .background(.blue)
        }
    }
}













#Preview {
    ContentView()
}
