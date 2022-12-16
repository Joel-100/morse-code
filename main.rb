MORSE_TRANSLATOR = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  ' ' => ' ',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}.freeze

# Create a method that translates a morse character to Uppercase
def morse_character(character)
MORSE_TRANSLATOR[character].upcase
end

def morse_words(character)
  morse_words = ''
  character.split.each { |word| morse_words += morse_character(word) }
  morse_words
end

def morse_message(character)
  morse_message = ''
  character.split('   ').each { |word| morse_message += "#{morse_words(word)} " }
  morse_message
end

# test cases
puts morse_character('.-')
puts morse_words('-- -.--')
puts morse_message('-- -.--   -. .- -- .')
puts morse_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
