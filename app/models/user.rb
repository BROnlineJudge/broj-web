class User < ApplicationRecord
  has_many :submissions
  has_and_belongs_to_many :contests
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  public

  def get_verdict(problem, start_time, end_time)
    verdict = 0
    firstAC = Time.zone.now
    ac = false
    self.submissions.all.each do |submission|
      next if(submission.created_at < start_time || submission.created_at > end_time)
      if(problem.id == submission.problem_id)
        if(submission.verdict == "Accepted")
          ac = true
          verdict-=1
          firstAC = submission.created_at if(submission.created_at < firstAC)
        else
          verdict-=1
        end
      end
    end
    puts "="*30
    puts verdict
    puts "="*30
    return [verdict * (ac ? -1 : 1), firstAC]
  end

end
