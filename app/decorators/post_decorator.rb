module PostDecorator
  def view_name
    name
  end

  def view_started_at
    I18n.l(started_at, format: :long)
  end

  def view_ended_at
    return "" if ended_at.blank?
    I18n.l(ended_at, format: :long)
  end

  def view_genre_name
    genre.name
  end

  def view_area_name
    area.name
  end

  def view_user_name
    user.name
  end
end
