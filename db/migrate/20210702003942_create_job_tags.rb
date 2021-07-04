class CreateJobTags < ActiveRecord::Migration[6.1]
  def change
    create_table :job_tags do |t|
      t.string :report_id
      t.string :question_number
      t.string :tagged_job

      t.timestamps
    end
  end
end
