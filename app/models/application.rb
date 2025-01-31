class Application < ActiveRecord::Base
  has_attached_file     :resume, { :default_url => '/documents/missing.pdf' }
  validates_presence_of :name, :email, :home_phone, :work_phone
  validates_format_of   :email,
                        :with     => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                        :message  => 'must be in the form of an email address'
  do_not_validate_attachment_file_type :resume
                        
  after_initialize      :_default
  
  def active?
    self.active
  end
  
  private
  
  def _default
    self.active   ||= true if new_record?
  end
end