# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Admin.create!(email: "admin@admin",password:  "11111111",)


users = User.create!(
  [
    {email: 'tesuda13@example.com', name: 'テス田テス男', password: 'password1', is_deleted: false},
    {email: 'tesundesukedo8@example.com', name: 'テス山テスン', password: 'password2', is_deleted: false},
    {email: '777tesutesuhirotesu@example.com', name: '小テスヒロテス', password: 'password3', is_deleted: false}
  ]
)

Post.create!(
  [
    {text_name: '楽しいruby', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post1.jpg"), filename:"sample-post1.jpg"), introduction: '初版から17年。改訂とともに変化しながら、ずっと読まれ続けている定番書です。第6版では、最新のバージョンに対応。プログラミング初心者でも読み解けるように、チュートリアル、基礎、クラス、実践とテーマを切り分けて、平易に解説。Rubyの基礎から応用までがわかる一冊。発行日	2002年4月10日　初版第1刷発行2019年3月22日　第6版第1刷発行「本書は初心者の気持ちを裏切らない出来になっています」 （まつもと ゆきひろ）高橋征義、後藤裕蔵 著まつもと ゆきひろ 監修ソフトウェア技術者、オブジェクト指向プログラミング言語（スクリプト言語）「Ruby」の開発者として知られる。たのしいRuby第6版。',review: '本書はプログラミング初心者の目線には全く立てておらず、他言語習得済みの方向けの説明方法となっています。例えばクラスなどのオブジェクト指向として要になる部分は、初学者向けの書籍では最も説明に注力する必要がありますが、この本は驚くほどアッサリと済ませています。オブジェクト指向がどういうものかを理解するのはこの本ではとても難しいと思います。一方で他のオブジェクト指向言語を既習済みの方にとってはサクサク進めます。対象読者と説明方法のミスマッチを再検討して頂きたい内容であり、プログラミング初心者向けの丁寧な説明にするか、あるいは対象読者のレベルを引き上げるか。',price: '2860', user_id: users[0].id },
    {text_name: 'プロを目指す人のためのRuby入門', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post2.jpg"), filename:"sample-post2.jpg"), introduction: '本書は、プログラミング言語Rubyの言語仕様や開発の現場で役立つRubyの知識を説明した本です。豊富なサンプルコードで文法を学び、例題でプログラミングの流れを体験できます。第1版(2017年11月発行)は、初心者の目線にたった丁寧な解説が好評で多くのRuby初学者に愛読され、いまやRuby入門書の定番とも言える存在です。・Rubyのプログラミングを学びたい人・Rubyのテスト駆動開発やデバッグ技法を学びたい人・Railsを学ぶにあたりまずはRubyを学びたい人・仕事でRubyを使っている人、仕事でRubyを使いたい人',review: 'PHPやその他の言語の経験があってRubyに取り組もうとした時に、とても参考になりました。Ruby独特のループ、Getter/Setterその他Overrideが楽、Moduleによる多重継承もどき・・などなどRubyで便利な機能が色々ありますが、Rubyを理解するまでは他の言語とは異なる癖のある面倒な言語に思えてしまいます。ですが、何故Rubyの文法や構造が便利なのか、他の言語から類推すると分からない点、ハマりやすい点などが、心の内を読んだようにことごとく先回りして説明してくれるのが本書です。他言語含め、プログラム開発経験があまり無い方にとっては、基礎を先に理解した方が良いように思います。',price: '3278', user_id: users[1].id },
    {text_name: 'ゼロからわかる Ruby 超入門', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post3.jpg"), filename:"sample-post3.jpg"), introduction: '本書は、プログラミングが初めての方へ向けた、プログラミング言語Rubyの入門書です。Rubyはやりたいことを簡潔に書ける言語です。学習の際に余計なことを考える必要がなく、学ぶ内容に集中できます。これは初めて学ぶ言語として最高の特徴と言えます。実際の使用例も多く、クックパッドなどのたくさんのRubyで書かれたWebサービスたちが世界で多数稼働しています。この本の対象読者として、プログラミングをこれから始めたい方、他の言語を使ったことがあるがRubyは初めての方、Railsを学んだのでその基礎であるRubyを学びたい方、に当てはまる方は最適です。',review: '他言語を書いてきた私がRubyに入門する際、手に取りましたコード部分は全部打ち込んで、実行しわかったつもりになっても、練習問題を解くことで、ちゃんと理解できてないとこが炙り出されます。練習問題の解答集が別冊になってるのも便利でした。丸っこいキャラクターの挿絵イラストも可愛くて癒されます。',price: '2728', user_id: users[2].id }
  ]
)