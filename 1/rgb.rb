#page120

    def to_hex(r,g,b)
        [r,g,b].sum('#') do |n|
            n.to_s(16).rjust(2,'0')
        end
    end

#rjustメソッドは右寄せを行う。
#page124