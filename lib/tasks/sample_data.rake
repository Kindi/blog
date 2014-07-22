namespace :db do
  desc "Fill database with sample blogposts"
  num = 0
  task populate: :environment do
    50.times do
      num += 1
      content = ""
      5.times do
        content += "<p>"
        content +=  Faker::Lorem.paragraph(5)
        content += "</p>"
      end
      Blogpost.create!(title: "Sample Post #{num}", content: content)
    end
  end
end
    