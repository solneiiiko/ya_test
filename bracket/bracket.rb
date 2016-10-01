# правильные скобочные последовательности N

def brackets(n)
  return false if n%2==1
  f((n/2).to_i)
end

def f(n) #скобок
  return [''] if n==0
  return ['()'] if n==1
  return ['()()','(())'] if n==2

  r = f( n-1 )
  r.map{|str| '('+str+')' } + r.map{|str| '()'+str } + r.map{|str| str+'()' } 
end