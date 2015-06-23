class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_of_birth, :deleted
end
