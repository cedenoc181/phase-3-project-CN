require 'pry'
class Company < ActiveRecord::Base
    has_many :stocks
    has_many :investors, through: :stocks

    def company_profile
        "#{self.company_name}, #{self.location}, #{self.sector}, $#{self.assets_under_management}"
    end

    def self.add_company(company_name, location, sector, share_owned, assets_under_management)
       self.find_or_create_by(company_name: company_name, location:location, sector:sector, share_owned:share_owned, assets_under_management:assets_under_management) 
    end

    def self.delete_by_id(id)
        company = Company.find(id)
        company.destroy
      end

      def self.change_all_shares_and_assets(id, share_owned, assets_under_management)
        Company.find_by(id:id).update(:share_owned=>share_owned, :assets_under_management=>assets_under_management)
      end
end



