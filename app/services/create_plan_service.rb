class CreatePlanService
  def call
    p1 = Plan.where(name: 'Gold').first_or_initialize do |p|
      p.amount = 1999
      p.interval = 'month'
      p.stripe_id = 'goldinvoice'
    end
    p1.save!(:validate => false)
    p2 = Plan.where(name: 'Silver').first_or_initialize do |p|
      p.amount = 999
      p.interval = 'month'
      p.stripe_id = 'silverinvoice'
    end
    p2.save!(:validate => false)
    p3 = Plan.where(name: 'Bronze').first_or_initialize do |p|
      p.amount = 599
      p.interval = 'month'
      p.stripe_id = 'bronzeinvoice'
    end
    p3.save!(:validate => false)
  end
end
