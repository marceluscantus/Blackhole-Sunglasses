class Manufacturer < ActiveRecord::Base
      #has_and_belongs_to_many :glasses
      validates_presence_of :company_name

      def name
      	  "#{company_name}"
	  end
end
