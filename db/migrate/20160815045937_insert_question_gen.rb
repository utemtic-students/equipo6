class InsertQuestionGen < ActiveRecord::Migration
  def change
  	q = Question.new
	q.id = 1
	q.Question = "¿Quienes te acompañan?"
	q.Section = 1
	q.save

	a = Answer.new
	a.id = 1
	a.Body = 'Solo'
	a.SRC = 'questions/acompañantes/solo/solo.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 1
	qxa.questions_id = 1
	qxa.answers_id = 1
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 1
	axc.answers_id = 1
	axc.clasifications_id = 12
	axc.save

	a = Answer.new
	a.id = 2
	a.Body = 'Amigos'
	a.SRC = 'questions/acompañantes/amigos/amigos.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 2
	qxa.questions_id = 1
	qxa.answers_id = 2
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 2
	axc.answers_id = 2
	axc.clasifications_id = 9
	axc.save

	a = Answer.new
	a.id = 3
	a.Body = 'Familia'
	a.SRC = 'questions/acompañantes/familia/familia.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 3
	qxa.questions_id = 1
	qxa.answers_id = 3
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 3
	axc.answers_id = 3
	axc.clasifications_id = 10
	axc.save

	a = Answer.new
	a.id = 4
	a.Body = 'Pareja'
	a.SRC = 'questions/acompañantes/pareja/pareja.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 4
	qxa.questions_id = 1
	qxa.answers_id = 4
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 4
	axc.answers_id = 4
	axc.clasifications_id = 11
	axc.save



	q = Question.new
	q.id = 2
	q.Question = "¿Que estas buscando?"
	q.Section = 1
	q.save

	a = Answer.new
	a.id = 5
	a.Body = 'Restaurantes'
	a.SRC = 'questions/restaurantes/Restaurantes.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 5
	qxa.questions_id = 2
	qxa.answers_id = 5
	qxa.save
	axc = AnswerXType.new
	axc.id = 1
	axc.answers_id = 5
	axc.types_id = 1
	axc.save

	a = Answer.new
	a.id = 6
	a.Body = 'Actividades Extremas'
	a.SRC = 'questions/actividadesExtremas/gotcha.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 6
	qxa.questions_id = 2
	qxa.answers_id = 6
	qxa.save
	axc = AnswerXType.new
	axc.id = 2
	axc.answers_id = 6
	axc.types_id = 2
	axc.save

	a = Answer.new
	a.id = 7
	a.Body = 'Playas'
	a.SRC = 'questions/playa/playa.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 7
	qxa.questions_id = 2
	qxa.answers_id = 7
	qxa.save
	axc = AnswerXType.new
	axc.id = 3
	axc.answers_id = 7
	axc.types_id = 6
	axc.save

	a = Answer.new
	a.id = 8
	a.Body = 'Bares'
	a.SRC = 'questions/bar/bar.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 8
	qxa.questions_id = 2
	qxa.answers_id = 8
	qxa.save
	axc = AnswerXType.new
	axc.id = 4
	axc.answers_id = 4
	axc.types_id = 4
	axc.save

	a = Answer.new
	a.id = 9
	a.Body = 'Plazas'
	a.SRC = 'questions/plaza/plaza.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 9
	qxa.questions_id = 2
	qxa.answers_id = 9
	qxa.save
	axc = AnswerXType.new
	axc.id = 5
	axc.answers_id = 9
	axc.types_id = 3
	axc.save

	a = Answer.new
	a.id = 10
	a.Body = 'Antros'
	a.SRC = 'questions/antro/antro.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 10
	qxa.questions_id = 2
	qxa.answers_id = 10
	qxa.save
	axc = AnswerXType.new
	axc.id = 6
	axc.answers_id = 10
	axc.types_id = 5
	axc.save
  end
end
