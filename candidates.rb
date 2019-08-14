
jane = {first_name: "Jane", last_name:"Doe", level: :senior_level, age: 30, occupation: "Software Developer", employed: true, current_salary: 125000.0, languages: ["Ruby", "Javascript", "Go"]}


sara = {first_name: "Sara", last_name:"Smith", level: :mid_level, age: 26, occupation: "Software Developer", employed: true, current_salary: 80000.0, languages: ["Ruby", "Python"]}

jason = {first_name: "Jason", last_name:"Gray", level: :entry_level, age: 23, occupation: "Student", employed: false, current_salary: 0.00, languages: ["C#", "Python"]}

candidates = [sara, jason, jane]

def average_age(people)
  people.map {|person| person[:age]}.reduce(:+).to_f / people.size
end

average_age(candidates) # 26.333333333333332


def language_screening(people, language)
  people.select {|person| person[:languages].includes?(language)}
end


language_screening(candidates, "Python")
language_screening(candidates, "GO")
language_screening(candidates, "javascript")
