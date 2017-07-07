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
    self.submissions.all.each do |submission|
      puts "="*30
      puts problem.id
      puts submission.problem_id
      puts submission.verdict
      puts "="*30
      next if(submission.created_at < start_time || submission.created_at > end_time)
      if(problem.id == submission.problem_id)
        if(submission.verdict == "Accepted")
          return 1
        else
          verdict-=1
        end
      end
    end
    return verdict
  end

end
