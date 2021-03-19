#6-1　キーcaffe_latteを取得
menu={coffee: 300, caffe_latte: 400}
puts menu[:caffe_latte]
#6-2問3ハッシュmenuへキー:tea,値300を追加
menu={coffee: 300, caffe_latte: 400}
menu[:tea]=300
p menu
#問4　menuからキー:coffeeを削除
menu={coffee: 300, caffe_latte: 400}
menu.delete(:coffee)
p menu
#問5　menuで:teaに対応する値がなければ紅茶はありませんか？と表示
menu={coffee: 300, caffe_latte: 400}
puts"紅茶はありませんか？"
unless menu[:tea]
end
#問6　menuで:coffee_latteの値が500以下であればカフェラテくださいと表示
menu={coffee: 300, caffe_latte: 400}
puts "カフェラテください"
if menu.has_key?(:caffe_latte) && 
    menu[:caffe_latte] <= 500 
end
#問7文字列"caffelatte"の中で使われてるアルファベットとその回数を表示
hash={}
hash.default=0
array="caffelatte".chars
array.each do |x|
    hash[x]+=1
end
p hash

#6-3問8 menuをコーヒー-300円の形で表示
menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each do|key,value|
    puts "#{key} - #{value}円"
end
#問9 値が350以上のものだけ表示
menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each do|key,value|
    puts "#{key}-#{value}円" if value>350
end
#問10　menuに空ハッシュ{}を代入した状態で実行
menu={}
menu.each do |key,velue|
    puts "#{key}-#{value}円"
end
#問11 menu{"コーヒー"=>300,"カフェラテ"=>400}から全キーを持つ配列["コーヒー","カフェラテ"]を作る
menu = {"コーヒー"=>300,"カフェラテ"=>400}
keys=[]
menu.each do |key,value|
    keys.push(key)
end
p keys



