# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  Admin.create!(email: "admin@admin",password:  "11111111",)


users = User.create!(
  [
    {email: 'tesuda13@example.com', name: 'テス田テス男', password: 'password1', is_deleted: false},
    {email: 'tesundesukedo8@example.com', name: 'テス山テスン', password: 'password2', is_deleted: false},
    {email: '777tesutesuhirotesu@example.com', name: '小テスヒロテス', password: 'password3', is_deleted: false}
  ]
)

Post.create!(
  [
    {text_name: '楽しいruby', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post1.jpg"), filename:"sample-post1.jpg"), introduction: '初版から17年。改訂とともに変化しながら、ずっと読まれ続けている定番書です。第6版では、最新のバージョンに対応。プログラミング初心者でも読み解けるように、チュートリアル、基礎、クラス、実践とテーマを切り分けて、平易に解説。Rubyの基礎から応用までがわかる一冊。発行日	2002年4月10日　初版第1刷発行2019年3月22日　第6版第1刷発行「本書は初心者の気持ちを裏切らない出来になっています」 （まつもと ゆきひろ）高橋征義、後藤裕蔵 著まつもと ゆきひろ 監修ソフトウェア技術者、オブジェクト指向プログラミング言語（スクリプト言語）「Ruby」の開発者として知られる。たのしいRuby第6版。',review: '本書はプログラミング初心者の目線には全く立てておらず、他言語習得済みの方向けの説明方法となっています。例えばクラスなどのオブジェクト指向として要になる部分は、初学者向けの書籍では最も説明に注力する必要がありますが、この本は驚くほどアッサリと済ませています。オブジェクト指向がどういうものかを理解するのはこの本ではとても難しいと思います。一方で他のオブジェクト指向言語を既習済みの方にとってはサクサク進めます。対象読者と説明方法のミスマッチを再検討して頂きたい内容であり、プログラミング初心者向けの丁寧な説明にするか、あるいは対象読者のレベルを引き上げるか。',price: '2860', genre_id:1, user_id: users[0].id },
    {text_name: 'プロを目指す人のためのRuby入門', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post2.jpg"), filename:"sample-post2.jpg"), introduction: '本書は、プログラミング言語Rubyの言語仕様や開発の現場で役立つRubyの知識を説明した本です。豊富なサンプルコードで文法を学び、例題でプログラミングの流れを体験できます。第1版(2017年11月発行)は、初心者の目線にたった丁寧な解説が好評で多くのRuby初学者に愛読され、いまやRuby入門書の定番とも言える存在です。・Rubyのプログラミングを学びたい人・Rubyのテスト駆動開発やデバッグ技法を学びたい人・Railsを学ぶにあたりまずはRubyを学びたい人・仕事でRubyを使っている人、仕事でRubyを使いたい人',review: 'PHPやその他の言語の経験があってRubyに取り組もうとした時に、とても参考になりました。Ruby独特のループ、Getter/Setterその他Overrideが楽、Moduleによる多重継承もどき・・などなどRubyで便利な機能が色々ありますが、Rubyを理解するまでは他の言語とは異なる癖のある面倒な言語に思えてしまいます。ですが、何故Rubyの文法や構造が便利なのか、他の言語から類推すると分からない点、ハマりやすい点などが、心の内を読んだようにことごとく先回りして説明してくれるのが本書です。他言語含め、プログラム開発経験があまり無い方にとっては、基礎を先に理解した方が良いように思います。',price: '3278', genre_id:1, user_id: users[1].id },
    {text_name: 'ゼロからわかる Ruby 超入門', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post3.jpg"), filename:"sample-post3.jpg"), introduction: '本書は、プログラミングが初めての方へ向けた、プログラミング言語Rubyの入門書です。Rubyはやりたいことを簡潔に書ける言語です。学習の際に余計なことを考える必要がなく、学ぶ内容に集中できます。これは初めて学ぶ言語として最高の特徴と言えます。実際の使用例も多く、クックパッドなどのたくさんのRubyで書かれたWebサービスたちが世界で多数稼働しています。この本の対象読者として、プログラミングをこれから始めたい方、他の言語を使ったことがあるがRubyは初めての方、Railsを学んだのでその基礎であるRubyを学びたい方、に当てはまる方は最適です。',review: '他言語を書いてきた私がRubyに入門する際、手に取りましたコード部分は全部打ち込んで、実行しわかったつもりになっても、練習問題を解くことで、ちゃんと理解できてないとこが炙り出されます。練習問題の解答集が別冊になってるのも便利でした。丸っこいキャラクターの挿絵イラストも可愛くて癒されます。',price: '2728', genre_id:1, user_id: users[2].id },
    {text_name: 'いきなりはじめるPHP~ワクワク・ドキドキの入門教室', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post4.jpg"), filename:"sample-post4.jpg"), introduction: 'PHPのいちばんやさしい入門書でありながら、MySQLまでカバーしています。初心者がつまずいたり迷ったりするポイントをとことん解消しました。面倒なパソコン設定もデータベース構築も楽々クリアできます。実際の研修講座で実証済みの方法論とカリュキュラムにより、無理なく楽しくPHPのエッセンスを習得することができます。',review: '他言語に触れてきた私がPHPを学ぶにあたって購入しました。実行しわかったつもりになっても、練習問題を解くことで理解できてないことを痛感します。練習問題の解答集があるのは本当に便利でした。',price: '1980', genre_id:1, user_id: users[3].id },
    {text_name: '気づけばプロ並みPHP 改訂版--ゼロから作れる人になる!', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post5.jpg"), filename:"sample-post5.jpg"), introduction: '秋葉原の小さな教室で、笑いながら1日でプログラムを組んで帰る、そんなIT講座があります。毎回教室で起こるドラマから生まれた超入門書は、大好評を得て、多くの初心者をPHPの世界にお連れすることができました。昨今ではWordPressやCakePHP等が普及した結果、ゼロからシステムを組めるプログラマーが減りつつあります。大丈夫です。1回、ゼロから作ってみればいいのですよ。恐れることはありません。PHPの入門書を卒業した方や、多少プログラミング経験のある方なら、本書を通じて本格的なシステム開発の世界に入って行けます。練りに練ったストーリーを組んであるからです。さぁ、行ってみましょう!',review: 'PHPを嫌っていましたがこの本は難しいことをやっていませんが理解でき、面白かったです。PHPをより、深くこれから勉強するのにこの本から始めるといい感じがしました。ありがとうございました',price: '2970', genre_id:2, user_id: users[4].id },
    {text_name: '確かな力が身につくPHP「超」入門', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post6.jpg"), filename:"sample-post6.jpg"), introduction: 'PHPの基礎から、コマースサイトの作成に必要な知識まで、しっかりと解説します。ショッピングカートやログイン処理の作成から、商品管理などを行うデータベースの設定・制御法まで、Web開発の現場で求められる知識をサンプルで体験しながら学べます。',review: '基本的に完成したコードを確認した後に説明していくタイプの本なので手を動かして覚えたい人は自分で空のファイルを作成してから入力していけば説明も分かりやすくいい本だと思います。',price: '2860', genre_id:2, user_id: users[5].id }
  ]
)

Comment.create!(
  [
    {user_id: 1, post_id: 2, comment_introduction: 'ゼロからわかる Ruby 超入門を読んだこともあるがそれと少し、上級者向けかも。けど、二冊目に読む分としてはちょうどいい難易度に思えました。',total_score: '4',read_score: '3',price_score: '4',usability_score: '4'},
    {user_id: 1, post_id: 3, comment_introduction: '分かりやすいようなイラストでの説明が多用されていたりと、初心者向けの一冊と言える。',total_score: '4',read_score: '4',price_score: '4',usability_score: '4'},
    {user_id: 2, post_id: 1, comment_introduction: '全くの初心者から手にしたが、難しすぎて断念しかけた。用語の解説に使われている言葉がわからないシーンが多々あった',total_score: '2.5',read_score: '2',price_score: '2',usability_score: '3'},
    {user_id: 2, post_id: 3, comment_introduction: '初心者でもわかるよう、噛み砕いた説明や図での説明が多くされています。初心者の初めの1冊目出来ます。',total_score: '4',read_score: '4',price_score: '4',usability_score: '5'},
    {user_id: 3, post_id: 2, comment_introduction: '本書は冒頭に初心者の気持ちを裏切らない内容になっていますと書かれているが、その通りだと思う。他言語を習得済の私にとってはすごく学びやすく、楽しめる一冊であった。ただ、全くの諸学者には難しいかも。',total_score: '3',read_score: '2.5',price_score: '3',usability_score: '4'},
    {user_id: 3, post_id: 3, comment_introduction: '現役のプロが執筆している入門書,超初心者には向かないがプログラムにかじったことあり、Rubyを学びたいならすごくおすすめです。',total_score: '5',read_score: '4',price_score: '5',usability_score: '5'},
    {user_id: 2, post_id: 5, comment_introduction: '噛み砕いた説明や図で初心者でもわかりやすい内容になっています。',total_score: '4',read_score: '4',price_score: '4',usability_score: '5'},
    {user_id: 3, post_id: 6, comment_introduction: '全くの初心者には難しいかも。もっと分かりやすいテキストもあります。',total_score: '3',read_score: '2.5',price_score: '3',usability_score: '4'},
    {user_id: 1, post_id: 5, comment_introduction: '超初心者には向かないものの、プログラムにかじったことがある方には、すごくおすすめです。',total_score: '5',read_score: '4',price_score: '5',usability_score: '5'},
    {user_id: 2, post_id: 6, comment_introduction: '初めての1冊目としては十分です。',total_score: '3',read_score: '3.5',price_score: '3',usability_score: '5'},
    {user_id: 2, post_id: 4, comment_introduction: '個人的には難しい表現が多くこれを一冊目にして学ぶのは難しかった。',total_score: '3',read_score: '2.5',price_score: '3',usability_score: '4'},
    {user_id: 3, post_id: 4, comment_introduction: '入門書としてすごく整っている,すごくおすすめです。',total_score: '5',read_score: '4',price_score: '5',usability_score: '5'}
  ]
)

Genre.create!(
  [
    {genre_name: 'ruby'},
    {genre_name: 'PHP'}
  ]
)