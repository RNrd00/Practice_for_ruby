#92page
def fizz_buzz(n)
    if n%15==0
        'Fizz Buzz'
    elsif n%3==0
        'Fizz'
    elsif n%5==0
        'Buzz'
    else
        n.to_s
    end
end

#puts '数字を入力してください。数字以外は入力しないでください。'
#input = gets.to_i
#puts fizz_buzz(input)