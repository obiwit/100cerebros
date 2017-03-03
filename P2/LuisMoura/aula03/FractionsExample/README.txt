Abra o ficheiro doc/index.html com um browser e siga as indicações.

Se não tiver esse directório ou ficheiro, pode gerá-lo correndo o comando:
  sh makeDoc

Se o seu sistema operativo não correr esse script, execute à mão o seu conteúdo:
    javadoc -private -author -linksource \
      -charset UTF8 -encoding UTF8 -docencoding UTF8 \
      -link http://docs.oracle.com/javase/8/docs/api/ \
      -overview overview.html \
      -d doc v*

