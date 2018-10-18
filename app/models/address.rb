class Address
  include ActiveModel::Model
  attr_accessor :country,
                :postal_code,
                :province,
                :city,
                :name,
                :address1,
                :address2,
                :address3,
                :phone,
                :fax,
                :email,
                :address_type,
                :company_name
end
