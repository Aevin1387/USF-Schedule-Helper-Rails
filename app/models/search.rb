class Search < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :search_sets
  attr_accessible :name, :p_campus, :p_col, :p_cr, :p_crse_levl, :p_day_fri, :p_day_mon, :p_day_sat, :p_day_sun, :p_day_thurs, :p_day_tues, :p_day_wed, :p_day_x_fri, :p_day_x_mon, :p_day_x_sat, :p_day_x_sun, :p_day_x_thurs, :p_day_x_tues, :p_day_x_wed, :p_dept, :p_dist, :p_instructor, :p_num, :p_ref, :p_semester, :p_session, :p_ssts_code, :p_status, :p_subj, :p_time1, :p_title, :p_ugr

  validates :name, presence: true
  validates :user_id, presence: true
end
