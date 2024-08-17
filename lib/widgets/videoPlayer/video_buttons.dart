import 'package:flutter/material.dart';
import 'package:tok_tik/config/theme/helpers/formato_decimal.dart';
import 'package:tok_tik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {

  final VideoPost video;
  const VideoButtons({
    super.key,
    required this.video
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _BasicButton(cant: video.likes, icono: Icons.favorite, iconColor: Colors.red,),
        _BasicButton(cant: video.views, icono: Icons.remove_red_eye_outlined)
      ],
    );
  }
}

class _BasicButton extends StatelessWidget {
  
  final int cant;
  final IconData icono;
  final Color ? color;

  const _BasicButton({
    required this.cant,
    required this.icono,
    iconColor
  }) : color = iconColor ?? Colors.white;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: (){},
          icon: Icon(
            icono,
            color: color,
            size: 30,
          )
        ),
        Text('$cant'.formatoDecimal()),
        const SizedBox(height: 20,)
      ],
    );
  }
}