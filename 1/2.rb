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

#しばらくページ飛びます。続きはrgb.rbで

p '#12abcd'.scan(/\w\w/)
#page128

#page131

a=[1,2,3,4,5]
p a[1,3]

a=[1,2,3,4,5]
p a.values_at(0,2,4)

a=[1,2,3]
p a[a.size - 1]

p a[-1]
p a[-2]
p a[-2, 2]
p a.last
p a.last(2)
p a.first
p a.first(2)
a[-3]=-10
p a
#a[-4]=0
a=[1,2,3,4,5]
a[1,3]=100
p a

a=[]
a.push(1)
a.push(2,3)
p a

a=[1,2,3,1,2,3]
a.delete(2)
p a
#a.delete(5)
#p a

a=[1]
b=[2,3]
p a.concat(b)
p a
p b

a=[1]
b=[2,3]
p a+b
p a
p b

a=[1,2,3]
b=[3,4,5]
p a|b

a=[1,2,3]
b=[3,4,5]
p a-b

a=[1,2,3,]
b=[3,4,5]
p a&b

require 'set'
a=Set[1,2,3]
b=Set[3,4,5]
p a|b
p a-b
p a&b

e,f=100,200,300
p e
p f

e,*f=100,200,300
p e
p f

e,* =100,200,300
p e

e,=100,200,300
p e

a,*b,c,d=1,2,3,4,5
p a
p b
p c
p d

a,*b,c,d=1,2,3
p a
p b
p c
p d

a=[]
b=[2,3]
a.push(1)
a.push(b)
p a

a=[]
b=[2,3]
a.push(1)
a.push(*b)
p a

jp = ['japan','日本']
country='日本'
case country
when *jp
   p 'こんにちは'
end

def greet(*names)
    "#{names.join('と')},こんにちは!"
end
p greet('田中さん')
p greet('田中さん','鈴木さん')
p greet('田中さん','鈴木さん','佐藤さん')

def foo(a,*b,c,d)
    puts "a=#{a},b=#{b},c=#{c},d=#{d}"
end
p foo(1,2,3,4,5)

a=[1,2,3]
p [a]
p [*a]

#page137

a=[1,2,3]
p [-1,0,*a,4,5]

p [1,2,3]==[1,2,3]
p [1,2,3]==[1,2,4]
p [1,2,3]==[1,2]
p [1,2,3]==[1,2,3,4]

p %w!apple melon orange!
p %w(apple melon orange)
p %w(
    apple
    melon
    orange
    )

p %w(big\ apple small\ melon orange)
#page138

prefix='This is'
p %W(#{prefix}\ an\ apple small\nmelon orange)

p 'Ruby'.chars
p 'Ruby,Java,Python'.split(',')

a=Array.new
p a
a=Array.new(5)
p a
a=Array.new(5,0)
p a

a=Array.new(10) { |n| n % 3 + 1 }
p a

a=Array.new(5,'default')
str=a[0]
p str
str.upcase!
p str
p a

a=Array.new(5) { 'default' }
p a
str=a[0]
p str
str.upcase!
p str
p a

#a=Array.new(5,0)
#p a
#n=a[0]
#p n
#n.upcase!
#p a

a='abcde'
a[0]='X'
p a
a[1,3]='Y'
p a
a << 'PQR'
p a

fruits=['apple','orange','melon']
fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }

fruits=['apple','orange','melon']
fruits.map.with_index { |fruit, i| puts "#{i}: #{fruit}" }

fruits=['apple','orange','melon']
p fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }

fruits=['apple','orange','melon']
p fruits.each
p fruits.map
p fruits.delete_if
#144page

fruits =['apple','orange','melon']
fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}" }
fruits.map.with_index(10) { |fruit, i| puts "#{i}: #{fruit}" }

dimensions=[
    [10,20],
    [30,40],
    [50,60],
    ]
areas=[]
dimensions.each do |dimension|
    length=dimension[0]
    width=dimension[1]
    areas << length*width
end
p areas

dimensions=[
    [10,20],
    [30,40],
    [50,60],
    ]
areas=[]
dimensions.each do |length,width|
    areas << length*width
end
p areas
#page145

dimensions.each do |length, width, foo ,ber|
    p [length, width, foo ,ber]
end

dimensions=[
    [10,20,100],
    [30,40,200],
    [50,60,300],
    ]
dimensions.each do |length,width|
     p [length, width]
 end
 #page146
 
 dimensions=[
     [10,20],
     [30,40],
     [50,60],
     ]
     
dimensions.each_with_index do |length, width, i|
    puts "length: #{length}, width: #{width}, i: #{i}"
end

 dimensions=[
     [10,20],
     [30,40],
     [50,60],
     ]
     
dimensions.each_with_index do |dimension, i|
    length = dimension[0]
    width = dimension[1]
    puts "length: #{length}, width: #{width}, i: #{i}"
end

 dimensions=[
     [10,20],
     [30,40],
     [50,60],
     ]

dimensions.each_with_index do |(length, width), i|
    puts "length: #{length}, width: #{width}, i: #{i}"
end
#page147

dimension, i = [[10,20],0]
p dimension
puts i

(length,width),i=[[10,20],0]
puts length
puts width
puts i

p ['1','20','300'].map { |s| s.rjust(3, '0') }
p ['1','20','300'].map { _1.rjust(3, '0') }
p ['japan','us','italy'].map.with_index { |country,n| [n,country] }
p ['japan','us','italy'].map.with_index { [_2,_1] }
#148page

 dimensions=[
     [10,20],
     [30,40],
     [50,60],
     ]
dimensions.each { p _1 }
dimensions.each { puts "#{_1} / #{_2}" }

#sum = 0
#[[1,2,3],[4,5,6]].each do
#    _1.each do
#        sum += _1
#   end
#end

sum = 0
[[1,2,3],[4,5,6]].each do |value|
    value.each do
       sum += _1
   end
end

#['1','20','300'].map { |s| _1.rjust(3,'0')}
#page149

numbers = [1,2,3,4]
sum = 0
numbers.each do |n; sum|
    sum = 10
    sum += n
    puts sum
end
p sum

#File.open('./sample.txt', 'w') do |file|
#    file.puts('1行目のテキストです。')
#    file.puts('2行目のテキストです。')
#    file.puts('3行目のテキストです。')
#end
#page150

a=[1,2,3]
a.delete(100)
p a

p a.delete(100) do
    'NG'
end

p a

#a.delete 100 { 'NG' }

p a.delete(100) { 'NG' }
p a
#page 151

names = ['田中','鈴木','佐藤']
san_names = names.map { |name| "#{name}さん" } 
p san_names.join('と')

names =['田中','鈴木','佐藤']
p names.map { |name| "#{name}さん" }.join('と')

names =['田中','鈴木','佐藤']
names2=names.map do |name|
    "#{name}さん"
end.join('と')
p names2

a = (10..)
p a
a= (10..nil)
p a

a=(..10)
p a
a=(nil..10)
p a
numbers=[10,20,30,40,50]
p numbers[2..]
p numbers[..1]

a=(nil..nil)
p a
a=(nil..)
p a
a=(..nil)
p a

sum=0
5.times { |n| sum += n}
p sum

sum=0
5.times { sum +=1}
p sum

a=[]
10.upto(14) { |n| a << n}
p a

a=[]
14.downto(10) { |n| a << n}
p a
#154page

a=[]
1.step(10,2) { |n| a << n }
p a

a=[]
10.step(1,-2) { |n| a << n }
p a

a=[]
while a.size < 5
    a << 1
end
p a

a = []
while a.size < 5 do a << 1 end
p a

a = []
a << 1 while a.size < 5
p a
#155page

a=[]
while false
    a << 1
end
p a

begin
    a << 1
end while false
p a

a=[10,20,30,40,50]
until a.size <= 3
a.delete_at(-1)
end
p a

numbers = [1,2,3,4]
sum=0
for n in numbers
    sum+=n
end
p sum

sum = 0
for n in numbers do sum += n end
p sum

numbers = [1,2,3,4]
sum = 0
for n in numbers
    sum_value = n.even? ? n*10 : n
    sum += sum_value
end
p n
p sum_value

#numbers = [1,2,3,4,5]
#loop do
#    n=numbers.sample
#    puts n
#    break if n ==5
#end

#while true
#    n = numbers.sample
#    puts n
#    break if n ==5
#end

def factorial(n)
    n > 0 ? n*factorial(n-1) : 1
end
p factorial(5)
p factorial(0)

def factorial(n)
    ret=1
    (1..n).each  { |n| ret *= n }
    ret
end
p factorial(5)
p factorial(0)

p (1..4).map { |n| n*10 }
p 1.upto(5).select { |n| n.odd? }

numbers = [1,2,3,4,5].shuffle
numbers.each do |n|
    puts n
    break if n == 5
end

numbers = [1,2,3,4,5].shuffle
i = 0
while i < numbers.size
    n=numbers[i]
    puts n
    break if n == 5
    i +=1
end
#160page

ret =
while true
    break
end
p ret

ret =
while true
    break 123
end
p ret

#fruits = ['apple', 'melon', 'orange']
#numbers = [1,2,3]
#fruits.each do |fruit|
#    numbers.shuffle.each do |n|
#        puts "#{fruit}, #{n}"
#        break if n == 3
#    end
#end

#fruits = ['apple','melon','orange']
#numbers = [1,2,3]
#catch :done do
#    fruits.shuffle.each do |fruit|
#        numbers.shuffle.each do |n|
#        puts "#{fruit}, #{n}"
#        if fruit == 'orange' && n == 3
#            throw :done
#        end
#    end
#end
#end

ret =
catch :done do
    throw :done
end
p ret

ret =
catch :done do
    throw :done, 123
end
p ret

def calc_with_break
    numbers = [1,2,3,4,5,6]
    target=nil
    numbers.shuffle.each do |n|
        target=n
    break if n.even?
end
target*10
end
p calc_with_break

def calc_with_return
    numbers=[1,2,3,4,5,6]
    target=nil
    numbers.shuffle.each do |n|
        target=n
        return if n.even?
    end
    target*10
end
p calc_with_return
#page 163

#[1,2,3].each do |n|
#    puts n
#    return
#end

numbers = [1,2,3,4,5]
numbers.each do |n|
    next if n.even?
    puts n
end

numbers =[1,2,3,4,5]
i=0
while i < numbers.size
    n=numbers[i]
    i+=1
    next if n.even?
    puts n
end
#164page

fruits = ['apple','melon','orange']
numbers = [1,2,3,4]
fruits.each do |fruit|
    numbers.each do |n|
        next if n.even?
        puts "#{fruit},#{n}"
    end
end

#foods =['ピーマン','トマト','セロリ']
#foods.each do |food|
#    print "#{food}は好きですか？ =>"
#    answer = ['はい','いいえ'].sample
#    puts answer
#    
#    redo unless answer == 'はい'
#end

foods = ['ピーマン','トマト','セロリ']
count = 0
foods.each do |food|
    print "#{food}は好きですか? =>"
    answer = 'いいえ'
    puts answer
    
    count += 1
    redo if answer != 'はい' && count < 2
    count = 0
end
#page169

p {}.class

a={
    'japan' => 'yen',
    'us' => 'dollar',
    'india' => 'rupee'
}
p a
a={
    'japan' => 'yen',
    'us' => 'dollar',
    'india' => 'rupee',
}
p a
#a={ 'japan' => 'yen', 'japan' => '円' }
#p a

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies['italy'] = 'euro'
p currencies

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies['japan'] = '円'
p currencies

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
p currencies['india']

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
p currencies['brazil']

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies.each do |key, value|
    puts "#{key} : #{value}"
end
#page172

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies.each do |key_value|
    key = key_value[0]
    value = key_value[1]
    puts "#{key} : #{value}"
end

a = { 'x' => 1, 'y' => 2, 'z' => 3 }
b = { 'x' => 1, 'y' => 2, 'z' => 3 }
p a==b

c = { 'z' => 3, 'y' => 2, 'x' => 1 }
p a==c

d = { 'x' => 10, 'y' => 2, 'z' => 3}
p a==d

{}.size
{ 'x' => 1, 'y' => 2, 'z' => 3 }.size

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
p currencies.delete('japan')
p currencies

currencies = {'japan' => 'yen', 'us'=>'dollar','india'=>'rupee'}
p currencies.delete('italy')
p currencies.delete('italy') { |key| "Not Found: #{key}" }
#page174

p :apple.class
p :apple == :apple

p :apple.object_id
p :apple.object_id
p :apple.object_id

#symbol = :apple
#p symbol.upcase!

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
p currencies['japan']

currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }
p currencies[:japan]
#page175