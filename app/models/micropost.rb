class Micropost < ActiveRecord::Base
  belongs_to :user

  validates :content, presence: true
  validates :user_id, presence: true

  default_scope order: 'microposts.created_at DESC'

  private

    def micropost_params
      params.require(:micropost).permit(:content)
    end
end
