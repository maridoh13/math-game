require "./question"
require "./player"

class Game

  def initialize
    @P1 = Player.new('Player 1')
    @P2 = Player.new('Player 2')
    @current_player = @P1
    puts "A new game has begun!"
  end

  def start
    puts "#{@current_player.name} will go first."
    while (@P1.points != @P1.dead? || @P2.points != @P2.dead?)
      turn
    end

    puts "----- GAME OVER -----"
    puts "stats" ##
    puts "Thank you for playing!"

  end

  
   
  def turn

    question = Question.new 

    puts "\n----- NEW TURN -----"
    prompt = '> '
    puts "#{@current_player.name}: #{question.to_s}" 
    print prompt
    user_answer = gets.chomp

    if (user_answer == question.answer)
      puts "Good job!"
    else
      @current_player.points -= 1
      puts "Oh no! #{@current_player.name} lost a life!"
      puts "Stats => #{@P1.name}: #{@P1.points}/3 vs. #{@P2.name}: #{@P2.points}/3 \n"
      # puts "#{@P1.report} vs #{@P2.report}"      maybe? maybe not?  maybe stupid?
      
    end

    ### dead? 
    if @current_player.dead?
      puts "u ded"
    end 



    # @current_player = ########  not working
    if @current_player == @P1
      @current_player = @P2
    else
      @current_player = @P1
    end

    ### Delete later!
    puts "Now the current player is #{@current_player.name}"


  end

  




end


# question1 = Question.new
game1 = Game.new
game1.start
