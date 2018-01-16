module <%= options.namespace.capitalize %>
  class ContentBlocksController < Fae::StaticPagesController

    private

    def fae_pages
      Fae::StaticPage.active.map { |page| "#{page.title.titleize.delete(" ")}Page".constantize }
    end
  end
end
