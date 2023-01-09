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

