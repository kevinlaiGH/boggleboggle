class BoggleBoard
  def initialize
      # how do we describe it
    #   @space = Array.new(16, '_') # for all 16 row _
      @spaces = Array.new(16, "_")
      @alphabet = ('A'..'Z').to_a

  end

# what does it do
# when the
  def shake!
    # take space in a new variable
    # space = @spaces
    # replace them with random letters (pro good idea to create a var for this)

    @spaces.map! do |space|
        space = @alphabet.shuffle.take(1)
    end

    @spaces


    # this work too
    output_letter = String.new

    alphabet_array =  @alphabet.sample(16)
    # alphabet_array = alphabet_array.sample(16)

    4.times do
       output_letter << alphabet_array.shift(4).join(' ') + "\n"

    end

     output_letter

  end

  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  def to_s
    # print @space
    @spaces # print out 16 _
    # @space.join("a")

    # a new string for the output
    output_string = String.new
    #making a variable to medd with so I dont screw up my instance variable
    letter_array = @spaces
    # print the output

    # how do I put them in for lines.
    #   output_string << letter_array.shift(4).join('')  # print out 4 line
    #    output_string << letter_array.shift(4).join(' ') # print ut 4 line and space
    # take the empty output_string
    # add 4 items from letter_array to the output_string

    4.times do
       output_string << letter_array.shift(4).join(' ') + "\n"

    end

    # join them with a ''
    # add a line break
    # do this process 3 more times

    #print output
    output_string


  end
end

board = BoggleBoard.new

# puts board.to_s
puts board.shake!.to_s
