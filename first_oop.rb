class Test
    def initialize(subject="", pass_score=0)
      # Instance variables
      @subject    = subject
      @pass_score = pass_score
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
  end
  class Student
    def initialize(name="")
      @name  = name
      @tests = []
      @test_scores = []
    end
    def takes_test(test, test_score)
      @tests << test
      @test_scores << test_score
    end
    def grade
      @tests.each_with_index { |test, index|
        if @test_scores[index] >= test.pass_score
          puts "#{@name}, #{test.subject}, Pass"
        else
          puts "#{@name}, #{test.subject}, Fail"
        end
      }
    end
  end
  test            = Test.new
  test.subject    = "English"
  test.pass_score = 45
  t1  = Test.new("Math", 50)
  t2  = Test.new("Khmer", 30)
  t3  = Test.new("Physic", 40)
  t4  = Test.new("Chemistry", 35)
  t5  = Test.new("Geography", 35)
  t6  = Test.new("History", 25)
  t7  = Test.new("Biology", 35)
  student_a = Student.new("Mr. A")
  student_a.takes_test(t1, 20)
  student_a.takes_test(t2, 15)
  student_a.takes_test(t3, 40)
  student_a.takes_test(t4, 70)
  student_a.takes_test(test, 65)
  student_b = Student.new("Mr. B")
  student_b.takes_test(t1, 20)
  student_b.takes_test(t6, 15)
  student_b.takes_test(t7, 40)
  student_a.grade
  student_b.grade