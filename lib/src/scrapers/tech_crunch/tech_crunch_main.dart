import 'package:news_aggregator/src/scrapers/tech_crunch/tech_crunch_scraper.dart'
    as tech_crunch_scraper;

void main(List<String> args) async {
  print(await tech_crunch_scraper.initiate());
}
