import 'package:news_aggregator/src/scrapers/google_news/google_news_scraper.dart'
    as google_news_scraper;

void main(List<String> args) async {
  print(await google_news_scraper.initiate());
}
