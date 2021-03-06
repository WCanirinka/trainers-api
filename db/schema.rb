# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_604_171_145) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'gym_classes', force: :cascade do |t|
    t.datetime 'classTime'
    t.string 'status'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'gym_instructor_id'
    t.bigint 'user_id'
    t.index ['gym_instructor_id'], name: 'index_gym_classes_on_gym_instructor_id'
    t.index ['user_id'], name: 'index_gym_classes_on_user_id'
  end

  create_table 'gym_instructors', force: :cascade do |t|
    t.string 'name'
    t.string 'trainingType'
    t.string 'gymName'
    t.string 'instImage'
    t.string 'gymImage'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.string 'password_digest'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'gym_classes', 'gym_instructors'
  add_foreign_key 'gym_classes', 'users'
end
