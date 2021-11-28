class DeveloperScoringJob < ApplicationJob
  queue_as :default

  def perform
    developers = Developer.where(score: nil)

    developers.each do |developer|
      developer.update(score: 1)
    end
  end
end
