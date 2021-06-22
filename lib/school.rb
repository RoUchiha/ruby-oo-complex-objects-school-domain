class School

attr_accessor :name, :roster 

def initialize(name)
    @name = name
    @roster = {}
end

def add_student(name, grade)
    if roster.include?(grade) == true
        roster[grade] << name
    else 
        roster[grade] = [];
        roster[grade] << name
    end
end

def grade(grade)
    return roster[grade]
end

def sort
   sorted_roster = roster.sort_by { |grade, students|  students.sort! }

   return sorted_roster.to_h
end



end
