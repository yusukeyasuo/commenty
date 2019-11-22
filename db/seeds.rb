
[
  {
    id: 1,
    name: 'appleeeeee',
    price: 3456,
    star_count: 4.0,
    url: 'https://www.amazon.co.jp/iFace-Reflection-iPhone8-%E5%BC%B7%E5%8C%96%E3%82%AC%E3%83%A9%E3%82%B9-%E3%83%99%E3%83%BC%E3%82%B8%E3%83%A5/dp/B07NDHFF78/ref=sr_1_1?qid=1559304499&refinements=p_n_feature_eleven_browse-bin%3A2519089051&s=electronics&sr=1-1',
  },
  {
    id: 2,
    name: 'iFace Reflection iPhone8/7 ケース クリア 強化ガラス',
    price: 3456,
    star_count: 4.0,
    url: 'https://www.amazon.co.jp/iFace-Reflection-iPhone8-%E5%BC%B7%E5%8C%96%E3%82%AC%E3%83%A9%E3%82%B9-%E3%83%99%E3%83%BC%E3%82%B8%E3%83%A5/dp/B07NDHFF78/ref=sr_1_1?qid=1559304499&refinements=p_n_feature_eleven_browse-bin%3A2519089051&s=electronics&sr=1-1',
  },
  {
    id: 3,
    name: 'iFace Reflection iPhone8/7 ケース クリア 強化ガラス',
    price: 3456,
    star_count: 4.0,
    url: 'https://www.amazon.co.jp/iFace-Reflection-iPhone8-%E5%BC%B7%E5%8C%96%E3%82%AC%E3%83%A9%E3%82%B9-%E3%83%99%E3%83%BC%E3%82%B8%E3%83%A5/dp/B07NDHFF78/ref=sr_1_1?qid=1559304499&refinements=p_n_feature_eleven_browse-bin%3A2519089051&s=electronics&sr=1-1',
  },
  {
    id: 4,
    name: 'iFace Reflection iPhone8/7 ケース クリア 強化ガラス',
    price: 3456,
    star_count: 4.0,
    url: 'https://www.amazon.co.jp/iFace-Reflection-iPhone8-%E5%BC%B7%E5%8C%96%E3%82%AC%E3%83%A9%E3%82%B9-%E3%83%99%E3%83%BC%E3%82%B8%E3%83%A5/dp/B07NDHFF78/ref=sr_1_1?qid=1559304499&refinements=p_n_feature_eleven_browse-bin%3A2519089051&s=electronics&sr=1-1',
  },
  {
    id: 5,
    name: 'ATUSIDUN(アトストン）iPhone ケース リング 滑り防止 耐衝撃 iPhone XR ローズゴールド',
    price: 1399,
    star_count: 4.0,
    url: 'https://images-na.ssl-images-amazon.com/images/I/61NbS3AZE6L._SX425_.jpg',
  },
  {
    id: 6,
    name: '【iPhone8/7/6s/6 ケース】IIII fit (ピンク)',
    price: 2728,
    star_count: 4.0,
    url: 'https://unicase.jp/goods_image/003/750/37505_o.jpg',
  },
  {
    id: 7,
    name: 'i【ROOT CO.】iPhone XS Max 耐衝撃 iPhone ケース Gravity Shock Resist Case Pro. (イエロー/グロス)',
    price: 4950,
    star_count: 4.5,
    url: 'https://images-na.ssl-images-amazon.com/images/I/61YVQCNIn8L._SY679_.jpg',
  },
  {
    id: 8,
    name: 'iFace Reflection iPhone8/7 ケース クリア 強化ガラス',
    price: 4400,
    star_count: 4.5,
    url: 'https://images-na.ssl-images-amazon.com/images/I/61tS1AA8GrL._SY679_.jpg',
  },
  {
    id: 9,
    name: '送料/関税込【Pornhub】 iPhone ケース',
    price: 5300,
    star_count: 0,
    url: 'https://static-buyma-com.akamaized.net/imgdata/item/190125/0041083078/179925431/428.jpg'
  },  
  {
    id: 10,
    name: 'iPhone 11 ケース Otter + Pop SYMMETRY LOLLIPOP iPhone 11【12月上旬】',
    price: 3456,
    star_count: 4.0,
    url: 'https://img.appbankstore.jp/article/wp-content/uploads/2019/07/pdintrd_4580395341200-000004.jpg',
  }
].each do |product|
  unless Product.find_by(id: product[:id])
    Product.create(product)
  end
end




[
  {
    id: 1,
    product_id: 1,
    url: 'https://image.rakuten.co.jp/htdd/cabinet/gold10/gz144-01.jpg',
    sort_order: 1
  },
  {
    id: 2,
    product_id: 1,
    url: 'https://images-na.ssl-images-amazon.com/images/I/61LFmakQArL._SY355_.jpg',
    sort_order: 2
  },
  {
    id: 3,
    product_id: 2,
    url: 'https://c.imgz.jp/867/44299867/44299867_8_d_500.jpg',
    sort_order: 1
  },
  {
    id: 4,
    product_id: 2,
    url: 'https://images-na.ssl-images-amazon.com/images/I/61LFmakQArL._SY355_.jpg',
    sort_order: 2
  },
  {
    id: 5,
    product_id: 3,
    url: 'https://images-na.ssl-images-amazon.com/images/I/61LFmakQArL._SY355_.jpg',
    sort_order: 1
  },
  {
    id: 6,
    product_id: 3,
    url: 'https://images-na.ssl-images-amazon.com/images/I/61LFmakQArL._SY355_.jpg',
    sort_order: 2
  },
  {
    id: 7,
    product_id: 4,
    url: 'https://images-na.ssl-images-amazon.com/images/I/61LFmakQArL._SY355_.jpg',
    sort_order: 1
  },
  {
    id: 8,
    product_id: 4,
    url: 'https://images-na.ssl-images-amazon.com/images/I/61LFmakQArL._SY355_.jpg',
    sort_order: 2
  },
].each do |product_image|
  unless ProductImage.find_by(id: product_image[:id])
    ProductImage.create(product_image)
  end
end




[
  {
    id: 1,
    product_id: 1,
    review: '2個購入して、届いてすぐに確認したら背面のカメラレンズのすぐ下に傷がありました。

1個は傷が薄く許容範囲だったのですがもう1個のキズが酷かったので交換可能かメールをしたのに返事がありません。(届いて確認後すぐにメール、返事が無いので4日後に再度メールしたけど未だ返事なし。)
メールの返事が来るかもと思い、即箱に戻したので使うに使えない状態でどうしたら良いのか…

他の通販サイトのレビューを見ても背面カメラレンズの下に傷があると書いてあるのも見かけたのでこれから購入される方は気を付けた方がいいと思います。

背面なので開封しないと確認出来ないので困りますよね。
気に入って購入しただけに非常に残念です。

-追加-
2度目のメールを送ってから1週間以上経ちましたが未だにメールの返事無し。
iFaceって保証が付いてるから保証を使う事だって出来るはずなのに返事が無ければこちらはどうしようもありません。
一体このキズ入りのiFaceどうしたら良いのでしょう？',
    star_count: 1.0,
    score: 67,
    title: '良い買い物でした'
  },
  {
    id: 2,
    product_id: 1,
    review: 'ソフトシリコンのケースです。
iPhone下部のスピーカーの部分はカバーで覆われていますが前面に穴があるので音声は問題なく聞こえます。
側面右下に小さな穴が２つあります。多分、ストラップをつけることができると思います。
黄色の変色防止に関しては、まだ購入して日が浅いため確認する事はできませんが、見た感じは変化しにくそうかなーと思います。
Qi充電も問題なくできました。',
    star_count: 5.0,
    score: 10,
    title: '良い買い物でした'
  },
  {
    id: 3,
    product_id: 2,
    review: 'iphone XRのREDのカバーにしていますが、この色を目立せたかったので購入しました。
中国製との事ですが、iphone側面のボタンも押しやすいです。それにiphone本体の下のスピーカー部分の穴が下方ではなく正面向きで開いているのでスピーカーの音が更にクリアに聞こえます。
値段も手頃でしたので、リピしたいと思います。',
    star_count: 5.0,
    score: 8,
    title: '良い買い物でした'
  },
  {
    id: 4,
    product_id: 2,
    review: '2個購入して、届いてすぐに確認したら背面のカメラレンズのすぐ下に傷がありました。

1個は傷が薄く許容範囲だったのですがもう1個のキズが酷かったので交換可能かメールをしたのに返事がありません。(届いて確認後すぐにメール、返事が無いので4日後に再度メールしたけど未だ返事なし。)
メールの返事が来るかもと思い、即箱に戻したので使うに使えない状態でどうしたら良いのか…

他の通販サイトのレビューを見ても背面カメラレンズの下に傷があると書いてあるのも見かけたのでこれから購入される方は気を付けた方がいいと思います。

背面なので開封しないと確認出来ないので困りますよね。
気に入って購入しただけに非常に残念です。

-追加-
2度目のメールを送ってから1週間以上経ちましたが未だにメールの返事無し。
iFaceって保証が付いてるから保証を使う事だって出来るはずなのに返事が無ければこちらはどうしようもありません。
一体このキズ入りのiFaceどうしたら良いのでしょう？',
    star_count: 1.0,
    score: 67,
    title: '良い買い物でした'
  },
  {
    id: 5,
    product_id: 2,
    review: '2個購入して、届いてすぐに確認したら背面のカメラレンズのすぐ下に傷がありました。

1個は傷が薄く許容範囲だったのですがもう1個のキズが酷かったので交換可能かメールをしたのに返事がありません。(届いて確認後すぐにメール、返事が無いので4日後に再度メールしたけど未だ返事なし。)
メールの返事が来るかもと思い、即箱に戻したので使うに使えない状態でどうしたら良いのか…

他の通販サイトのレビューを見ても背面カメラレンズの下に傷があると書いてあるのも見かけたのでこれから購入される方は気を付けた方がいいと思います。

背面なので開封しないと確認出来ないので困りますよね。
気に入って購入しただけに非常に残念です。

-追加-
2度目のメールを送ってから1週間以上経ちましたが未だにメールの返事無し。
iFaceって保証が付いてるから保証を使う事だって出来るはずなのに返事が無ければこちらはどうしようもありません。
一体このキズ入りのiFaceどうしたら良いのでしょう？',
    star_count: 1.0,
    score: 67,
    title: '良い買い物でした'
  }
].each do |product_review|
  unless ProductReview.find_by(id: product_review[:id])
    ProductReview.create(product_review)
  end
end


[
  {
    id: 1,
    user_id: 1,
    product_id: 1
  },
  {
    id: 2,
    user_id: 1,
    product_id: 2
  },
  {
    id: 3,
    user_id: 2,
    product_id: 1
  },
  {
    id: 4,
    user_id: 2,
    product_id: 2
  },
  {
    id: 5,
    user_id: 3,
    product_id: 1
  },
  {
    id: 6,
    user_id: 3,
    product_id: 2
  }
].each do |like|
  unless Like.find_by(id: like[:id])
    Like.create(like)
  end
end



