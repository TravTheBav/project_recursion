# iterative fibonacci
def fibs(n)
  fibs = [0, 1]

  return fibs[n - 1] if fibs.include?(n)

  n = n - 2 # since we're already accounting for the first 2 nums
  n.times { fibs << fibs[-1] + fibs[-2] }
  fibs
end

# recursive fibonacci
def fibs_rec(n)
  return [0] if n == 1
  return [0, 1] if n == 2

  fibs_rec(n - 1) + [fibs_rec(n - 1)[-1] + fibs_rec(n - 1)[-2]]
end
