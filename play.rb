require "./question"
require "./player"

class Game

  def initialize
    @P1 = Player.new('Player 1')
    @P2 = Player.new('Player 2')
    @current_player = @P1
    puts "A new game has begun!"
  end

  def gameover?
    @P1.dead? || @P2.dead?
  end

  def start
    puts "#{@current_player.name} will go first."

    while (!gameover?)
      turn
    end

    puts "----- GAME OVER -----"
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
      puts "Stats => #{@P1.name}: #{@P1.points}/3 vs. #{@P2.name}: #{@P2.points}/3 \n"
    else
      @current_player.points -= 1
      puts "Oh no! #{@current_player.name} lost a life!"
      puts "Stats => #{@P1.name}: #{@P1.points}/3 vs. #{@P2.name}: #{@P2.points}/3 \n"
      
    end

    if @current_player.dead?
      puts "u ded!!!!!"
    else
      if @current_player == @P1
        @current_player = @P2
      else
        @current_player = @P1
      end
  
    end 

  end

end

game1 = Game.new
game1.start
