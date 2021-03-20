#問1　ハッシュ{:coffee => 300, :caffe_latte => 400}のクラスを表示
p ({:coffee => 300, :caffe_latte => 400}).class 

#問2　hashクラスのnewメソッドを使って空のhashオブジェクトを作って表示
p Hash.new

#問3　Caffelatteクラスを定義し、定義したクラスのオブジェクトを作り、そのオブジェクトのクラスを表示
class Caffelatte
end
caffe_latte = Caffelatte.new
p caffe_latte.class

#問4　Itemクラスを定義。nameメソッドを定義して、戻り値として"チーズケーキ"をかえす。Itemクラスのオブジェクトを作ってnameクラスを呼び出す
class Item
    def name
        "チーズケーキ"
    end
end
item = Item.new
p item.name 

#問5　Itemクラスを定義。インスタンス変数@nameへ代入するname=メソッドをItemクラスへ定義。定義したメソッドを使って@nameへチーズケーキを代入する。
#　　 また、インスタンス変数@nameを取得するnameメソッドを定義して@nameを表示する。
class Item
    def name=(text)
        @name=text

    end
    def name
        @name
    end
end
item = Item.new
item.name = "チーズケーキ"
p item.name

#問6 "商品を扱うオブジェクト"と表示させるinitializeメソッドをItemクラスに定義して呼び出す。
class Item
    def initialize
        p "商品を扱うメソッド"
    end
end
Item.new

#問7 Itemクラスにinitializeメソッドを定義。引数を1つ渡し、@name変数に代入してItemクラスのオブジェクトを2つ作り、@name変数にそれぞれ
#    "マフィン"、"スコーン"を代入。また、インスタンス変数@nameを取得するnameメソッドを定義して、2つのオブジェクトの@name変数を表示。
class Item
    def initialize(name)
        @name=name
    end
    def name
        @name
    end
end
item1 = Item.new("マフィン")
item2 = Item.new("スコーン")

puts item1.name
puts item2.name

#問8 Drinkクラスにクラスメソッドtodays_specialを定義して、"ホワイトモカ"を戻り値とする。
class Drink
    def self.todays_special
        "ホワイトモカ"
    end
end
puts Drink.todays_special


#問9 item1.rbのItem2クラスを継承したFoodクラスを作る。Foodクラスのオブジェクトを作り、@nameに"チーズケーキ"を代入し、nameメソッドを呼び出す。
class Item2
    def name
        @name
    end
    def name=(text)
        @name=text
    end
end

class Food < Item2
end
food = Food.new
food.name = "チーズケーキ"
puts food.name
