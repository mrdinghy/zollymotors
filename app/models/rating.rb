class Rating < EnumerateIt::Base
  associate_values(
      :phone  => 1,
      :meeting  => 2,
      :conference  => 3,
      :task => 4,
      :email => 5
  )
end