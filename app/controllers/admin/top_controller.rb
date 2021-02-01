class Admin::TopController < Administrator::Base
  def index
    render action: "index"
  end
end
