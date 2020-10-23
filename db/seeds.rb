Subject::NAMES.each do |subject|
    Subject.create!(name: subject)
end


University::NAMES.each do |university|
    University.create!(name: university)
end
