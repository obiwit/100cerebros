function similar = areSimilar(item1, item2, similarity_matrix, threshold)

similar = (similarity_matrix(item1, item2) < threshold);