
def morse_encode(str)
  words = str.split(" ")
  morse_words = words.collect {|word| morse_1word(word)}
  morse_words.join("  ")
end

def morse_1word(word)
  morse_dict = {
	"a" => ".-",
	"b" => "-...",
	"c" => "-.-.",
	"d" => "-..",
	"e" => ".",
	"f" => "..-.",
	"g" => "--.",
	"h" => "....",
	"i" => "..",
	"j" => ".---",
	"k" => "-.-",
	"l" => ".-..",
	"m" => "--",
	"n" => "-.",
	"o" => "---",
	"p" => ".--.",
	"q" => "--.-",
	"r" => ".-.",
	"s" => "...",
	"t" => "-",
	"u" => "..-",
	"v" => "...-",
	"w" => ".--",
	"x" => "-..-",
	"y" => "-.--",
	"z" => "--.."
  }
  
  letters = word.split("")
  codes = letters.collect {|x| morse_dict[x]}
  codes.join(" ")
end