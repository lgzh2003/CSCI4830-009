# Student Name: Ned McClain
# Project Name: NedDNS
# Project URL: https://github.com/nmcclain/neddns

## Planned contribution (1-3 sentences): The original author of this project got off to a good start, but this project is missing critical open source ingredients like a license, contribution guidelines, developer documentation, binary releases, or automated testing - I'm going to add that stuff.  I'm also going to implement a S3 failover option that can point to an alternate S3 or Google Cloud Storage bucket to improve availability in case of an S3 failure.

## Why this project is meaningful to me (1-3 sentences): I'm passionate about infrastructure-level services, believe DNS is the grandest distributed database ever implemented, and have a close personal relationship with the author.

## Why this contribution is meaningful to the project (1-3 sentences): DNS is critical infrastructure that must be highly available.  NedDNS has one external dependency (AWS S3), which only offers a 99.99% availability guarantee.  By supporting failover to Google Cloud Storage (which is S3-compatible and has a similar SLA), NedDNS service availability can be massively improved.

