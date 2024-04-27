import 'package:flutter/material.dart';

class TextArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(10), // Ajoute un espace autour du conteneur
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        minLines: 6,
        maxLines: null, // Permet à la zone de texte de grandir verticalement
        decoration: InputDecoration(
          hintText: 'Problem Description...',
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0), // Rayon de l'arrondi
            borderSide: BorderSide.none, // Aucune bordure extérieure visible
          ),
          contentPadding: const EdgeInsets.symmetric(
              horizontal: 15, vertical: 10), // Padding interne
        ),
      ),
    );
  }
}
