# Job-Market Radar
*The skills that the market asks of Data and Software Engineers (Python focused)*

## Data Sources and Ethics

The project collects publicly accessible job listings from major Iranian job boards, including [Quera](https://quera.org/), [JobVision](https://jobvision.ir/), and [Jobinja](https://jobinja.ir/). Where feasible, the collectors use JSON endpoints to retrieve structured listing data rather than parsing rendered HTML.

**Source availability and access policies**

As of October 21, 2026, at approximately 21:00 (Iran Standard Time), one of the platforms was temporarily unavailable during my inspection. I inspected the `robots.txt` files of Quera and JobVision, focusing on their publicly accessible job-listing pages:

- [Quera job listings](https://quera.org/magnet/jobs/)
- [JobVision developer listings](https://jobvision.ir/jobs/category/developer)

The findings from `robots.txt` are not, by themselves, treated as authorization to scrape. Collection must also respect each platform's applicable terms of service, access restrictions, and other relevant policies. The availability of an endpoint does not necessarily imply permission to use it for automated collection.

**Responsible collection practices**

- Maintain a minimum interval of 3–5 seconds between requests, where appropriate, and use conservative request rates to minimize server load.
- Respect applicable crawling restrictions, rate limits, and access controls. Stop collection if a platform blocks requests or indicates that automated access is not permitted.
- Collect only the fields necessary for the project's analytical purposes.
- Avoid collecting personal or sensitive information, and do not publish raw listings or redistribute substantial amounts of source content.
- Keep source attribution and links to original listings wherever practical.

**License and intended use**
This is an open-source project released under the MIT License, intended for educational, analytical, and portfolio-demonstration purposes. The project license applies to its own code; it does not grant rights to third-party job listings, website content, or other source data. Any reuse or redistribution of collected data remains subject to the relevant rights and platform policies.
