class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :name
      t.string :p_semester
      t.string :p_session
      t.string :p_campus
      t.string :p_dist
      t.string :p_col
      t.string :p_status
      t.string :p_ssts_code
      t.string :p_crse_levl
      t.string :p_ref
      t.string :p_subj
      t.string :p_num
      t.string :p_title
      t.string :p_cr
      t.boolean :p_day_x_mon
      t.boolean :p_day_x_tues
      t.boolean :p_day_x_wed
      t.boolean :p_day_x_thurs
      t.boolean :p_day_x_fri
      t.boolean :p_day_x_sat
      t.boolean :p_day_x_sun
      t.boolean :p_day_mon
      t.boolean :p_day_tues
      t.boolean :p_day_wed
      t.boolean :p_day_thurs
      t.boolean :p_day_fri
      t.boolean :p_day_sat
      t.boolean :p_day_sun
      t.string :p_time1
      t.string :p_instructor
      t.string :p_ugr
      t.string :p_dept
      t.references :user

      t.timestamps
    end
    add_index :searches, :user_id
  end
end
