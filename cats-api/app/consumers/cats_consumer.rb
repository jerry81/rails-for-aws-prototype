class CatsConsumer < Racecar::Consumer
  subscribes_to "cats"

  def process(message)
    puts "Received message: #{message.value}"
  end
end
