function dist = getJaccardDistance(item1, item2)

a = length(intersect(item1, item2));
dist = 1 - a/(length(item1) + length(item2 - a));