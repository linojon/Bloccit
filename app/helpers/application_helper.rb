module ApplicationHelper

  def form_group_tag(errors, &block)
    if errors.any?
      content_tag :div, capture(&block), class: 'form-group has-error'
    else
      content_tag :div, capture(&block), class: 'form-group'
    end
  end

   def form_group_class(errors)
    if errors.any?
      @classtag = 'form-group has-error'
    else
      @classtag = 'form-group'
    end

    content_tag :div, class: '#{@classtag}'   
  end

def markdown(text)
  renderer = Redcarpet::Render::HTML.new
  extensions = {fenced_code_blocks: true}
  redcarpet = Redcarpet::Markdown.new(renderer, extensions)
  (redcarpet.render text).html_safe
end


  def my_name
    name = "Jenny Crawshaw"
    name
  end
end
