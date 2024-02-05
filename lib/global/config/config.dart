

import 'package:flutter/material.dart';
import 'package:uploadimage/global/constants/ui/constants.dart';
import 'package:uploadimage/main.dart';
//*---------------------------------------------------- (Global Context)
BuildContext globalContext = navigationKey.currentState!.context;

//*---------------------------------------------------- (Media_Query)
Size size = MediaQuery.sizeOf(globalContext);
UIConstants uiCon = UIConstants();