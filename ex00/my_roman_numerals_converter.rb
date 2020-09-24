def roman_numeral number
    return "The Romans have no zeros/Characters just heros." if number == 0 || !number.is_a?(Integer)
    roman_symbols = {1000 => "M",900 => "CM", 500 => "D",400 => "CD", 100 => "C",90 => "XC", 50 => "L",40 =>"XL", 10 => "X",9 => "IX", 5 => "V",4 => "IV",  1=> "I"}
    symbols = []
    roman_symbols.each do |num, sym|
      symbols.push(sym * (number/num))
      number = number % num
    end
    symbols.join
end