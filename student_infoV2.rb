system('clear')

class Academy_year
    def initialize
        @years = []
        @subject = []
        @semester = [1,2]
        @pass_score = []
    end 
    def years_of_sem(year = 1,sem = 1)
        @years << year
        @semester << sem
    end
    def get_years_of_sem_on_sub
        years = @years.uniq
        years.each_with_index do |year,index|
            puts " ****** #{year} \n****** #{@semester}"
        end
        puts
        print @semester
    end
    
    def subject(subject)
        @subject = Subject.new()
    end

    def get_subject_of_year
        @subject.each do |sub|
            puts "0000 #{sub} 0000"
        end
    end
    
end

class Semester < Academy_year
    def initialize(semester =1)
        @subject_of_sem = []
        @semester = semester
    end
    def set_sub(array)
        @subject_of_sem << array
    end
    def get_sub_of_sem
        @subject_of_sem
    end
end

class Subject < Academy_year
    def initialize(name = '', pass_score = 0)
        @subjects = []
        @subject = name
        @pass_score = pass_score
    end
    
    def get_subject
        @subjects << @subject
        @subjects << @pass_score
    end  
end

sub1 = Subject.new('HTML',50)
sub2 = Subject.new('CSS',40)
sub3 = Subject.new('JS',35)
sub4 = Subject.new('PHP',30)

sub5 = Subject.new('Photoshop',40)
sub6 = Subject.new('Linux',30)
sub7 = Subject.new('Java',50)
sub8 = Subject.new('C#',25)

sub9  = Subject.new('Computer',40)
sub10 = Subject.new('Office',30)
sub11 = Subject.new('Java II',50)
sub12 = Subject.new('C# II',25)

se1 = Semester.new(1)
se1.set_sub([sub1.get_subject,sub2.get_subject,sub3.get_subject,sub4.get_subject])
se2 = Semester.new(2)
se2.set_sub([sub5.get_subject,sub6.get_subject,sub7.get_subject,sub8.get_subject])

se3 = Semester.new(1)
se3.set_sub([[sub9.get_subject,sub10.get_subject,sub11.get_subject,sub12.get_subject]])

y1 = Academy_year.new
y1.years_of_sem(1,se1)
y1.years_of_sem(1,se2)
y1.years_of_sem(2,se3)

y1.get_years_of_sem_on_sub