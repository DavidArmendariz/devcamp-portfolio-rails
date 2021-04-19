module DefaultPageContent
  extend ActiveSupport::Concern

  included { before_action :set_page_defaults }

  def set_page_defaults
    @page_title = 'Portfolio | David Armendariz'
    @seo_keywords = 'David Armendariz portfolio'
  end
end
