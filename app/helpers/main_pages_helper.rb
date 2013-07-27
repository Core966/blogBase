module MainPagesHelper
  def is_active?(page_name)
    "pure-menu-selected" if params[:action] == page_name
  end
end
