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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_161_202_151_102) do
  create_table 'active_admin_comments', force: :cascade do |t|
    t.string   'namespace'
    t.text     'body'
    t.string   'resource_id',   null: false
    t.string   'resource_type', null: false
    t.string   'author_type'
    t.integer  'author_id'
    t.datetime 'created_at'
    t.datetime 'updated_at'
    t.index %w(author_type author_id), name: 'index_active_admin_comments_on_author_type_and_author_id'
    t.index ['namespace'], name: 'index_active_admin_comments_on_namespace'
    t.index %w(resource_type resource_id), name: 'index_active_admin_comments_on_resource_type_and_resource_id'
  end

  create_table 'admin_users', force: :cascade do |t|
    t.string   'email',                  default: '', null: false
    t.string   'encrypted_password',     default: '', null: false
    t.string   'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer  'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string   'current_sign_in_ip'
    t.string   'last_sign_in_ip'
    t.datetime 'created_at',                          null: false
    t.datetime 'updated_at',                          null: false
    t.index ['email'], name: 'index_admin_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_admin_users_on_reset_password_token', unique: true
  end

  create_table 'customers', force: :cascade do |t|
    t.string   'name'
    t.string   'address'
    t.string   'phone'
    t.string   'email'
    t.datetime 'created_at',      null: false
    t.datetime 'updated_at',      null: false
    t.integer  'province_id'
    t.string   'postal_code'
    t.string   'city'
    t.string   'password_digest'
    t.index ['province_id'], name: 'index_customers_on_province_id'
  end

  create_table 'designs', force: :cascade do |t|
    t.string   'name'
    t.text     'description'
    t.datetime 'created_at',         null: false
    t.datetime 'updated_at',         null: false
    t.string   'image_file_name'
    t.string   'image_content_type'
    t.integer  'image_file_size'
    t.datetime 'image_updated_at'
  end

  create_table 'devices', force: :cascade do |t|
    t.string   'name'
    t.decimal  'price'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'line_items', force: :cascade do |t|
    t.integer  'quantity'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer  'product_id'
    t.integer  'order_id'
    t.index ['order_id'], name: 'index_line_items_on_order_id'
    t.index ['product_id'], name: 'index_line_items_on_product_id'
  end

  create_table 'models', force: :cascade do |t|
    t.string   'name'
    t.string   'brand'
    t.text     'notes'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer  'device_id'
    t.index ['device_id'], name: 'index_models_on_device_id'
  end

  create_table 'orders', force: :cascade do |t|
    t.datetime 'created_at',  null: false
    t.datetime 'updated_at',  null: false
    t.integer  'customer_id'
    t.index ['customer_id'], name: 'index_orders_on_customer_id'
  end

  create_table 'products', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer  'device_id'
    t.integer  'design_id'
    t.index ['design_id'], name: 'index_products_on_design_id'
    t.index ['device_id'], name: 'index_products_on_device_id'
  end

  create_table 'provinces', force: :cascade do |t|
    t.string   'name'
    t.decimal  'gst_rate'
    t.decimal  'pst_rate'
    t.decimal  'hst_rate'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
