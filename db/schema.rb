# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_26_011959) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "invitaciones", force: :cascade do |t|
    t.string "mensaje"
    t.date "fecha"
    t.bigint "usuario_id", null: false
    t.bigint "restaurante_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurante_id"], name: "index_invitaciones_on_restaurante_id"
    t.index ["usuario_id"], name: "index_invitaciones_on_usuario_id"
  end

  create_table "platos", force: :cascade do |t|
    t.string "nombre"
    t.integer "precio"
    t.string "descripcion"
    t.bigint "restaurante_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurante_id"], name: "index_platos_on_restaurante_id"
  end

  create_table "promociones", force: :cascade do |t|
    t.string "nombre"
    t.float "descuento"
    t.bigint "usuario_id", null: false
    t.bigint "restaurante_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurante_id"], name: "index_promociones_on_restaurante_id"
    t.index ["usuario_id"], name: "index_promociones_on_usuario_id"
  end

  create_table "puntajes", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "puntajes_platos", force: :cascade do |t|
    t.bigint "plato_id", null: false
    t.bigint "puntaje_id", null: false
    t.bigint "usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plato_id"], name: "index_puntajes_platos_on_plato_id"
    t.index ["puntaje_id"], name: "index_puntajes_platos_on_puntaje_id"
    t.index ["usuario_id"], name: "index_puntajes_platos_on_usuario_id"
  end

  create_table "puntajes_restaurantes", force: :cascade do |t|
    t.bigint "puntaje_id", null: false
    t.bigint "restaurante_id", null: false
    t.bigint "usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["puntaje_id"], name: "index_puntajes_restaurantes_on_puntaje_id"
    t.index ["restaurante_id"], name: "index_puntajes_restaurantes_on_restaurante_id"
    t.index ["usuario_id"], name: "index_puntajes_restaurantes_on_usuario_id"
  end

  create_table "restaurantes", force: :cascade do |t|
    t.string "nombre"
    t.bigint "tipo_comida_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tipo_comida_id"], name: "index_restaurantes_on_tipo_comida_id"
  end

  create_table "tipos_comidas", id: :bigint, default: -> { "nextval('tipo_comidas_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre_usuario"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "invitaciones", "restaurantes"
  add_foreign_key "invitaciones", "usuarios"
  add_foreign_key "platos", "restaurantes"
  add_foreign_key "promociones", "restaurantes"
  add_foreign_key "promociones", "usuarios"
  add_foreign_key "puntajes_platos", "platos"
  add_foreign_key "puntajes_platos", "puntajes"
  add_foreign_key "puntajes_platos", "usuarios"
  add_foreign_key "puntajes_restaurantes", "puntajes"
  add_foreign_key "puntajes_restaurantes", "restaurantes"
  add_foreign_key "puntajes_restaurantes", "usuarios"
  add_foreign_key "restaurantes", "tipos_comidas"
end
