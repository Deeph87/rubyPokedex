module ApplicationHelper
  def button_form(value, path, class_name)
    raw "<span style='background-color: #{color}' class='badge'>
        #{name}
      </span>"
  end
end
