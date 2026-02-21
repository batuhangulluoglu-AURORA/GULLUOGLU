import SwiftUI

struct HistoryView: View {
    let fortunes: [(date: String, fortune: String)]

    var body: some View {
        List(fortunes, id: \0.date) { fortune in
            VStack(alignment: .leading) {
                Text(fortune.fortune)
                    .font(.headline)
                Text(fortune.date)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .navigationTitle("Fortune History")
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(fortunes: [
            (date: "2026-02-21 04:07:24", fortune: "Your code will run successfully!"),
            (date: "2026-02-20 18:45:00", fortune: "Good fortune is on the way!"),
        ])
    }
}