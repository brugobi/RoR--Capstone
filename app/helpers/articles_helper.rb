module ArticlesHelper
  def feature_article(article)
    content_tag :div, class: 'feature-article', style: "background-image: url(#{image_path article.image.to_s})" do
      content_tag(:p, article.title)
    end
  end

  def specific_category_articles(article)
    content_tag :div, class: %w[col-md-3 specific-article],
                      style: "background-image: url(#{image_path article.image.to_s})" do
      link_to(article.category.name, category_path(article.category))
        .concat(content_tag(:p, article.title))
    end
  end
end
