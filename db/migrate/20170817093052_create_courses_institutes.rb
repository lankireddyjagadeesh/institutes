class CreateCoursesInstitutes < ActiveRecord::Migration
  def change
    create_table :courses_institutes do |t|
      t.references :courses, index: true, foreign_key: true
      t.references :institutes, index: true, foreign_key: true
    end
  end
end
