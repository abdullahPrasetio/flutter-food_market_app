import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:food_market_app/models/models.dart';
import 'package:http/http.dart' as http;
part 'user_services.dart';
part 'food_services.dart';
part 'transaction_services.dart';

String baseURL = 'https://foodmarket-backend.buildwithangga.id/api/';
