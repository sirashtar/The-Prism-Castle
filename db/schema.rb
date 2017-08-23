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

ActiveRecord::Schema.define(version: 20170823121216) do

  create_table "characters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "job_id"
    t.integer "level"
    t.integer "experience"
    t.bigint "stat_id"
    t.index ["job_id"], name: "index_characters_on_job_id"
    t.index ["stat_id"], name: "index_characters_on_stat_id"
  end

  create_table "equipment", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventaries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "description"
    t.string "type"
    t.string "subtype"
    t.integer "weight"
    t.boolean "buy_shop"
    t.integer "required_level"
    t.integer "buying_price"
    t.integer "selling_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "style"
    t.string "feauture"
    t.string "advantage"
    t.string "disadvantage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "level"
  end

  create_table "quasi_stats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "atk_range"
    t.integer "cast_time"
    t.integer "weight_limit"
    t.integer "energy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "str"
    t.integer "agi"
    t.integer "vit"
    t.integer "int"
    t.integer "dex"
    t.integer "luk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "character_id"
    t.bigint "sub_stat_id"
    t.index ["character_id"], name: "index_stats_on_character_id"
    t.index ["sub_stat_id"], name: "index_stats_on_sub_stat_id"
  end

  create_table "status_change_resistances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "stun"
    t.integer "poison"
    t.integer "silence"
    t.integer "bleeding"
    t.integer "sleep"
    t.integer "stone_curse"
    t.integer "freeze"
    t.integer "curse"
    t.integer "blind"
    t.integer "confusion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_stats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "atk"
    t.integer "matk"
    t.integer "def"
    t.integer "mdef"
    t.integer "hit"
    t.integer "crit"
    t.integer "flee"
    t.integer "aspd"
    t.integer "hp"
    t.integer "sp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "stat_id"
    t.index ["stat_id"], name: "index_sub_stats_on_stat_id"
  end

  add_foreign_key "characters", "jobs"
  add_foreign_key "characters", "stats"
  add_foreign_key "stats", "characters"
  add_foreign_key "stats", "sub_stats"
  add_foreign_key "sub_stats", "stats"
end
