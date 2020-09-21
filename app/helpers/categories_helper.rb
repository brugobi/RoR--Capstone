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
      specific_category_article(article)
    end
  end

  def create_reverse_article(article)
    content_tag :div, class: %w[col-md-6 d-flex img-height] do
      specific_category_article(article)
    end
  end

  def specific_category_article(article)
    content_tag :div, class: '' do
      link_to(article.category.name)
        .concat(content_tag(:p, article.title))
        .concat(content_tag(:p, article.content))
        .concat(link_to 'Show', article_path(article))
    end  
  end
end
