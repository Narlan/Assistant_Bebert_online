class Alliance < ApplicationRecord

  def total_tdc
    total_tdc = 0
    User.all.each { |user| total_tdc += user.tdc }
    return total_tdc
  end

  def total_need
    total_need = 0
    User.all.each { |user| total_need += user.need }
    return total_need
  end

  def total_production
    return total_tdc * 48
  end

  def completion_delta
    return total_need / total_production
  end

end
