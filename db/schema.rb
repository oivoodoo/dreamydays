# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100902205148) do

  create_table "about_pages", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "meta_keywords"
    t.text     "meta_description"
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "meta_keywords"
    t.text     "meta_description"
  end

  create_table "assets", :force => true do |t|
    t.integer  "document_size"
    t.string   "document_content_type"
    t.string   "document_file_name"
    t.integer  "house_id"
    t.boolean  "is_visible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "banners", :force => true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "banner_file_name"
    t.string   "banner_content_type"
    t.integer  "banner_file_size"
    t.datetime "banner_updated_at"
  end

  create_table "catalog_pages", :force => true do |t|
    t.string   "title"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "body"
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "number_adult"
    t.integer  "number_children"
    t.integer  "number_bedroom"
    t.datetime "date1"
    t.datetime "date2"
    t.string   "price"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts_pages", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "meta_keywords"
    t.text     "meta_description"
  end

  create_table "footers", :force => true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "google_markers", :force => true do |t|
    t.string   "title"
    t.float    "x"
    t.float    "y"
    t.integer  "house_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "headers", :force => true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "house_containers", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "house_menus", :force => true do |t|
    t.string   "title"
    t.string   "link"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "house_types", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "houses", :force => true do |t|
    t.string   "title"
    t.string   "catalog_title"
    t.text     "comment"
    t.text     "text"
    t.text     "bottom_text"
    t.string   "location"
    t.integer  "number"
    t.string   "high_duration_1"
    t.string   "high_duration_2"
    t.string   "low_duration_1"
    t.string   "low_duration_2"
    t.string   "high_cost_day"
    t.string   "high_cost_week"
    t.string   "high_cost_month"
    t.string   "low_cost_day"
    t.string   "low_cost_week"
    t.string   "low_cost_month"
    t.string   "is_main"
    t.integer  "number_photo"
    t.string   "special_offer"
    t.string   "is_visible"
    t.integer  "price_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
    t.integer  "number_id"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.integer  "house_container_id"
    t.string   "house_type"
    t.text     "total_price"
    t.text     "admin_comment"
    t.integer  "group_position",     :default => 0
    t.string   "page_title"
    t.text     "sale_bottom_text"
  end

  create_table "locations", :force => true do |t|
    t.string   "title"
    t.integer  "search_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "house_id"
    t.integer  "sale_search_id"
  end

  create_table "main_menus", :force => true do |t|
    t.string   "title"
    t.string   "link"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "main_pages", :force => true do |t|
    t.string   "title"
    t.string   "comment"
    t.text     "body"
    t.text     "after_comment"
    t.string   "top_title"
    t.string   "top_title_link"
    t.string   "top_link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.text     "right_bottom_content"
  end

  create_table "numbers", :force => true do |t|
    t.string   "title"
    t.integer  "search_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "house_id"
    t.integer  "sale_search_id"
  end

  create_table "photos", :force => true do |t|
    t.integer  "house_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "photos", ["house_id"], :name => "zz_house_id"

  create_table "prices", :force => true do |t|
    t.string   "title"
    t.integer  "search_id"
    t.integer  "house_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sale_search_id"
  end

  create_table "queries", :force => true do |t|
    t.string   "cost"
    t.string   "location"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sale_pages", :force => true do |t|
    t.string   "title"
    t.string   "meta_keywords"
    t.text     "meta_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content"
    t.text     "body"
  end

  create_table "sale_searches", :force => true do |t|
    t.integer  "location_id"
    t.integer  "price_id"
    t.integer  "number_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", :force => true do |t|
    t.integer  "location_id"
    t.integer  "price_id"
    t.integer  "number_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services_pages", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "meta_keywords"
    t.text     "meta_description"
  end

  create_table "tiny_mce_photos", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.string   "content_type"
    t.string   "filename"
    t.integer  "size"
    t.integer  "parent_id"
    t.string   "thumbnail"
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "travelling_pages", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "meta_keywords"
    t.text     "meta_description"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

end
