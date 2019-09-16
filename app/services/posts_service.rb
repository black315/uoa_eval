module PostsService

  module_function

  def search(keyword, sort)
    if keyword
      if sort
        return Post.where('(content LIKE ?) OR (instructor LIKE ?)',
                          "%#{keyword}%", "%#{keyword}%")
                   .order("#{sort} DESC")
      else
        return Post.where('(content LIKE ?) OR (instructor LIKE ?)',
                            "%#{keyword}%", "%#{keyword}%")
                   .order(created_at: "DESC")
      end
    else
      if sort
        return Post.all.order("#{sort} DESC")
      else
        return Post.all.order(created_at: "DESC")
      end
    end
  end

end