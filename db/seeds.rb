# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(first_name: "John", last_name: "Chi", username: "JChi", password: "password", department: "development", active: false, admin: true)
Report.create!(good_day_bad_day: 1, safety: "test", sustain: "test", shine: "test", sort: "test", standardize: "test", misc: "test", worked: 8, printed: 1000, cut: 500, version: 1, user_id: 1, set_in_order: "test")
Question.create!(question_text: "Are there any safety concerns?", catagory: "safety", version: 1)
Question.create!(question_text: "Did you leave your workspace in better condition than when you arrived?", catagory: "sustain", version: 1)
Question.create!(question_text: "Report of Quality Issues, Concerns for Review (All materials have nice clean edges and are neatly stacked on pallets):?", catagory: "shine", version: 1)
Question.create!(question_text: "Was your schedule completed and work tracked accurately?", catagory: "sort", version: 1)
Question.create!(question_text: "Was the needed material tagged properly for production?", catagory: "set_in_order", version: 1)
Question.create!(question_text: "Did you receive job bags that were properly signed and contained all needed items for production?", catagory: "standardize", version: 1)
