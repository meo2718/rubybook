#5-1 sizeメソッドで要素数を表示し、sumメソッドで合計値をだす
puts ["コーヒー","カフェラテ"].size
puts [1,2,3,4,5].sum
#5-2 uniqメソッドをつかって重複する要素を１つにして表示
p ["モカ","カフェラテ","モカ"].uniq #=> ["モカ","カフェラテ"]
p [1,2,3].clear
#5-3ランダムで1つ表示,おみくじ
puts ["カフェラテ","モカ","カプチーノ"].sample
puts ["大吉","中吉","末吉","凶"].sample
#5-4小さい順、大きい順、文字を変換
p [100,50,300].sort
p [100,50,300].sort.reverse
p "cba".reverse
#5-5配列から文字列、文字列から配列
p ["100","50","300"].join(",")
p "100,50,300".split(",")
#5-6問12各要素を３倍にした配列を作る
result=[1,2,3].map do |x|
    x*3
end
p result
#問13,各要素を逆順にして表示
result=["abc","xyz"].map do |x|
    x.reverse
end
p result
#問14,小文字に変換してアルファベット順に並べる
result= ["aya","achi","Tama"].map do |x|
    x.downcase
end
result=result.sort
p result

