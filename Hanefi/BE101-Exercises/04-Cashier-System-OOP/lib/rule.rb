class Rule
  attr_reader :threshold, :reduction, :until

  def initialize(params = {})
    @threshold = params[:threshold]
    @reduction = params[:reduction]
    @until     = params[:until]
  end
end
