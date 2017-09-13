class BoggleBoard
    def initialize
      # how do we describe it
      # creating an array of 16 underscores
      @spaces = Array.new(16,"_")

      # The 'to_a' simply tells Ruby: "to array".
      @alphabet = ("A".."Z").to_a
      @alphabet = @alphabet - ["Q"] + ["Qu"] # deleting Q # adding Qu
    end

# what does it do?
# "!" can change the variable
     def shake!
      # take spaces
      # REPLACE them with random numbers (a good idea is to create a VAR for this)
      # split it into board
      # call the shake method with Boggleboard class
      # could use "MAP"
      @spaces.map! do |space|
        space = @alphabet.shuffle.take(1)
      end
  end

  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  def to_s
    # a new string for the output
    output_string = String.new

    output_string = @spaces[0..3].join(' ') + "\n"
    output_string = output_string + @spaces[4..7].join(' ') + "\n"
    output_string = output_string + @spaces[8..11].join(' ') + "\n"
    output_string = output_string + @spaces[12..15].join(' ') + "\n"
    # making a variable to mess with so i dont screw up my instance variable


    # how do i put them in for lines

    # # Run it for 4 times
    # 4.times do
      # we are adding output_string to letter_array, "\n" means new line
    #   output_string << letter_array.shift(4).join('') + "\n"
    # end

    # take the empty output_spring
    # add 4 items from letter_array to the output_string
    # join them with a ''
    # add a line break
    # do this process 3 more times



    # print the output_string
    puts output_string
  end
end



board = BoggleBoard.new
puts board
board.shake!
puts board
