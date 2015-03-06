@question_types = {add: 'plus', subtract: 'minus', multiply: 'times', divide: 'divided by'}

def generate_question(player_name)
  question = {}
  which_type = rand(0..(@question_types.size - 1))
  first_num = rand(1..20)
  second_num = rand(1..20)
  question_type = @question_types.keys[which_type]
  question_text = "#{player_name}, what is #{first_num} #{@question_types[question_type]} #{second_num}? "

  question[:text] = question_text
  question[:type] = question_type
  question[:first_num] = first_num
  question[:second_num] = second_num

  question
 end

def verify_answer?(question, answer)
  case question[:type]
  when :add
    question[:first_num] + question[:second_num] == answer
  when :subtract
    question[:first_num] - question[:second_num] == answer
  when :multiply
    question[:first_num] * question[:second_num] == answer
  when :divide
    question[:first_num] / question[:second_num] == answer
  end
 end

 def get_question_text(question)
  question[:text]
 end
 