require 'stringio'

def try_chatter_logic(chatter_raymond, something_else)

  output_capture = StringIO.new
  $stdout = output_capture

  puts "chatter_raymond=#{chatter_raymond}, something_else=#{something_else}"

  unless chatter_raymond
    puts 'chatter...'
  else
    puts 'silence...'
    if something_else
      puts 'Kill'
    else
      puts 'Learn'
    end
  end

  puts   # an extra newline

  output_capture.string
end

STDOUT.puts try_chatter_logic(true, true)
STDOUT.puts try_chatter_logic(true, false)
STDOUT.puts try_chatter_logic(false, true)
STDOUT.puts try_chatter_logic(false, false)


