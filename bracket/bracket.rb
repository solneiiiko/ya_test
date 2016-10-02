# правильные скобочные последовательности N

def brackets(n)
  return false if n%2==1
  f((n/2).to_i, n, 0, 0, '')
end

def f(n, n2, open, close, str)
  return [str] if open+close==n2
  
  if open < n
    r1 = f(n,n2,open+1, close, str+'(')
  end
  
  if open>close
    r2 = f(n,n2,open, close+1, str+')')
  end

  (r1||[])+(r2||[])
end
