import SwiftUI

struct ContentView: View {
    @State private var fortuneText: String = ""
    @State private var isAnimating: Bool = false

    var body: some View {
        VStack {
            Text("Coffee Fortune Teller")
                .font(.largeTitle)
                .padding()  

            // Coffee Cup Animation
            Image("coffeeCup")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .rotationEffect(.degrees(isAnimating ? 360 : 0))
                .animation(.linear(duration: 2).repeatForever(autoreverses: false), value: isAnimating)
                .onAppear {
                    isAnimating = true
                }
            
            // Fortune Display
            Text(fortuneText)
                .font(.title2)
                .padding()
                .multilineTextAlignment(.center)

            // Share Button
            Button(action: shareFortune) {
                Text("Share Your Fortune")
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }

    func shareFortune() {
        // Implementation for sharing fortune
        let activityViewController = UIActivityViewController(activityItems: [fortuneText], applicationActivities: nil)
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let rootViewController = windowScene.windows.first?.rootViewController {
           rootViewController.present(activityViewController, animated: true, completion: nil)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}