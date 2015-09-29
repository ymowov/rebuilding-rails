class QuotesController < Rulers::Controller
  def a_quote
    "Environment:#{env}"
  end

  def exception
    raise "Exception!"
  end
end