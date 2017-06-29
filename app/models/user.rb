class User < ApplicationRecord
  has_many :submissions
  has_and_belongs_to_many :contests
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  public

  def get_verdict(problem)
    verdict = 0
    self.submissions.all.each do |submission|
      print "="*30
      print problem.id
      print submission.problem_id
      print submission.verdict
      print "="*30
      if(problem.id == submission.problem_id)
        if(submission.verdict == "AC")
          return 1
        else
          verdict-=1
        end
      end
    end
    return verdict
  end

end
