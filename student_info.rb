system('clear')
class Test
	def initialize(subject="", pass_score=0,year=1,semester=1)
		# Instance variables
		@subject    = subject
		@pass_score = pass_score
		@semester   = semester
		@years = year
	end
	#setter
	def subject=(subject)
		@subject = subject
	end
	#getter
	def subject
		@subject
	end
	def pass_score=(score)
		@pass_score = score
	end
	def pass_score
		@pass_score
	end
	#setter
	def year=(year)
		@years = year
	end
	#getter
	def year
		@years
	end
	#setter		sefdw4rdeeww32
	def semester=(semester)
		@semester = semester
	end
	#getter
	def semester
		@semester
	end
end

class Student
    def initialize(name="")
		@name  = name
		@tests = []
		@test_scores = []
		@year_study = []
		@semester_study = []
		@year = []
		@time_study = []
		@tested_semester = []
		@test_year = []
    end

    def takes_test(test, test_score, tested_semester = 1, test_year = 1,date = '')
        @tests << test
        @test_scores << test_score
        @tested_semester << tested_semester
        @test_year << test_year
    end

    def set_date(year = 1,time_study)
      	@year_study << year
		@time_study << time_study  
    end

	def testing_semester(semster = 1)
		@semester_study << semster
	end

	def testing_year(year = 1)
		@year << year
	end
	
  def info
		puts "********************************************* #{@name} *******************************************************\n"
		@year_study.each_with_index do |year_study, index|
			if year_study.is_a? Numeric
        		if year_study >= 5
          			puts "\n...................... Your year Doesn't exist. .......................\n"
					break
				end
				puts "\n...................... Year #{year_study} , #{@time_study[index]} ......................."
				my_semester = @semester_study.uniq #combinde value array the same to one value
				my_semester.each_with_index do |semester, index|
					puts "------------------------Semester :#{semester} ------------------------\n"
					@tests.each_with_index { |test, index|
						if test.semester == semester && test.year == year_study
							if @test_scores[index] >= test.pass_score 
								puts "\tSubject :#{test.subject} \t score :#{@test_scores[index]} \tGrade: Pass" #\t #{semester} \t  #{year_study}
							else
								puts "\tSubject :#{test.subject} \t score :#{@test_scores[index]} \tGrade: False" #\t #{semester} \t  #{year_study}
							end
						end	
					}									
				end
				if year_study == 4
					puts "\n********************************************* Congratulations #{@name} ***************************************************"
					puts "********************************************* You are complited course ************************************************"
					puts "********************************************* You can get certificate *************************************************\n\n"
				end
			else
				if year_study == "S"
					puts "################### You are stoped on date :#{@time_study[index]} ###################"
				elsif year_study == "C"
					puts "################### You can start on date :#{@time_study[index]} on year: #{@year}###################"
				else

				end
			end
			
		end
  end
end 
#year 1
  t1  = Test.new("Math*****", 50,1,1)
  t2  = Test.new("Khmer****", 30,1,1)
  t3  = Test.new("Physic***", 40,1,1)
  t4  = Test.new("Chemistry", 35,1,1)

  t5  = Test.new("Geography", 35,1,2)
  t6  = Test.new("History", 25,1,2)
  t7  = Test.new("Biology", 35,1,2)
  test            = Test.new
  test.subject    = "English"
  test.pass_score = 45
  test.year 	  = 1
  test.semester   = 2
	#year 2
  t8 = Test.new("GGG21", 35,2,1)
  t9 = Test.new("VVV21", 45,2,1)
  t10 = Test.new("FF21", 25,2,1)

  t11 = Test.new("DDD22", 35,2,2)
  t12 = Test.new("CCC22", 45,2,2)
  t13 = Test.new("XXX22", 25,2,2)

  #year 3
  t14 = Test.new("AAA13", 35,3,1)
  t15 = Test.new("SSS13", 45,3,1)
  t16 = Test.new("ZZZ13", 25,3,1)

  t17 = Test.new("HHH23", 45,3,2)
  t18 = Test.new("NNN23", 35,3,2)
  t19 = Test.new("MMM23", 30,3,2)

  #year 4 
  t20 = Test.new("LLLL", 35,4,1)
  t21 = Test.new("OOOO", 45,4,1)
  t22 = Test.new("UUUUU", 25,4,1)

  t23 = Test.new("YYYYY", 25,4,2)
  t24 = Test.new("IIIII", 50,4,2)
  t25 = Test.new("RRRRR", 30,4,2)


  student_a = Student.new("Mr. A")
  student_a.set_date(1 ,"12-02-2020 to 12-08-2020")
  student_a_year_1 = student_a.testing_year(1)
  student_a_1_1 = student_a.testing_semester(1)
  student_a.takes_test(t1, 20,student_a_1_1,student_a_year_1)
  student_a.takes_test(t2, 15,student_a_1_1,student_a_year_1)
  student_a.takes_test(t3, 40,student_a_1_1,student_a_year_1)
  student_a.takes_test(t4, 70,student_a_1_1,student_a_year_1)

  student_a_1_2 = student_a.testing_semester(2)
  student_a.takes_test(t5, 15,student_a_1_2)
  student_a.takes_test(t6, 40,student_a_1_2)
  student_a.takes_test(t7, 70,student_a_1_2)
  student_a.takes_test(test, 46,student_a_1_2)
 
  student_a.set_date(2 ,"12-02-2020 to 12-08-2020")
  student_a_year_2= student_a.testing_year(2)
  student_a_2_1 = student_a.testing_semester(1)
  student_a.takes_test(t8, 40,student_a_2_1,student_a_year_2)
  student_a.takes_test(t9, 40,student_a_2_1,student_a_year_2)
  student_a.takes_test(t10, 40,student_a_2_1,student_a_year_2)

  student_a_2_2 = student_a.testing_semester(2)
  student_a.takes_test(t11, 30,student_a_2_2,student_a_year_2)
  student_a.takes_test(t12, 20,student_a_2_2,student_a_year_2)
  student_a.takes_test(t13, 50,student_a_2_2,student_a_year_2)

  student_a.set_date(3 ,"12-02-2020 to 12-08-2020")
  student_a_year_3= student_a.testing_year(3)
  student_a_3_1 = student_a.testing_semester(1)
  student_a.takes_test(t14, 40,student_a_3_1,student_a_year_3)
  student_a.takes_test(t15, 25,student_a_3_1,student_a_year_3)
  student_a.takes_test(t16, 40,student_a_3_1,student_a_year_3)

  student_a_3_2 = student_a.testing_semester(2)
  student_a.takes_test(t17, 20,student_a_3_2,student_a_year_3)
  student_a.takes_test(t18, 25,student_a_3_2,student_a_year_3)
  student_a.takes_test(t19, 25,student_a_3_2,student_a_year_3)

  student_a.set_date(4 ,"12-02-2020 to 12-08-2020")
  student_a_year_4= student_a.testing_year(4)
  student_a_4_1 = student_a.testing_semester(1)
  student_a.takes_test(t20, 40,student_a_4_1,student_a_year_4)
  student_a.takes_test(t21, 25,student_a_4_1,student_a_year_4)
  student_a.takes_test(t22, 40,student_a_4_1,student_a_year_4)

  student_a_4_2 = student_a.testing_semester(2)
  student_a.takes_test(t23, 40,student_a_4_2,student_a_year_4)
  student_a.takes_test(t24, 25,student_a_4_2,student_a_year_4)
  student_a.takes_test(t25, 40,student_a_4_2,student_a_year_4)

  student_a.info


  student_b = Student.new("Mr. B")
  student_b.set_date(1 ,"12-02-2020 to 12-08-2020")
  student_b_year_1 = student_a.testing_year(1)
  semester_b_1_1 = student_b.testing_semester(1)
  student_b.takes_test(t1, 20,semester_b_1_1,student_b_year_1)
  student_b.takes_test(t2, 15,semester_b_1_1,student_b_year_1)
  student_b.takes_test(t3, 40,semester_b_1_1,student_b_year_1)
  student_b.takes_test(t4, 70,semester_b_1_1,student_b_year_1)

  semster_b_1_2 = student_b.testing_semester(2)
  student_b.takes_test(t5, 15,semster_b_1_2,student_b_year_1)
  student_b.takes_test(t6, 40,semster_b_1_2,student_b_year_1)
  student_b.takes_test(t7, 70,semster_b_1_2,student_b_year_1)
  student_b.takes_test(test, 46,semster_b_1_2,student_b_year_1)
 
  student_b.set_date(2 ,"12-02-2020 to 12-08-2020")
  student_b_year_2 = student_a.testing_year(2)
  semseter2_1 = student_b.testing_semester(1)
  student_b.takes_test(t8, 40,semseter2_1,student_b_year_2)
  student_b.takes_test(t9, 40,semseter2_1,student_b_year_2)
  student_b.takes_test(t10, 40,semseter2_1,student_b_year_2)

  semseter_b_2_2 = student_b.testing_semester(2)
  student_b.takes_test(t11, 30,semseter_b_2_2,student_b_year_2)
  student_b.takes_test(t12, 20,semseter_b_2_2,student_b_year_2)
  student_b.takes_test(t13, 50,semseter_b_2_2,student_b_year_2)

  student_b.set_date(5 ,"01-01-2021")
  student_b_year_3 = student_b.testing_year(3)
student_b.info