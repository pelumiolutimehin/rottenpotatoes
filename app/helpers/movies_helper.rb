module MoviesHelper
end
module MoviesHelper
  def sortable_header(label, column)
    active = @sort_column == column
    next_direction = active && @sort_direction == "asc" ? "desc" : "asc"

    indicator =
      if active
        @sort_direction == "asc" ? " ↑ (ascending)" : " ↓ (descending)"
      else
        ""
      end

    link_to "#{label}#{indicator}", movies_path(sort: column, direction: next_direction)
  end
end
