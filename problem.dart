void main() {
  //

  List<String> dna = [
    "ATGCAA",
    "CAGTGC",
    "CTATGT",
    "AGAAGG",
    "GCCCGA",
    "TCCCCG",
  ];

  int matchesFound = 0;

  void verifyMatch(String word) {
    if (word == 'AAAA' || word == 'TTTT' || word == 'GGGG' || word == 'CCCC') {
      matchesFound = matchesFound + 1;
    }
  }

  bool isMutant(List<String> dna) {
    //

    for (int i = 0; i < dna.length; i++) {
      //

      for (int j = 0; j < dna[i].length; j++) {
        //
        //Right
        String word = '${dna[i][j]}';

        if (j + 1 < dna[i].length) {
          word = word + dna[i][j + 1];
        }

        if (j + 2 < dna[i].length) {
          word = word + dna[i][j + 2];
        }

        if (j + 3 < dna[i].length) {
          word = word + dna[i][j + 3];
        }

        verifyMatch(word);

        //Down
        word = '${dna[i][j]}';

        if (i + 1 < dna.length) {
          word = word + dna[i + 1][j];
        }

        if (i + 2 < dna.length) {
          word = word + dna[i + 2][j];
        }

        if (i + 3 < dna.length) {
          word = word + dna[i + 3][j];
        }

        verifyMatch(word);

        //Diagonal
        word = '${dna[i][j]}';

        if (i + 1 < dna.length) {
          if (j + 1 < dna[i + 1].length) {
            word = word + dna[i + 1][j + 1];
          }
        }

        if (i + 2 < dna.length) {
          if (j + 2 < dna[i + 2].length) {
            word = word + dna[i + 2][j + 2];
          }
        }

        if (i + 3 < dna.length) {
          if (j + 3 < dna[i + 3].length) {
            word = word + dna[i + 3][j + 3];
          }
        }

        verifyMatch(word);
        //
      }

      //
    }

    return (matchesFound > 1) ? true : false;

    //
  }

  print(isMutant(dna));
  print(matchesFound);

  //
}