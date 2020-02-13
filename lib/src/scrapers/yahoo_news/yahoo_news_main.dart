import 'package:news_aggregator/src/scrapers/yahoo_news/yahoo_news_scraper.dart'
    as yahoo_news_scraper;

void main(List<String> args) async {
  print(await yahoo_news_scraper.initiate());
}
