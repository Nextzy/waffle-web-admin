import 'package:design_system/lib.dart';

class AppSpace {
  const AppSpace({
    this.containerMobile = 20,
    this.containerDesktop = 32,
    this.xxxs = 8,
    this.xxs = 12,
    this.xs = 16,
    this.sm = 20,
    this.md = 24,
    this.lg = 28,
    this.xl = 32,
    this.xxl = 36,
    this.xxxl = 40,
});
  final double containerMobile;
  final double containerDesktop;
  final double xxxs;
  final double xxs ;
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double xxl;
  final double xxxl;

  EdgeInsets get containerMobileAll => EdgeInsets.all(containerMobile);
  EdgeInsets get containerMobileStart => EdgeInsets.only(left: containerMobile);
  EdgeInsets get containerMobileEnd => EdgeInsets.only(right: containerMobile);
  EdgeInsets get containerMobileTop => EdgeInsets.only(top: containerMobile);
  EdgeInsets get containerMobileBottom => EdgeInsets.only(bottom: containerMobile);
  EdgeInsets get containerMobileVertical => EdgeInsets.symmetric(vertical: containerMobile);
  EdgeInsets get containerMobileHorizontal => EdgeInsets.symmetric(horizontal: containerMobile);

  EdgeInsets get containerDesktopAll => EdgeInsets.all(containerDesktop);
  EdgeInsets get containerDesktopStart => EdgeInsets.only(left: containerDesktop);
  EdgeInsets get containerDesktopEnd => EdgeInsets.only(right: containerDesktop);
  EdgeInsets get containerDesktopTop => EdgeInsets.only(top: containerDesktop);
  EdgeInsets get containerDesktopBottom => EdgeInsets.only(bottom: containerDesktop);
  EdgeInsets get containerDesktopVertical => EdgeInsets.symmetric(vertical: containerDesktop);
  EdgeInsets get containerDesktopHorizontal => EdgeInsets.symmetric(horizontal: containerDesktop);

  EdgeInsets get xxxsAll => EdgeInsets.all(xxxs);
  EdgeInsets get xxxsStart => EdgeInsets.only(left: xxxs);
  EdgeInsets get xxxsEnd => EdgeInsets.only(right: xxxs);
  EdgeInsets get xxxsTop => EdgeInsets.only(top: xxxs);
  EdgeInsets get xxxsBottom => EdgeInsets.only(bottom: xxxs);
  EdgeInsets get xxxsVertical => EdgeInsets.symmetric(vertical: xxxs);
  EdgeInsets get xxxsHorizontal => EdgeInsets.symmetric(horizontal: xxxs);

  EdgeInsets get xxsAll => EdgeInsets.all(xxs);
  EdgeInsets get xxsStart => EdgeInsets.only(left: xxs);
  EdgeInsets get xxsEnd => EdgeInsets.only(right: xxs);
  EdgeInsets get xxsTop => EdgeInsets.only(top: xxs);
  EdgeInsets get xxsBottom => EdgeInsets.only(bottom: xxs);
  EdgeInsets get xxsVertical => EdgeInsets.symmetric(vertical: xxs);
  EdgeInsets get xxsHorizontal => EdgeInsets.symmetric(horizontal: xxs);

  EdgeInsets get xsAll => EdgeInsets.all(xs);
  EdgeInsets get xsStart => EdgeInsets.only(left: xs);
  EdgeInsets get xsEnd => EdgeInsets.only(right: xs);
  EdgeInsets get xsTop => EdgeInsets.only(top: xs);
  EdgeInsets get xsBottom => EdgeInsets.only(bottom: xs);
  EdgeInsets get xsVertical => EdgeInsets.symmetric(vertical: xs);
  EdgeInsets get xsHorizontal => EdgeInsets.symmetric(horizontal: xs);

  EdgeInsets get smAll => EdgeInsets.all(sm);
  EdgeInsets get smStart => EdgeInsets.only(left: sm);
  EdgeInsets get smEnd => EdgeInsets.only(right: sm);
  EdgeInsets get smTop => EdgeInsets.only(top: sm);
  EdgeInsets get smBottom => EdgeInsets.only(bottom: sm);
  EdgeInsets get smVertical => EdgeInsets.symmetric(vertical: sm);
  EdgeInsets get smHorizontal => EdgeInsets.symmetric(horizontal: sm);

  EdgeInsets get mdAll => EdgeInsets.all(md);
  EdgeInsets get mdStart => EdgeInsets.only(left: md);
  EdgeInsets get mdEnd => EdgeInsets.only(right: md);
  EdgeInsets get mdTop => EdgeInsets.only(top: md);
  EdgeInsets get mdBottom => EdgeInsets.only(bottom: md);
  EdgeInsets get mdVertical => EdgeInsets.symmetric(vertical: md);
  EdgeInsets get mdHorizontal => EdgeInsets.symmetric(horizontal: md);

  EdgeInsets get lgAll => EdgeInsets.all(lg);
  EdgeInsets get lgStart => EdgeInsets.only(left: lg);
  EdgeInsets get lgEnd => EdgeInsets.only(right: lg);
  EdgeInsets get lgTop => EdgeInsets.only(top: lg);
  EdgeInsets get lgBottom => EdgeInsets.only(bottom: lg);
  EdgeInsets get lgVertical => EdgeInsets.symmetric(vertical: lg);
  EdgeInsets get lgHorizontal => EdgeInsets.symmetric(horizontal: lg);

  EdgeInsets get xlAll => EdgeInsets.all(xl);
  EdgeInsets get xlStart => EdgeInsets.only(left: xl);
  EdgeInsets get xlEnd => EdgeInsets.only(right: xl);
  EdgeInsets get xlTop => EdgeInsets.only(top: xl);
  EdgeInsets get xlBottom => EdgeInsets.only(bottom: xl);
  EdgeInsets get xlVertical => EdgeInsets.symmetric(vertical: xl);
  EdgeInsets get xlHorizontal => EdgeInsets.symmetric(horizontal: xl);

  EdgeInsets get xxlAll => EdgeInsets.all(xxl);
  EdgeInsets get xxlStart => EdgeInsets.only(left: xxl);
  EdgeInsets get xxlEnd => EdgeInsets.only(right: xxl);
  EdgeInsets get xxlTop => EdgeInsets.only(top: xxl);
  EdgeInsets get xxlBottom => EdgeInsets.only(bottom: xxl);
  EdgeInsets get xxlVertical => EdgeInsets.symmetric(vertical: xxl);
  EdgeInsets get xxlHorizontal => EdgeInsets.symmetric(horizontal: xxl);

  EdgeInsets get xxxlAll => EdgeInsets.all(xxxl);
  EdgeInsets get xxxlStart => EdgeInsets.only(left: xxxl);
  EdgeInsets get xxxlEnd => EdgeInsets.only(right: xxxl);
  EdgeInsets get xxxlTop => EdgeInsets.only(top: xxxl);
  EdgeInsets get xxxlBottom => EdgeInsets.only(bottom: xxxl);
  EdgeInsets get xxxlVertical => EdgeInsets.symmetric(vertical: xxxl);
  EdgeInsets get xxxlHorizontal => EdgeInsets.symmetric(horizontal: xxxl);


  Gap get xxxsGap => Gap(xxxs);
  Gap get xxsGap => Gap(xxs);
  Gap get xsGap => Gap(xs);
  Gap get smGap => Gap(sm);
  Gap get mdGap => Gap(md);
  Gap get lgGap => Gap(lg);
  Gap get xlGap => Gap(xl);
  Gap get xxlGap => Gap(xxl);
  Gap get xxxlGap => Gap(xxxl);

}
