module RaiseWarningFilter
  def warn(message, **_kwargs)
    raise message
  end
end

Warning.extend(RaiseWarningFilter)
