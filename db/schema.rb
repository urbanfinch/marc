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

ActiveRecord::Schema.define(:version => 20150223185757) do

  create_table "applications", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "home_phone"
    t.string   "work_phone"
    t.string   "experience"
    t.string   "resume_file_name"
    t.integer  "resume_file_size"
    t.string   "resume_content_type"
    t.datetime "resume_updated_at"
    t.boolean  "active",              :default => true, :null => false
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "state"
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.integer  "image_file_size"
    t.string   "image_content_type"
    t.datetime "image_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "products", :force => true do |t|
    t.integer  "category_id"
    t.string   "title"
    t.text     "description",        :limit => 255
    t.string   "sku"
    t.string   "sizes"
    t.string   "image_file_name"
    t.integer  "image_file_size"
    t.string   "image_content_type"
    t.datetime "image_updated_at"
    t.string   "data_file_name"
    t.integer  "data_file_size"
    t.string   "data_content_type"
    t.datetime "data_updated_at"
    t.string   "msds_file_name"
    t.integer  "msds_file_size"
    t.string   "msds_content_type"
    t.datetime "msds_updated_at"
    t.string   "label_file_name"
    t.integer  "label_file_size"
    t.string   "label_content_type"
    t.datetime "label_updated_at"
    t.boolean  "active",                            :default => true, :null => false
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.boolean  "featured"
    t.string   "video_url"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.boolean  "active",        :default => true, :null => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

end
