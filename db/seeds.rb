# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# coding: utf-8


Product.create(:name => 'iFace Reflection iPhone8/7 ケース クリア 強化ガラス [ベージュ]', :price => 3456 , :star_count => 4.0 ,:url => 'https://www.amazon.co.jp/iFace-Reflection-iPhone8-%E5%BC%B7%E5%8C%96%E3%82%AC%E3%83%A9%E3%82%B9-%E3%83%99%E3%83%BC%E3%82%B8%E3%83%A5/dp/B07NDHFF78/ref=sr_1_1?qid=1559304499&refinements=p_n_feature_eleven_browse-bin%3A2519089051&s=electronics&sr=1-1' )

ProductReview.create(:product_id => 1 , :review => '2個購入して、届いてすぐに確認したら背面のカメラレンズのすぐ下に傷がありました。

1個は傷が薄く許容範囲だったのですがもう1個のキズが酷かったので交換可能かメールをしたのに返事がありません。(届いて確認後すぐにメール、返事が無いので4日後に再度メールしたけど未だ返事なし。)
メールの返事が来るかもと思い、即箱に戻したので使うに使えない状態でどうしたら良いのか…

他の通販サイトのレビューを見ても背面カメラレンズの下に傷があると書いてあるのも見かけたのでこれから購入される方は気を付けた方がいいと思います。

背面なので開封しないと確認出来ないので困りますよね。
気に入って購入しただけに非常に残念です。

-追加-
2度目のメールを送ってから1週間以上経ちましたが未だにメールの返事無し。
iFaceって保証が付いてるから保証を使う事だって出来るはずなのに返事が無ければこちらはどうしようもありません。
一体このキズ入りのiFaceどうしたら良いのでしょう？', :star_count => 1.0 , :score => 67 )


(2..5).ench do |no|
  Product.create(:name => "タイトル #{no}")
end