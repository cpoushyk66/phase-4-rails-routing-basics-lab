class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.order(:grade).reverse_order
        render json: students
    end
    
    def highest_grade
        student = Student.order(:grade).last
        render json: student
    end
end
