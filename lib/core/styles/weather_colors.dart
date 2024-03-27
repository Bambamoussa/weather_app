import 'package:flutter/material.dart';

class WeatherColors {
  // Primary (B2C)
  static const Color primaryM50 = Color(0xFFFEF5F9);
  static const Color primaryM75 = Color(0xFFFCE6F0);
  static const Color primaryM100 = Color(0xFFF06BAA);
  static const Color primaryM200 = Color(0xFFE92B86);
  static const Color primaryS300 = Color(0xFFEC1B66);
  static const Color primaryM300 = Color(0xFFE5006D);
  static const Color primaryM400 = Color(0xFFA0004C);
  static const Color primaryM500 = Color(0xFF8C0042);

  // Primary (B2B)
  static const Color primaryA50 = Color(0xFFF2F7FD);
  static const Color primaryA75 = Color(0xFFE2EDFA);
  static const Color primaryA100 = Color(0xFF659DE6);
  static const Color primaryA200 = Color(0xFF458BE8);
  static const Color primaryA300 = Color(0xFF2270D8);
  static const Color primaryA400 = Color(0xFF1352A4);
  static const Color primaryA500 = Color(0xFF11396F);

  // Secondary
  static const Color secondaryC50 = Color(0xFFF8F8F9);
  static const Color secondaryC75 = Color(0xFFEFEEF1);
  static const Color secondaryC100 = Color(0xFF7E7B91);
  static const Color secondaryC200 = Color(0xFF474262);
  static const Color secondaryC300 = Color(0xFF211B42);
  static const Color secondaryC400 = Color(0xFF17132E);
  static const Color secondaryC500 = Color(0xFF141028);

  // Tertiary
  static const Color tertiaryB50 = Color(0xFFFEF5F5);
  static const Color tertiaryB75 = Color(0xFFFAECEB);
  static const Color tertiaryB100 = Color(0xFFF8C5C5);
  static const Color tertiaryB200 = Color(0xFFF5ACAC);
  static const Color tertiaryB300 = Color(0xFFF39B9B);
  static const Color tertiaryB400 = Color(0xFFAA6D6D);
  static const Color tertiaryB500 = Color(0xFF945F5F);

  // Info
  static const Color infoIN50 = Color(0xFFF8FAFD);
  static const Color infoIN75 = Color(0xFFE5EFFA);
  static const Color infoIN100 = Color(0xFFC3D7F3);
  static const Color infoIN200 = Color(0xFF9DBDEB);
  static const Color infoIN300 = Color(0xFF5084D1);
  static const Color infoIN400 = Color(0xFF325B99);
  static const Color infoIN500 = Color(0xFF2C4F85);

  // Danger
  static const Color errorD50 = Color(0xFFFDEBEB);
  static const Color errorD75 = Color(0xFFFBD5D6);
  static const Color errorD100 = Color(0xFFF2898B);
  static const Color errorD200 = Color(0xFFED5659);
  static const Color errorD300 = Color(0xFFE93337);
  static const Color errorD400 = Color(0xFFA32427);
  static const Color errorD500 = Color(0xFF8E1F22);

  // Success
  static const Color successSU50 = Color(0xFFF1F9F1);
  static const Color successSU75 = Color(0xFFDFF1DD);
  static const Color successSU100 = Color(0xFF8DCE8A);
  static const Color successSU200 = Color(0xFF5BB857);
  static const Color successSU300 = Color(0xFF3AAA35);
  static const Color successSU400 = Color(0xFF297725);
  static const Color successSU500 = Color(0xFF236820);

  // Neutral
  static const Color neutralN0 = Color(0xFFFFFFFF);
  static const Color neutralN10 = Color(0xFFFBFAFB);
  static const Color neutralN20 = Color(0xFFF6F6F7);
  static const Color neutralN30 = Color(0xFFEDEDF0);
  static const Color neutralN40 = Color(0xFFE2E1E6);
  static const Color neutralN50 = Color(0xFFC8C6D0);
  static const Color neutralN60 = Color(0xFFBAB8C4);
  static const Color neutralN70 = Color(0xFFAFADBB);
  static const Color neutralN80 = Color(0xFFA29FB0);
  static const Color neutralN90 = Color(0xFF9491A4);
  static const Color neutralN100 = Color(0xFF878399);
  static const Color neutralN200 = Color(0xFF7A768E);
  static const Color neutralN300 = Color(0xFF6C6882);
  static const Color neutralN400 = Color(0xFF615C79);
  static const Color neutralN500 = Color(0xFF544F6D);
  static const Color neutralN600 = Color(0xFF494364);
  static const Color neutralN700 = Color(0xFF393357);
  static const Color neutralN800 = Color(0xFF2C254B);
  static const Color neutralN900 = Color(0xFF211A42);

  // Text Colors
  static const Color txtNeutralPrimary = neutralN0;
  static const Color txtNeutralSecondary = neutralN60;
  static const Color txtCloudDisabled = secondaryC100;
  static const Color txtCloudSecondary = secondaryC200;
  static const Color txtCloudPrimary = secondaryC300;
  static const Color txtMagentaPrimary = primaryM300;
  static const Color txtAzurePrimary = primaryA300;
  static const Color txtSuccess = successSU400;
  static const Color txtDanger = errorD300;
  static const Color txtInfo = infoIN300;
  static const Color txtDisabled = Color(0xFF7A787B);
  static const Color txtBlack = Color(0xFF000000);
  static const Color txtGrey = Color(0xFF9E9E9E);

  // Background Colors
  static const Color backgroundBgWhite = neutralN0;
  static const Color backgroundBgPrimary = neutralN10;
  static const Color backgroundBgStrong = secondaryC50;
  static Color backgroundBgOpacity = secondaryC100.withOpacity(0.7);
  static const Color backgroundBgNavyBlue = secondaryC300;
  static const Color bgPrimary = Color(0xFFF6F6F6);

  // Border Colors
  static const Color borderWhite = neutralN0;
  static const Color borderGrey100 = neutralN40;
  static const Color borderGrey200 = neutralN80;
  static const Color borderGrey300 = neutralN200;
  static const Color borderGrey400 = neutralN600;
  static const Color borderPrimary = neutralN900;
  static const Color borderMagenta = primaryM300;
  static const Color borderAzure = primaryA300;
  static const Color borderInfo = infoIN300;
  static const Color borderDanger = errorD300;
  static const Color borderSuccess = successSU300;
  static const Color borderInfoLight = infoIN100;
  static const Color borderSuccessLight = successSU75;
  static const Color borderNeutralLight = neutralN40;

  // Shadow
  static const Color shadow = Color(0xFF5D6B82);

  // Shade Colors
  static const Color shadeBlue = secondaryC300;
  static const Color shadeWhite = neutralN0;

  // Events Colors
  static const Color cultureColor = Color(0xFFBFDBFF);
  static const Color naissanceColor = Color(0xFFFBDFBF);
  static const Color rentreeColor = Color(0xFFFACCCD);
  static const Color noelColor = Color(0xFFD1B878);
  static const Color liberteColor = Color(0xFFD6F1FC);
  static const Color recompenseColor = Color(0xFFCEEACD);

  //Dividers Colors
  static Color popupColorDivider = Color(0XFFEF4280);

  //background
  static const Color background = Color(0xFFF5F5F5);
  static const Color orangeO200 = Color(0xFFF2932B);
  static const Color leafL300 = Color(0xFF3AAA35);
}
