module ApplicationHelper
  def get_class (action)
    if action_name == action
      return "active"
    else
      return ""
    end
  end
end
