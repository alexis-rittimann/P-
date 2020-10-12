require 'time'
require 'pry'

class Event
  attr_accessor :start_date, :duration, :title, :people
  @@events_all = []

  def initialize(time, temps, title, people)
    @start_date = Time.parse(time)
    @duration = temps.to_i
    @title = title
    @people = people
    @@events_all << self
  end

  def postone_24h
     @start_date += 24*60*60
  end

  def end_date
    return @strat_date + (@duration * 60)
  end

  def is_past?
    @start_date < Time
  end

  def is_future?
    @start_date > Time
  end
end
