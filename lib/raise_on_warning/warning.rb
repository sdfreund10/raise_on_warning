module Warning
  extend self

  def warn(msg)
    raise msg
  end
end
