# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.new( {user_name: 'alpha',
           first_name: 'Dom',
           last_name: 'Mazzetti',
           email: 'alpha_bro@bro_naysh.bro',
           birthday: DateTime.new(1969, 03, 10, 0, 0, 0),
           password: 'supaset'} ).save

User.new( {user_name: 'beta',
           first_name: 'Leia',
           last_name: 'Solo',
           email: 'leia.solo@thejeditemple.com',
           birthday: DateTime.new(1969, 03, 10, 0, 0, 0),
           password: 'maytheforcebewithyou'} ).save

UserWeight.new( {weight: 215.0,
                 user_id: 1} ).save

Exercise.new( {name: "Bicep Curls",
               is_resistance: true,
               user_id: 1,
               exercise_set_id: } ).save

Exercise.new( {name: "Tricep Push Downs",
               is_resistance: true,
               user_id: 1,
               exercise_set_id: } ).save

Exercise.new( {name: "Bench Press",
               is_resistance: true,
               user_id: 1,
               exercise_set_id: } ).save

Exercise.new( {name: "Deadlift",
               is_resistance: true,
               user_id: 1,
               exercise_set_id: } ).save

Exercise.new( {name: "Back Squats",
               is_resistance: true,
               user_id: 1,
               exercise_set_id: } ).save

Exercise.new( {name: "Overhead Press",
               is_resistance: true,
               user_id: 1,
               exercise_set_id: } ).save

Exercise.new( {name: "Seated Cable Row",
               is_resistance: true,
               user_id: 1,
               exercise_set_id: } ).save

Exercise.new( {name: "Pendalay Row",
               is_resistance: true,
               user_id: 1,
               exercise_set_id: } ).save

Exercise.new( {name: "Girl Push-ups",
               is_resistance: true,
               user_id: 2,
               exercise_set_id: } ).save

Exercise.new( {name: "Romanian Deadlifts",
               is_resistance: true,
               user_id: 2,
               exercise_set_id: } ).save

Exercise.new( {name: "DB Incline Bench Press",
               is_resistance: true,
               user_id: 2,
               exercise_set_id: } ).save

Exercise.new( {name: "Assisted Pull-ups",
               is_resistance: false,
               user_id: 2,
               exercise_set_id: } ).save

Exercise.new( {name: "Front Squats",
               is_resistance: true,
               user_id: 2,
               exercise_set_id: } ).save

Exercise.new( {name: "Sit-ups",
               is_resistance: true,
               user_id: 2,
               exercise_set_id: } ).save

ExerciseSet.new( {})
