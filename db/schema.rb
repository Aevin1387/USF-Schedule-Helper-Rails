# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120903051925) do

  create_table "search_sets", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "search_sets", ["user_id"], :name => "index_search_sets_on_user_id"

  create_table "search_sets_searches", :id => false, :force => true do |t|
    t.integer "search_id"
    t.integer "search_set_id"
  end

  create_table "searches", :force => true do |t|
    t.string   "name"
    t.string   "p_semester"
    t.string   "p_session"
    t.string   "p_campus"
    t.string   "p_dist"
    t.string   "p_col"
    t.string   "p_status"
    t.string   "p_ssts_code"
    t.string   "p_crse_levl"
    t.string   "p_ref"
    t.string   "p_subj"
    t.string   "p_num"
    t.string   "p_title"
    t.string   "p_cr"
    t.boolean  "p_day_x_mon"
    t.boolean  "p_day_x_tues"
    t.boolean  "p_day_x_wed"
    t.boolean  "p_day_x_thurs"
    t.boolean  "p_day_x_fri"
    t.boolean  "p_day_x_sat"
    t.boolean  "p_day_x_sun"
    t.boolean  "p_day_mon"
    t.boolean  "p_day_tues"
    t.boolean  "p_day_wed"
    t.boolean  "p_day_thurs"
    t.boolean  "p_day_fri"
    t.boolean  "p_day_sat"
    t.boolean  "p_day_sun"
    t.string   "p_time1"
    t.string   "p_instructor"
    t.string   "p_ugr"
    t.string   "p_dept"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "searches", ["user_id"], :name => "index_searches_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
