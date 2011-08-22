class Content < ActiveRecord::Base
  has_many :comments
  has_many :content_locales

  belongs_to :user

  before_destroy :destroy_content_locales

  protected

  def destroy_content_locales
    ContentLocale.destroy_all(:content_id => self.id)
    Comment.destroy_all(:content_id => self.id)
  end
end
