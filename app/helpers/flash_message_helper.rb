module FlashMessageHelper

  def flash_message level, content
    content_tag :p, content, class: level
  end

  def flash_messages
    [:alert, :notice, :error].map do |level|
      flash_message(level, flash[level]) if flash[level]
    end.join.html_safe
  end

end