# проверить что двоичное дерево является двоичным деревом поиска
# по умолчанию считаем, что дерево состоит хотя бы из одной вершины

require 'set'

def b_tree(top)
  is_in_range(top, nil, nil);
end

def is_in_range(node, min, max)
  return false if (min!=nil && node[:v]<min) || (max!=nil && node[:v]>max)
  (node[:l]==nil || is_in_range(node[:l], min, node[:v])) && (node[:r]==nil || is_in_range(node[:r], node[:v], max))
end
