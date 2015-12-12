x = [[1,6],[2,4],[3,7],[6,8],[7,1],[8,4]]
y = [7,8,16,44,50,68]
q = [4,2]
k = 3
result_array = []

y.count.times do |i|
  x1 = x[i][0]
  x2 = x[i][1]
  q1 = q[0]
  q2 = q[1]
  delt_1 = x1 - q1
  delt_2 = x2 - q2
  dist = Math.sqrt(delt_1**2 + delt_2**2)
  result_array << dist
end


r = result_array.zip(y)
r =r.sort

puts 'results for cartesian 1nn'
puts r[0][1]


puts 'results for cartesian 3nn'
puts r[0][1], r[1][1], r[2][1]
avg = (r[0][1] + r[1][1]+r[2][1]).to_f/3
if r[2][0] == r[3][0]
  avg = (r[0][1] + r[1][1]+r[2][1]+r[3][1]).to_f/4
end

#puts result_array.sort
puts avg

result_array = []

y.count.times do |i|
  x1 = x[i][0]
  x2 = x[i][1]
  q1 = q[0]
  q2 = q[1]
  delt_1 = x1 - q1
  delt_2 = x2 - q2
  dist = delt_1.abs + delt_2.abs
  result_array << dist
end

r = result_array.zip(y)
r = r.sort

puts 'results for manhattan 1nn'
puts r[0][1]


puts 'results for manhattan 3nn'
puts r[0][1], r[1][1], r[2][1]
avg = (r[0][1] + r[1][1]+r[2][1]).to_f/3
if r[2][0] == r[3][0]
  avg = (r[0][1] + r[1][1]+r[2][1]+r[3][1]).to_f/4
end
#puts result_array.sort
puts avg

