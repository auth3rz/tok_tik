extension FormatoDecimal on String{

  String formatoDecimal(){
    var numeroFinal = '';

    final numeroInvertido = split('').reversed.toList();

    if (numeroInvertido.length < 4) {
      for (var i = 0; i < numeroInvertido.length; i++) {
        numeroFinal = '${numeroInvertido[i]}$numeroFinal';
      }
    } else if (numeroInvertido.length > 3 && numeroInvertido.length < 7) {
      for (var i = 0; i < numeroInvertido.length; i++) {
        if (i > 2) {
          numeroFinal = '${numeroInvertido[i]}$numeroFinal';
        }
      }
      numeroFinal = '${numeroFinal}k';
    } else {
      for (var i = 0; i < numeroInvertido.length; i++) {
        if (i > 5) {
          numeroFinal = '${numeroInvertido[i]}$numeroFinal';
        }
      }
      numeroFinal = '${numeroFinal}M';
    }
    return numeroFinal;
  }
}