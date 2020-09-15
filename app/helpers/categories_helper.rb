module CategoriesHelper
  def full_article_container(articles)
    flag = true
    generated = ''
    articles.each_with_index do |article, index|
      if flag
        generated.concat(create_article(article))
      else
        generated.concat(create_reverse_article(article))
      end
      flag = false if index.odd?
    end
    generated.html_safe
  end

  def create_article(article)
    content_tag :div, class: %w[col-md-6 d-flex img-height] do
      featured_article(article).concat(specific_category_article(article))
    end
  end

  def create_reverse_article(article)
    content_tag :div, class: %w[col-md-6 d-flex img-height] do
      specific_category_article(article).concat(feature_article(article))
    end
  end

  def featured_article(article)
    content_tag :div, class: %w[col-md-6 img-height] do
      image_tag(article.image.to_s, class: 'full-width', alt: 'Continue')
    end
  end

  def specific_category_article(article)
    content_tag :div, class: 'col-md-6 category-link' do
      link_to(article.category.name, categories_path(id: article.category))
        .concat(content_tag(:p, article.title))
    end
  end
end
