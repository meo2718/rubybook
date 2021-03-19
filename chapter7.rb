#7-1カフェラテくださいを表示するorderメソッドを定義
def order
    puts "カフェラテください"
end
order
#7-2辺の長さが3の正方形の面積を計算して戻り値とするareaメソッドを定義
def area
    3*3
end
puts area
#サイコロを振ってでた目を戻り値とするdiceメソッドを定義 sampleメソッドは配列の中からランダムで1つを返す
def dice
    [1,2,3,4,5,6].sample
end
puts dice
#7-3「○○ください」を表示するorderメソッドを定義しカフェラテくださいとモカくださいを表示
def order(item)
    puts "#{item}をください"
end
order("カフェラテ")
order("モカ")
#7-2のdiceメソッドを変更、サイコロを振って1が出たら「もう1回」と表示しさらにもう1回振り直す
def dice
    result = [1,2,3,4,5,6].sample
    return result unless result == 1
    puts "もう1回"
    [1,2,3,4,5,6].sample
    
end
puts dice
#7-4品物の値段を返すpriceメソッドを作る。キーワード引数itemを渡し、itemがコーヒーのときは300をカフェラテのときは400を戻り値として返す
def price(item:)
    case item
    when "コーヒー"
        300
    when "カフェラテ"
        400
    end
end
puts price(item: "コーヒー")
puts price(item: "カフェラテ")
#キーワード引数にsizeを追加しsizeがショートのときは+0円、トールのときは+50円、ベンティのときは+100円にする
def price(item:,size:)
    items = {"コーヒー" => 300, "カフェラテ" => 400}
    sizes = {"ショート" => 0, "トール" => 50, "ベンティ" => 100 }
    items[item] + sizes[size]
end
puts price(item:"コーヒー", size:"トール")
#デフォルトの値としてショートを設定
def price(item:,size:"ショート")
    items = {"コーヒー" => 300, "カフェラテ" => 400}
    sizes = {"ショート" => 0, "トール" => 50, "ベンティ" => 100 }
    items[item] + sizes[size]
end
puts price(item:"コーヒー")
puts price(item:"コーヒー", size:"トール")




