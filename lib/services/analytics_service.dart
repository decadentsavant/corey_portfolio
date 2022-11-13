import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
AnalyticsService._();
static final AnalyticsService instance = AnalyticsService._();

final _analytics = FirebaseAnalytics.instance;

  FirebaseAnalyticsObserver getAnalyticsObserver() => FirebaseAnalyticsObserver(
        analytics: _analytics,
      );
}
