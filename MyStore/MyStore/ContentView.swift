
import SwiftUI
//ipaファイルはWebインスペクタを利用してiPhoneから取得
//Slackのbotを利用

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                HStack {
                    URLImageView(viewModel: .init(url: ""))
                        .cornerRadius(15)
                        .frame(width: 70,height: 70)
                        .shadow(radius: 0.5)
                    VStack(alignment: .leading) {
                        Text("My Maps")
                        Text("Version 1.0")
                            .font(.callout)
                            .foregroundColor(Color.gray)
                    }
                    Spacer()
                    Link(destination: URL(string: "")!) {
                        Text("インストール")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .padding(.vertical, 5.0)
                            .padding(.horizontal, 10.0)
                            .background(Color.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                    }
                }
            }.navigationTitle("Store")
            .toolbar {
                Button(action: {
                }) {
                    Text("更新")
                }
                /*
                    Image("appstore.rectangle")
                        .renderingMode(.template)
                        .foregroundColor(.blue)
 */
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
