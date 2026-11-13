import SwiftUI

struct Question: Identifiable {
    let id: Int
    let lesson: Int
    let vietnamese: String
    let answers: [String]
    let explanation: String
    let focus: String
}

enum PracticeData {
    static let questions: [Question] = [
        Question(id: 1, lesson: 1, vietnamese: "Tôi là người Việt Nam.", answers: ["わたしは ベトナムじんです。", "わたしはベトナムじんです。"], explanation: "です kết thúc câu danh từ; は đánh dấu chủ đề.", focus: "は / です"),
        Question(id: 2, lesson: 1, vietnamese: "Anh Tan không phải là giáo viên.", answers: ["タンさんは せんせいじゃありません。", "タンさんはせんせいではありません。", "タンさんは せんせいではありません。"], explanation: "じゃありません / ではありません diễn tả phủ định danh từ.", focus: "じゃありません"),
        Question(id: 3, lesson: 2, vietnamese: "Đây là quyển sách của tôi.", answers: ["これは わたしの ほんです。", "これはわたしのほんです。"], explanation: "これ chỉ vật ở gần người nói; の chỉ sở hữu.", focus: "これ / の"),
        Question(id: 4, lesson: 2, vietnamese: "Cái kia là từ điển phải không?", answers: ["あれは じしょですか。", "あれはじしょですか。"], explanation: "あれ chỉ vật ở xa cả người nói và người nghe; か tạo câu hỏi.", focus: "あれ / か"),
        Question(id: 5, lesson: 3, vietnamese: "Nhà vệ sinh ở đâu?", answers: ["トイレは どこですか。", "トイレはどこですか。"], explanation: "どこ dùng để hỏi địa điểm.", focus: "どこ"),
        Question(id: 6, lesson: 3, vietnamese: "Phòng học ở tầng hai.", answers: ["きょうしつは 2かいです。", "きょうしつはにかいです。"], explanation: "かい là đơn vị đếm tầng; 2かい là tầng hai.", focus: "Số tầng"),
        Question(id: 7, lesson: 4, vietnamese: "Bây giờ là 7 giờ.", answers: ["いま 7じです。", "いまななじです。", "いま しちじです。"], explanation: "いま là bây giờ; 7じ đọc là しちじ.", focus: "Giờ"),
        Question(id: 8, lesson: 4, vietnamese: "Tôi học từ 9 giờ đến 5 giờ.", answers: ["わたしは 9じから 5じまで べんきょうします。", "わたしは9じから5じまでべんきょうします。"], explanation: "から chỉ điểm bắt đầu, まで chỉ điểm kết thúc.", focus: "から / まで"),
        Question(id: 9, lesson: 5, vietnamese: "Ngày mai tôi đi Tokyo.", answers: ["あした とうきょうへ いきます。", "あしたとうきょうにいきます。", "あした とうきょうに いきます。"], explanation: "へ hoặc に có thể chỉ hướng đến với động từ di chuyển.", focus: "へ / に"),
        Question(id: 10, lesson: 5, vietnamese: "Tôi đi bằng tàu điện.", answers: ["でんしゃで いきます。", "でんしゃでいきます。"], explanation: "で chỉ phương tiện di chuyển.", focus: "で"),
        Question(id: 11, lesson: 6, vietnamese: "Tôi ăn cơm.", answers: ["わたしは ごはんを たべます。", "ごはんをたべます。"], explanation: "を đánh dấu tân ngữ trực tiếp của たべます.", focus: "を"),
        Question(id: 12, lesson: 6, vietnamese: "Bạn có uống cà phê không?", answers: ["コーヒーを のみますか。", "コーヒーをのみますか。"], explanation: "のみますか là câu hỏi lịch sự của động từ のみます.", focus: "ますか"),
        Question(id: 13, lesson: 7, vietnamese: "Tôi viết thư bằng bút.", answers: ["ペンで てがみを かきます。", "ペンでてがみをかきます。"], explanation: "で chỉ công cụ; を đánh dấu vật được viết.", focus: "で / を"),
        Question(id: 14, lesson: 7, vietnamese: "Tôi nhận quà từ bạn.", answers: ["ともだちに プレゼントを もらいました。", "ともだちからプレゼントをもらいました。"], explanation: "もらいます diễn tả nhận; に hoặc から chỉ người trao.", focus: "もらいます"),
        Question(id: 15, lesson: 8, vietnamese: "Tokyo là thành phố đông vui.", answers: ["とうきょうは にぎやかな まちです。", "とうきょうはにぎやかなまちです。"], explanation: "Tính từ な đứng trước danh từ cần な.", focus: "Tính từ な"),
        Question(id: 16, lesson: 8, vietnamese: "Hoa này rất đẹp.", answers: ["この はなは とても きれいです。", "このはなはとてもきれいです。"], explanation: "きれい là tính từ な nhưng đứng cuối câu dùng です.", focus: "きれい"),
        Question(id: 17, lesson: 9, vietnamese: "Tôi thích âm nhạc.", answers: ["わたしは おんがくが すきです。", "おんがくがすきです。"], explanation: "すきです thường đi với が để đánh dấu đối tượng yêu thích.", focus: "が / すき"),
        Question(id: 18, lesson: 9, vietnamese: "Tôi không hiểu tiếng Nhật lắm.", answers: ["にほんごが あまり わかりません。", "にほんごがあまりわかりません。"], explanation: "あまり đi với phủ định để diễn tả không ... lắm.", focus: "あまり"),
        Question(id: 19, lesson: 10, vietnamese: "Trên bàn có một quyển sách.", answers: ["つくえの うえに ほんが あります。", "つくえのうえにほんがあります。"], explanation: "あります dùng cho đồ vật; に chỉ nơi tồn tại; が đánh dấu vật.", focus: "あります"),
        Question(id: 20, lesson: 10, vietnamese: "Trong vườn có một con mèo.", answers: ["にわに ねこが います。", "にわにねこがいます。"], explanation: "います dùng cho người và động vật.", focus: "います"),
        Question(id: 21, lesson: 11, vietnamese: "Tôi có hai anh trai.", answers: ["わたしは あにが ふたり います。", "あにがふたりいます。"], explanation: "ふたり là cách đếm hai người; います dùng cho người.", focus: "ふたり"),
        Question(id: 22, lesson: 11, vietnamese: "Mỗi ngày tôi học tiếng Nhật một giờ.", answers: ["まいにち にほんごを 1じかん べんきょうします。", "まいにちにほんごをいちじかんべんきょうします。"], explanation: "1じかん là khoảng thời gian; không cần に sau khoảng thời gian.", focus: "Khoảng thời gian"),
        Question(id: 23, lesson: 12, vietnamese: "Hôm qua trời lạnh.", answers: ["きのうは さむかったです。", "きのうさむかったです。"], explanation: "Tính từ い đổi い thành かった ở quá khứ.", focus: "さむかった"),
        Question(id: 24, lesson: 12, vietnamese: "Tôi bận hơn bạn.", answers: ["わたしは あなたより いそがしいです。", "わたしはあなたよりいそがしいです。"], explanation: "より dùng để so sánh hơn.", focus: "より"),
        Question(id: 25, lesson: 13, vietnamese: "Tôi muốn mua xe mới.", answers: ["あたらしい くるまが ほしいです。", "あたらしいくるまがほしいです。"], explanation: "ほしいです diễn tả mong muốn sở hữu; đối tượng thường đi với が.", focus: "ほしい"),
        Question(id: 26, lesson: 13, vietnamese: "Tôi muốn ăn sushi.", answers: ["すしを たべたいです。", "すしをたべたいです。"], explanation: "Đổi động từ thể ます thành たい để diễn tả muốn làm gì.", focus: "たい"),
        Question(id: 27, lesson: 14, vietnamese: "Xin hãy chờ một chút.", answers: ["ちょっと まってください。", "ちょっとまってください。"], explanation: "まって là thể て của まちます; ください dùng để nhờ vả.", focus: "てください"),
        Question(id: 28, lesson: 14, vietnamese: "Tôi đang đọc sách.", answers: ["ほんを よんでいます。", "ほんをよんでいます。"], explanation: "ている diễn tả hành động đang diễn ra.", focus: "ています"),
        Question(id: 29, lesson: 15, vietnamese: "Tôi biết anh Tan.", answers: ["わたしは タンさんを しっています。", "タンさんをしっています。"], explanation: "しっています là biết; không dùng しります để nói trạng thái đang biết.", focus: "しっています"),
        Question(id: 30, lesson: 15, vietnamese: "Ở đây chụp ảnh được không?", answers: ["ここで しゃしんを とってもいいですか。", "ここでしゃしんをとってもいいですか。"], explanation: "てもいいですか hỏi xin phép làm việc gì.", focus: "てもいいですか"),
        Question(id: 31, lesson: 16, vietnamese: "Tôi thức dậy, ăn sáng rồi đi làm.", answers: ["おきて、あさごはんを たべて、しごとへ いきます。", "おきてあさごはんをたべてしごとへいきます。"], explanation: "Thể て nối các hành động theo trình tự.", focus: "Thể て nối câu"),
        Question(id: 32, lesson: 16, vietnamese: "Người đang đứng kia là ai?", answers: ["あそこに たっている ひとは だれですか。", "あそこにたっているひとはだれですか。"], explanation: "Vている bổ nghĩa cho danh từ, diễn tả trạng thái/hành động đang diễn ra.", focus: "Vている + danh từ"),
        Question(id: 33, lesson: 17, vietnamese: "Đừng ăn ở đây.", answers: ["ここで たべないでください。", "ここでたべないでください。"], explanation: "ないでください dùng để yêu cầu đừng làm gì.", focus: "ないでください"),
        Question(id: 34, lesson: 17, vietnamese: "Tôi phải học bài.", answers: ["べんきょうしなければなりません。", "べんきょうしなければなりません。"], explanation: "なければなりません diễn tả nghĩa vụ phải làm.", focus: "なければなりません"),
        Question(id: 35, lesson: 18, vietnamese: "Tôi có thể nói tiếng Nhật.", answers: ["わたしは にほんごを はなすことができます。", "にほんごをはなすことができます。"], explanation: "Động từ thể từ điển + ことができます diễn tả khả năng.", focus: "ことができます"),
        Question(id: 36, lesson: 18, vietnamese: "Sở thích của tôi là nghe nhạc.", answers: ["わたしの しゅみは おんがくを きくことです。", "わたしのしゅみはおんがくをきくことです。"], explanation: "Động từ thể từ điển + ことです dùng để nêu sở thích.", focus: "ことです"),
        Question(id: 37, lesson: 19, vietnamese: "Tôi đã từng đi Nhật.", answers: ["わたしは にほんへ いったことがあります。", "にほんへいったことがあります。"], explanation: "Thểた + ことがあります diễn tả kinh nghiệm đã từng.", focus: "たことがあります"),
        Question(id: 38, lesson: 19, vietnamese: "Cuối tuần hãy cùng đi xem phim nhé.", answers: ["しゅうまつ いっしょに えいがを みにいきませんか。", "しゅうまついっしょにえいがをみにいきませんか。"], explanation: "Vます bỏ ます + に行きます diễn tả đi để làm gì; ませんか là lời mời.", focus: "みにいきませんか"),
        Question(id: 39, lesson: 20, vietnamese: "Hôm nay tôi không đi.", answers: ["きょうは いかない。", "きょうはいかない。"], explanation: "Thể thông thường phủ định của いきます là いかない.", focus: "Thể thông thường"),
        Question(id: 40, lesson: 20, vietnamese: "Ngày mai bạn có bận không?", answers: ["あした いそがしい？", "あしたいそがしいですか。", "あしたいそがしい？"], explanation: "Trong hội thoại thân mật có thể bỏ ですか và dùng ngữ điệu hỏi.", focus: "Câu hỏi thân mật"),
        Question(id: 41, lesson: 21, vietnamese: "Tôi nghĩ ngày mai trời mưa.", answers: ["あした あめが ふると おもいます。", "あしたあめがふるとおもいます。"], explanation: "Thể thông thường + とおもいます diễn tả suy nghĩ.", focus: "と思います"),
        Question(id: 42, lesson: 21, vietnamese: "Tôi nghe nói anh ấy là giáo viên.", answers: ["かれは せんせいだと いいました。", "かれはせんせいだといいました。"], explanation: "Danh từ trước といいました dùng dạng thông thường có だ.", focus: "と言いました"),
        Question(id: 43, lesson: 22, vietnamese: "Đây là cuốn sách tôi đã mua hôm qua.", answers: ["これは きのう かった ほんです。", "これはきのうかったほんです。"], explanation: "Mệnh đề động từ thể thường đứng trước danh từ để bổ nghĩa.", focus: "Mệnh đề bổ nghĩa danh từ"),
        Question(id: 44, lesson: 22, vietnamese: "Người đang ở kia là bạn tôi.", answers: ["あそこに いる ひとは わたしの ともだちです。", "あそこにいるひとはわたしのともだちです。"], explanation: "Mệnh đề あそこにいる bổ nghĩa cho ひと.", focus: "Bổ nghĩa danh từ"),
        Question(id: 45, lesson: 23, vietnamese: "Khi về nhà, tôi rửa tay.", answers: ["うちへ かえるとき、てを あらいます。", "うちへかえるときてをあらいます。"], explanation: "Vるとき diễn tả khi làm việc gì.", focus: "とき"),
        Question(id: 46, lesson: 23, vietnamese: "Khi nhấn nút này, máy sẽ chạy.", answers: ["この ボタンを おすと、きかいが うごきます。", "このボタンをおすときかいがうごきます。"], explanation: "と diễn tả kết quả tự nhiên khi điều kiện xảy ra.", focus: "と điều kiện"),
        Question(id: 47, lesson: 24, vietnamese: "Bạn tôi đã cho tôi quyển sách.", answers: ["ともだちは わたしに ほんを くれました。", "ともだちがわたしにほんをくれました。"], explanation: "くれます diễn tả người khác cho mình hoặc phía mình.", focus: "くれます"),
        Question(id: 48, lesson: 24, vietnamese: "Tôi được mẹ làm cơm hộp cho.", answers: ["ははは わたしに おべんとうを つくってくれました。", "ははがわたしにおべんとうをつくってくれました。"], explanation: "Vてくれます diễn tả người khác làm việc có lợi cho mình.", focus: "てくれます"),
        Question(id: 49, lesson: 25, vietnamese: "Nếu trời đẹp, tôi sẽ đi dạo.", answers: ["てんきが よかったら、さんぽします。", "てんきがよかったらさんぽします。"], explanation: "Tính từ い quá khứ + ら tạo điều kiện よかったら.", focus: "たら"),
        Question(id: 50, lesson: 25, vietnamese: "Nếu có thời gian, tôi sẽ đọc sách.", answers: ["じかんが あったら、ほんを よみます。", "じかんがあったらほんをよみます。"], explanation: "あったら là điều kiện たら của あります.", focus: "たら"),
    ]
}

func normalize(_ value: String) -> String {
    value.lowercased()
        .replacingOccurrences(of: " ", with: "")
        .replacingOccurrences(of: "　", with: "")
        .replacingOccurrences(of: "。", with: "")
        .replacingOccurrences(of: "、", with: "")
        .replacingOccurrences(of: ".", with: "")
        .trimmingCharacters(in: .whitespacesAndNewlines)
}

struct ContentView: View {
    @State private var selectedLesson = 1
    @State private var answer = ""
    @State private var index = 0
    @State private var checked = false
    @State private var correctCount = 0
    @State private var attempted = 0
    @State private var showAll = false

    private var pool: [Question] {
        PracticeData.questions.filter { showAll || $0.lesson == selectedLesson }
    }
    private var question: Question { pool[min(index, max(0, pool.count - 1))] }
    private var isCorrect: Bool {
        question.answers.map(normalize).contains(normalize(answer))
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 18) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("CHỌN BÀI HỌC").font(.caption).bold().foregroundStyle(.secondary)
                        Spacer()
                        Text(showAll ? "Ôn tập tổng hợp" : "Bài \(selectedLesson)")
                            .font(.caption).bold().foregroundStyle(.green)
                    }
                    Picker("Bài", selection: $selectedLesson) {
                        ForEach(1...25, id: \.self) { n in Text("Bài \(n)").tag(n) }
                    }
                    .pickerStyle(.menu)
                    Toggle("Trộn câu hỏi bài 1–25", isOn: $showAll)
                        .tint(.green)
                        .onChange(of: showAll) { _ in resetSession() }
                }
                .padding()
                .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 16))

                HStack {
                    Label("Câu \(index + 1)/\(pool.count)", systemImage: "text.book.closed")
                    Spacer()
                    Label("\(correctCount) đúng", systemImage: "checkmark.circle.fill")
                        .foregroundStyle(.green)
                }
                .font(.subheadline.bold())

                VStack(alignment: .leading, spacing: 14) {
                    Text("DỊCH SANG TIẾNG NHẬT")
                        .font(.caption).bold().foregroundStyle(.secondary)
                    Text(question.vietnamese)
                        .font(.title2.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Trọng tâm: \(question.focus)")
                        .font(.footnote).foregroundStyle(.secondary)
                }
                .padding(20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.green.opacity(0.09), in: RoundedRectangle(cornerRadius: 18))

                VStack(alignment: .leading, spacing: 8) {
                    Text("CÂU TRẢ LỜI CỦA BẠN").font(.caption).bold().foregroundStyle(.secondary)
                    TextField("Nhập câu tiếng Nhật...", text: $answer, axis: .vertical)
                        .lineLimit(2...4)
                        .padding(14)
                        .background(Color(.secondarySystemBackground), in: RoundedRectangle(cornerRadius: 12))
                        .disabled(checked)
                }

                if checked {
                    VStack(alignment: .leading, spacing: 8) {
                        Label(isCorrect ? "Chính xác!" : "Chưa chính xác", systemImage: isCorrect ? "checkmark.circle.fill" : "exclamationmark.circle.fill")
                            .font(.headline)
                            .foregroundStyle(isCorrect ? .green : .orange)
                        Text("Đáp án tham khảo:")
                            .font(.caption).foregroundStyle(.secondary)
                        Text(question.answers[0])
                            .font(.title3.bold())
                        Text(question.explanation)
                            .font(.subheadline)
                        if !isCorrect {
                            Text(diagnosis(for: question, userAnswer: answer))
                                .font(.subheadline)
                                .foregroundStyle(.orange)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color(.secondarySystemBackground), in: RoundedRectangle(cornerRadius: 14))
                }

                Spacer(minLength: 0)
                if !checked {
                    Button {
                        guard !answer.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else { return }
                        checked = true
                        attempted += 1
                        if isCorrect { correctCount += 1 }
                    } label: {
                        Text("KIỂM TRA ĐÁP ÁN").frame(maxWidth: .infinity).padding()
                            .font(.headline).foregroundStyle(.white)
                            .background(Color.green, in: RoundedRectangle(cornerRadius: 14))
                    }
                    .disabled(answer.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                } else {
                    Button {
                        index = (index + 1) % pool.count
                        answer = ""
                        checked = false
                    } label: {
                        Text("CÂU TIẾP THEO").frame(maxWidth: .infinity).padding()
                            .font(.headline).foregroundStyle(.white)
                            .background(Color.green, in: RoundedRectangle(cornerRadius: 14))
                    }
                }
                Text("Đã làm \(attempted) câu • \(correctCount) câu đúng")
                    .font(.caption).foregroundStyle(.secondary)
            }
            .padding()
            .navigationTitle("Nihongo 1–25")
            .navigationBarTitleDisplayMode(.inline)
            .onChange(of: selectedLesson) { _ in resetSession() }
        }
    }

    private func resetSession() {
        index = 0
        answer = ""
        checked = false
        correctCount = 0
        attempted = 0
    }

    private func diagnosis(for q: Question, userAnswer: String) -> String {
        let u = normalize(userAnswer)
        let target = normalize(q.answers[0])
        if u.contains("は") && target.contains("が") && !u.contains("が") {
            return "Có thể bạn nhầm trợ từ は và が. Hãy kiểm tra chủ đề và chủ thể trong câu."
        }
        if u.contains("あります") && target.contains("います") {
            return "Kiểm tra あります và います: đồ vật dùng あります, người/động vật dùng います."
        }
        if u.contains("です") && target.contains("でした") {
            return "Câu yêu cầu quá khứ; hãy kiểm tra dạng quá khứ của です."
        }
        return "Hãy đối chiếu đáp án và phần giải thích. Kiểm tra trợ từ, dạng động từ và trật tự câu."
    }
}

@main
struct Nihongo25App: App {
    var body: some Scene {
        WindowGroup { ContentView() }
    }
}
