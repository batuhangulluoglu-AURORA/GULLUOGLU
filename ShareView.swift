import SwiftUI

struct ShareView: View {
    let fortune: String

    var body: some View {
        VStack {
            Text(fortune)
                .font(.largeTitle)
                .padding()
            Button(action: shareFortune) {
                Text("Share on Social Media")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }

    func shareFortune() {
        let activityViewController = UIActivityViewController(activityItems: [fortune], applicationActivities: nil)
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let rootViewController = windowScene.windows.first?.rootViewController {
            rootViewController.present(activityViewController, animated: true, completion: nil)
        }
    }
}

struct ShareView_Previews: PreviewProvider {
    static var previews: some View {
        ShareView(fortune: "Your future is bright!")
    }
}