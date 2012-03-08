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

ActiveRecord::Schema.define(:version => 20120224122113) do

  create_table "abouts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "link"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "cached_slug"
  end

  add_index "abouts", ["cached_slug"], :name => "index_abouts_on_cached_slug", :unique => true

  create_table "articles", :force => true do |t|
    t.string   "article_title"
    t.string   "link"
    t.text     "body"
    t.datetime "date_published"
    t.string   "author",         :limit => 16, :default => "admin"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
    t.string   "slug"
  end

  add_index "articles", ["slug"], :name => "index_articles_on_slug"

  create_table "authentications", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "provider",   :null => false
    t.string   "uid",        :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "name",             :default => "guest"
    t.string   "email"
    t.text     "body"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.string   "commentator_ip"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "cached_slug"
  end

  add_index "comments", ["commentable_id", "cached_slug"], :name => "index_comments_on_commentable_id_and_cached_slug", :unique => true
  add_index "comments", ["commentable_id", "commentable_type"], :name => "index_comments_on_commentable_id_and_commentable_type"

  create_table "friendly_id_slugs", :force => true do |t|
    t.string   "slug",                         :null => false
    t.integer  "sluggable_id",                 :null => false
    t.string   "sluggable_type", :limit => 40
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type", :unique => true
  add_index "friendly_id_slugs", ["sluggable_id"], :name => "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], :name => "index_friendly_id_slugs_on_sluggable_type"

  create_table "news_events", :force => true do |t|
    t.string   "news_title"
    t.string   "link"
    t.text     "body"
    t.datetime "date"
    t.string   "place"
    t.string   "author"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "cached_slug"
    t.string   "slug"
  end

  add_index "news_events", ["cached_slug"], :name => "index_news_events_on_cached_slug", :unique => true
  add_index "news_events", ["slug"], :name => "index_news_events_on_slug", :unique => true

  create_table "phcfms", :force => true do |t|
    t.string   "link"
    t.string   "title"
    t.text     "body"
    t.datetime "date_published"
    t.string   "author",         :limit => 16, :default => "guest"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
    t.string   "cached_slug"
    t.string   "slug"
  end

  add_index "phcfms", ["cached_slug"], :name => "index_phcfms_on_cached_slug", :unique => true
  add_index "phcfms", ["slug"], :name => "index_phcfms_on_slug", :unique => true

  create_table "slugs", :force => true do |t|
    t.string   "name"
    t.integer  "sluggable_id"
    t.integer  "sequence",                     :default => 1, :null => false
    t.string   "sluggable_type", :limit => 40
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "sequence", "scope"], :name => "index_slugs_on_n_s_s_and_s", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

  create_table "users", :force => true do |t|
    t.string   "username",                        :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
  end

  add_index "users", ["activation_token"], :name => "index_users_on_activation_token"
  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token"

  create_table "verse_of_the_day", :force => true do |t|
    t.string   "verse"
    t.text     "body"
    t.date     "date"
    t.string   "author",     :limit => 16, :default => "admin"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

end
