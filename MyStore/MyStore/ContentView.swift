
import SwiftUI
//ipaファイルはWebインスペクタを利用してiPhoneから取得
//Slackのbotを利用

struct ContentView: View {
    let mymapsURL: URL = URL(string: "https://deploygate.com/iphone/users/titanium-applewatch/platforms/ios/apps/com.app.MyMaps/binaries/2")!;
    var body: some View {
        NavigationView {
            List {
                HStack {
                    URLImageView(viewModel: .init(url: "https://deploygate.s3.ap-northeast-1.amazonaws.com/icons/176386_cb86e76f3d773660e450f0a70d5a459cc65069b8/icon.png"))
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
                    Link(destination: URL(string: "itms-services://?action=download-manifest&url=https%3A%2F%2Fdeploygate.com%2Fiphone%2Fusers%2Ftitanium-applewatch%2Fplatforms%2Fios%2Fapps%2Fcom.app.MyMaps%2Fbinaries%2F1%2Finstall_sessions%2Fiosis_b22e2785f266c25650922b844ddc8b04%2Fdistribution_plist")!) {
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
