def skill
  skills = [
    'ruby',
    'ruby on rails',
    'react js',
    'java',
    'java script',
    'angular',
    'c++',
    'c',
    'c#',
    'php',
    'css',
    'html',
    'dotNet',
    'redux',
    'bootstrap',
    'jquery',
    'python',
    'django',
    'type script',
    'laravel',
    'swift'
  ]

  skill_length = skills.length - 1
  skills[rand(1..skill_length)]
end

def score
  scores = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10'
  ]

  scores_length = scores.length - 1
  scores[rand(1..scores_length)]
end

500.times do
  Developer.create(username: FFaker::Name.unique.name, skill: skill, score: score)
end
