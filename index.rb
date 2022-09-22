def decode_char(str)
  alphabets = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }
  alphabets[str]
end

def decode_word(word)
  word_split = word.split
  word_split.map { |string| decode_char(string) }.join
end

def decode_message(message)
  message_split = message.split('  ')
  message_split.map { |word| decode_word(word) }.join(' ')
end
