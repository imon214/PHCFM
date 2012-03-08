module ApplicationHelper
  def markdown(text)
    options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode, :smart, :tables, :strikethrough]
    Redcarpet.new(text, *options).to_html.html_safe
    #syntax_highlighter(Redcarpet.new(text, *options).to_html).html_safe
  end
  
  def coderay(text)
    text.gsub(/\<code( lang="(.+?)")?\>(.+?)\<\/code\>/m) do
      content_tag("notextile", CodeRay.scan($3, $2).div(:css => :class))
    end
#    return text.html_safe
  end
  
  def title(title)
    @title = title
  end

  def title
    @title
  end

  def form_errors_for(model)
    @form_error_model = model
    ""
  end
  
  def gravatar_url(email,options = {})
    require 'digest/md5'
    hash = Digest::MD5.hexdigest(email)
    url = "http://www.gravatar.com/avatar/#{hash}"
    options.each do |option|
      option == options.first ? url+="?" : url+="&"
      key = option[0].to_s
      value = option[1].to_s
      url+=key + "=" + value
    end
    url
  end
  
  def title(page_title)
    content_for(:title) { page_title }
  end
  
  
  def wrap(content)
    sanitize(raw(content.split.map{ |s| wrap_long_string(s) }.join(' ')))
  end

  private

    def wrap_long_string(text, max_width = 30)
      zero_width_space = "&#8203;"
      regex = /.{1,#{max_width}}/
      (text.length < max_width) ? text : 
                                  text.scan(regex).join(zero_width_space)
    end
  
#This block is working only on linux and mac platforms not on windows platform
#  def syntax_highlighter(html)
#    doc = Nokogiri::HTML(html)
#    doc.search("//pre[@lang]").each do |pre|
#      pre.replace Albino.colorize(pre.text.rstrip, pre[:lang])
#    end
#    doc.to_s
#  end  
end
