#page 103
a=[].class
puts a
#配列はArrayクラスのオブジェクトである

a=[
    1,
    2,
    3,
    ]
    puts a
#最期の要素に,がついてもエラーにならない

a=[1,"apple",2]
puts a
#配列は異なるデータ型を格納できる

a=[[10,20,30],[40,50,60]]
puts a
#配列の中に配列を含めることもできる

a=[1,2,3]
puts a[100]
#存在しない要素を指定するとnil(空白)が返ってくる

puts a.size
#sizeメソッドは配列の長さを取得する

a[4]=50
puts a
#もとの大きさよりも大きい添字を指定すると、間の値がnilで埋められる

a << 1
puts a
#<<を使うと配列の最後に要素を追加できる page105

puts a.delete_at(3)
puts a
a.delete_at(100)
puts a
#delete_atメソッドは特定の位置にある要素を削除する。存在しない添字を指定するとnilが返る

c,d=10
puts c,d
#配列は多重代入できる。右辺の数が少ないとnilが返る

c,d=[1,2,3]
puts c,d
#右辺の数が多いとはみ出した値が切りすてられる

puts 14.divmod(3)
quo_rem=14.divmod(3)
puts "商=#{quo_rem[0]},余り=#{quo_rem[1]}"
#divmodメソッドは商と余りを返す。多重代入を合わせて使えばスッキリと書ける

numbers =[1,2,3,4]
sum=0
numbers.each do |n|
    sum+=n
end
puts sum
#eachメソッドはブロックを利用して配列自身に対して繰り返せという命令を送る。doからendの部分までがブロックとなる

a=[1,2,3,1,2,3]
a.delete_if do |n|
    n.odd?
end
puts a
#delete_ifメソッドは配列の要素を順にとってブロックに渡す。戻り値の条件が真か判断し、真なら削除する。109page

numbers.each do
    sum +=1
end
puts sum
#ブロックパラメータは省略できる

numbers=[1,2,3,4]
sum=0
numbers.each do |n|
    sum_value=n.even? ? n * 10 : n
    sum += sum_value
end
puts sum
#ブロック内にはRubyのコードを自由に書ける。ブロック内で定義した変数はブロック外で使えないので注意。これをスコープと呼ぶ

numbers=[1,2,3,4]
sum=0
sum_value=100
numbers.each do |sum_value|
    sum+=sum_value
end
puts sum
puts sum_value
#ブロックパラメータの名前をブロックの外にある変数の名前と同じにすると、ブロック内ではブロックパラメータの値が優先される。
#名前の種類によりほかの変数やメソッドが参照できなくなることをシャドーイングと言う
#ブロックを抜ければ外で定義した変数を再び参照できる

numbers=[1,2,3,4]
sum=0
numbers.each {|n| sum+= n}
puts sum
#改行を入れなくてもブロックは動作する。また、{}で囲んでもブロックは作れる

numbers=[1,2,3,4]
sum=0
numbers.each {|n|
sum+= n
}
puts sum
#{}も改行可

numbers=[1,2,3,4,5]
new_numbers=numbers.map{|n| n*10}
puts new_numbers
#mapメソッドは各要素に対してブロックを評価した結果を新しい配列にして返す

numbers=[1,2,3,4,5,6]
even_numbers=numbers.select{|n| n.even?}
puts even_numbers
#selectメソッドは各要素に対してブロックを評価し、その戻り値が真の要素を集めた配列を返す。113page

numbers=[1,2,3,4,5,6]
non_multiples_of_three=numbers.reject{|n| n%3==0}
puts non_multiples_of_three
#rejectメソッドはブロックの戻り値が偽である要素を集める。

numbers=[1,2,3,4,5,6]
even_number=numbers.find{|n| n.even?}
puts even_number
#findメソッドはブロックの戻り値が真になった最初の要素を返す

numbers=[1,2,3,4]
puts numbers.sum
numbers=[1,2,3,4]
puts numbers.sum{|n| n*2}
#sumメソッドは要素の合計を求める

numbers=[1,2,3,4]
puts numbers.sum(5)
#初期値は0だが、引数で0以外の初期値を指定できる
#尚、文字列も連結可能

chars=['a','b','c']
puts chars.join
#配列の要素を連結して1つの文字列にするときはjoinメソッドを使用する page114
puts chars.join('-')
#第一引数に区切り文字を指定することも可能

data=['a',2,'b',4]
puts data.join
#数値が含まれていても.to_sで文字列に変換される

puts ['ruby','java','python'].map(&:upcase)
puts [1,2,3,4,5,6].select(&:odd?)
#&:メソッドは簡易的に条件を指定できる。
#1.ブロックパラメータが一個だけである
#2.ブロックの中で呼び出すメソッドには引数がない
#3.ブロックの中では、ブロックパラメータに対してメソッドを一回呼び出す以外の処理がない
#以上３つの条件を満たせば使用可能

puts (1..5).class
puts (1...5).class
#範囲はRangeクラスのオブジェクト。116page

range=1..5
puts range.include?(0)
puts range.include?(1)
puts range.include?(4.9)
puts range.include?(5)
puts range.include?(6)

range=1...5
puts range.include?(0)
puts range.include?(1)
puts range.include?(4.9)
puts range.include?(5)
puts range.include?(6)
#..だと5以下、...だと5未満となる

puts (1..5).include?(1)
#上のコードは範囲のところの括弧を外すとエラーになるので注意

a=[1,2,3,4,5]
puts a[1..3]
#配列に対し添字の代わりに範囲を渡すと指定した範囲の要素を出力可能 page117

def liquid?(temperature)
    (0...100).include?(temperature)
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)
#n以上m以下の判定をする際に範囲は便利

def charge(age)
    case age
    when 0..5
        0
    when 6..12
        300
    when 13..18
        600
    else
        100
    end
end
puts charge(2)
puts charge(7)
puts charge(14)
puts charge(19)
#範囲はcase文にも使える 118page

puts (1..5).to_a
puts ('a'..'e').to_a
puts ('bad'..'bag').to_a
puts [*1..5]
puts [*1...5]
#範囲オブジェクトに対し.to_aメソッド、或いは[]の中に*をつけると値が連続する配列を作れる

sum = 0
(1..4).each { |n| sum+=n }
puts sum
#範囲オブジェクトで直接eachメソッドを呼ぶ。sumに1~4の配列が代入され和が10に。

numbers=[]
(1..10).step(2){|n| numbers<<n}
puts numbers
#stepメソッドは値を増やす間隔を指定できる 119page

