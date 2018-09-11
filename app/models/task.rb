class Task < ApplicationRecord
  validates :title,presence: true
  enum status: {not_started_yet:1, started:2, complete:3}

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Task.where("title LIKE ?", "%#{params[:hit_title]}%")
      Task.where("status LIKE ?", "%#{params[:hit_status]}%")
    else
      Task.all #全て表示。
    end
  end
end
