require 'state_machine'

class Titan
  attr_reader :t_type, :t_size, :active

  def initialize(t_type, t_size)
    @t_type = t_type
    @t_size = t_size
    @active = false
    super()
  end

  state_machine :state, initial: -> (t) { t.active? ? :seeking : :dormant } do
    state :dormant, :seeking, :attacking
  end

  def active?
    current = Time.now
    @active ||= current.hour <= 19 && current.hour >= 5
  end
end
