class QuotesController < Rulers::Controller
  def a_quote
    File.open("public/index.html", "rb").read
  end

  def exception
    raise "Exception!"
  end
end