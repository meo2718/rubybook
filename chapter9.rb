#問1 モジュールChocolateChipを定義して、インスタンスメソッドchocolate_chipを定義。メソッドの中では@name+="チョコレートチップ"を実行
module ChocolateChip
 def chocolate_chip
    @name += "チョコレートチップ"
 end
end

#問２ module3.rbにインクルードしdrinkオブジェクトでchocolate_chipメソッドを呼び出し@nameを表示
module ChocolateChip
    def chocolate_chip
       @name += "チョコレートチップ"
    end
   end

class Drink
    include ChocolateChip
    def initialize(name)
        @name = name
    end

    def name
        @name
    end
end
drink = Drink.new("モカ")
drink.chocolate_chip
puts drink.name

#問3モジュールEspressoShotを定義して定数priceに100を代入して、その定数priceを表示
module EspressoShot
    Price = 100
end
puts EspressoShot::Price

#問４ モジュールWhippedcreamを別ファイルに作り、require_relativeで読み込みモジュールのクラスメソッドinfoを呼び出す

