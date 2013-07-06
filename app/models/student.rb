require 'csv'
class Student < ActiveRecord::Base
  
  def self.to_csv
    CSV.generate do |csv|
      csv << humanized_column_names
      all.each do |s|
        csv << s.attributes.values_at(*column_names)
      end
    end
  end
  
  def self.humanized_column_names
    column_names.map { |column| human_attribute_name(column) }
  end
end