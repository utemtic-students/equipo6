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

	axq = AnswerXQuestion.new
	axq.id = 1
	axq.answers_id = 5
	axq.questions_id = 3
	axq.save

	q = Question.new
	q.id = 3
	q.Question = "¿Que te gustaria comer?"
	q.Section = 1
	q.save

	a = Answer.new
	a.id = 6
	a.Body = 'China'
	a.SRC = 'questions/restaurantes/china/china.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 6
	qxa.questions_id = 3
	qxa.answers_id = 6
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 5
	axc.answers_id = 6
	axc.clasifications_id = 18
	axc.save

	a = Answer.new
	a.id = 7
	a.Body = 'Cortes Finos'
	a.SRC = 'questions/restaurantes/mexicana/mexicana.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 7
	qxa.questions_id = 3
	qxa.answers_id = 7
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 6
	axc.answers_id = 7
	axc.clasifications_id = 26
	axc.save

	a = Answer.new
	a.id = 8
	a.Body = 'Mariscos'
	a.SRC = 'questions/restaurantes/mariscos/mariscos.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 8
	qxa.questions_id = 3
	qxa.answers_id = 8
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 7
	axc.answers_id = 8
	axc.clasifications_id = 20
	axc.save

	a = Answer.new
	a.id = 9
	a.Body = 'Rapida'
	a.SRC = 'questions/restaurantes/rapida/rapida.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 9
	qxa.questions_id = 3
	qxa.answers_id = 9
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 8
	axc.answers_id = 9
	axc.clasifications_id = 21
	axc.save

	a = Answer.new
	a.id = 10
	a.Body = 'Actividades'
	a.SRC = 'questions/actividades/actividades.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 10
	qxa.questions_id = 2
	qxa.answers_id = 10
	qxa.save
	axc = AnswerXType.new
	axc.id = 2
	axc.answers_id = 10
	axc.types_id = 2
	axc.save

	axq = AnswerXQuestion.new
	axq.id = 2
	axq.answers_id = 10
	axq.questions_id = 4
	axq.save

	q = Question.new
	q.id = 4
	q.Question = "¿Como te consideras?"
	q.Section = 4
	q.save

	a = Answer.new
	a.id = 11
	a.Body = 'Tranquilo'
	a.SRC = 'questions/tranquilo/tranquilo.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 11
	qxa.questions_id = 4
	qxa.answers_id = 11
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 11
	axc.answers_id = 11
	axc.clasifications_id = 3
	axc.save

	a = Answer.new
	a.id = 12
	a.Body = 'Extremo'
	a.SRC = 'questions/extremo/extremo.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 12
	qxa.questions_id = 4
	qxa.answers_id = 12
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 12
	axc.answers_id = 12
	axc.clasifications_id = 2
	axc.save

	

	q = Question.new
	q.id = 5
	q.Question = "¿Que actividades extremas te gustaria practicar?"
	q.Section = 1
	q.save

	a = Answer.new
	a.id = 13
	a.Body = 'Moto Acuatica'
	a.SRC = 'questions/extremo/motoAcuatica.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 13
	qxa.questions_id = 5
	qxa.answers_id = 13
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 13
	axc.answers_id = 13
	axc.clasifications_id = 1
	axc.save

	a = Answer.new
	a.id = 14
	a.Body = 'Cayack'
	a.SRC = 'questions/extremo/cayack.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 14
	qxa.questions_id = 5
	qxa.answers_id = 14
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 14
	axc.answers_id = 14
	axc.clasifications_id = 1
	axc.save

	a = Answer.new
	a.id = 15
	a.Body = 'Pladdle Surf'
	a.SRC = 'questions/extremo/pladdleSurf.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 15
	qxa.questions_id = 5
	qxa.answers_id = 15
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 15
	axc.answers_id = 15
	axc.clasifications_id = 1
	axc.save


	

	q = Question.new
	q.id = 6
	q.Question = "¿Que actividades tranquilas te gustaria practicar?"
	q.Section = 1
	q.save

	a = Answer.new
	a.id = 16
	a.Body = 'Banana'
	a.SRC = 'questions/tranquilo/banana.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 16
	qxa.questions_id = 6
	qxa.answers_id = 16
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 16
	axc.answers_id = 16
	axc.clasifications_id = 1
	axc.save

	a = Answer.new
	a.id = 17
	a.Body = 'Paseo En Lancha'
	a.SRC = 'questions/tranquilo/PaseoEnLancha.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 17
	qxa.questions_id = 6
	qxa.answers_id = 17
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 17
	axc.answers_id = 17
	axc.clasifications_id = 1
	axc.save

	a = Answer.new
	a.id = 18
	a.Body = 'Barco Fiesta'
	a.SRC = 'questions/tranquilo/barcoFiesta.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 18
	qxa.questions_id = 6
	qxa.answers_id = 18
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 18
	axc.answers_id = 18
	axc.clasifications_id = 1
	axc.save

	a = Answer.new
	a.id = 19
	a.Body = 'Tortugas'
	a.SRC = 'questions/tranquilo/tortugas.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 19
	qxa.questions_id = 6
	qxa.answers_id = 19
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 19
	axc.answers_id = 19
	axc.clasifications_id = 1
	axc.save

	
	a = Answer.new
	a.id = 20
	a.Body = 'Playas'
	a.SRC = 'questions/playa/playa.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 20
	qxa.questions_id = 2
	qxa.answers_id = 20
	qxa.save
	axc = AnswerXType.new
	axc.id = 20
	axc.answers_id = 20
	axc.types_id = 6
	axc.save
	axc = AnswerXClasification.new
	axc.id = 50
	axc.answers_id = 20
	axc.clasifications_id = 33
	axc.save

	a = Answer.new
	a.id = 21
	a.Body = 'Antros'
	a.SRC = 'questions/antros/antros.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 21
	qxa.questions_id = 2
	qxa.answers_id = 21
	qxa.save
	axc = AnswerXType.new
	axc.id = 21
	axc.answers_id = 21
	axc.types_id = 5
	axc.save

	a = Answer.new
	a.id = 22
	a.Body = 'Bares'
	a.SRC = 'questions/bares/bares.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 22
	qxa.questions_id = 2
	qxa.answers_id = 22
	qxa.save
	axc = AnswerXType.new
	axc.id = 22
	axc.answers_id = 22
	axc.types_id = 4
	axc.save

	a = Answer.new
	a.id = 23
	a.Body = 'Plazas'
	a.SRC = 'questions/plazas/plazas.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 23
	qxa.questions_id = 2
	qxa.answers_id = 23
	qxa.save
	axc = AnswerXType.new
	axc.id = 23
	axc.answers_id = 23
	axc.types_id = 3
	axc.save
	axc = AnswerXClasification.new
	axc.id = 30
	axc.answers_id = 23
	axc.clasifications_id = 32
	axc.save

	q = Question.new
	q.id = 7
	q.Question = "¿Que música te gusta?"
	q.Section = 1
	q.save

	a = Answer.new
	a.id = 24
	a.Body = 'Disco'
	a.SRC = 'questions/musica/disco/disco.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 24
	qxa.questions_id = 7
	qxa.answers_id =24
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 24
	axc.answers_id = 24
	axc.clasifications_id = 14
	axc.save

	a = Answer.new
	a.id = 25
	a.Body = 'Rock'
	a.SRC = 'questions/musica/rock/rock.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 25
	qxa.questions_id = 7
	qxa.answers_id = 25
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 25
	axc.answers_id = 25
	axc.clasifications_id = 16
	axc.save

	a = Answer.new
	a.id = 26
	a.Body = 'Reggae'
	a.SRC = 'questions/musica/reggae/reggae.jpg'
	a.Description = ""
	a.save
	qxa = QuestionXAnswer.new
	qxa.id = 26
	qxa.questions_id = 7
	qxa.answers_id = 26
	qxa.save
	axc = AnswerXClasification.new
	axc.id = 26
	axc.answers_id = 26
	axc.clasifications_id = 15
	axc.save

	axq = AnswerXQuestion.new
	axq.id = 7
	axq.answers_id = 21
	axq.questions_id = 7
	axq.save

	axq = AnswerXQuestion.new
	axq.id = 8
	axq.answers_id = 22
	axq.questions_id = 7
	axq.save

  end
end
