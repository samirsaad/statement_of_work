class StatementOfWork < ActiveRecord::Base
  before_create :create_slug
  def to_param
    slug
  end

  belongs_to :company
  belongs_to :company_contact
  belongs_to :engine_yard_contact
  
  validates_uniqueness_of :slug
  
  private
  
  def create_slug
    self.slug = (self.id.to_s + Time.now.utc.to_i.to_s + self.title)
  end
end
