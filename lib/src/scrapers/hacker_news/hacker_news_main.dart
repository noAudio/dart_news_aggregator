import 'package:news_aggregator/src/scrapers/hacker_news/hacker_news_scraper.dart'
    as hacker_news_scraper;

void main(List<String> args) async {
  print(await hacker_news_scraper.initiate());
}
