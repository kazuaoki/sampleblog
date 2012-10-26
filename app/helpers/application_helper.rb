module ApplicationHelper
  
  #TOP等(現在はTOPしか存在しない)のメニューリンク用。
  def menu_link_to(text, path) 
    link_to_unless_current(text, path) { content_tag(:span, text) }
  end
  
  #改行を<br>にするためのメソッド。
  #記事の内容等を表示する際に使用すること。
  def hbr(str)
    str = html_escape(str)
    str.gsub(/\r\n|\r|\n/, "<br>")
  end
end
