# idb-us-collections

Collections should each have their own JSON file, named by their collection UUID, and be formatted similar to this:

```json
[
  {
    "institution": "Yale University, Peabody Museum of Natural History",
    "collection": "Historical Scientific Instruments",
    "recordsets": "",
    "institution_code": "",
    "collection_code": "",
    "collection_uuid": "urn:uuid:09b5acf0-899b-4b4d-abd0-7dbb7799053c",
    "collection_lsid": "NA",
    "collection_url": "http://peabody.yale.edu/collections/historical-scientific-instruments",
    "collection_catalog_url": "http://peabody.yale.edu/collections/search-collections?hsi",
    "contact": "Paola Bertucci",
    "contact_role": "Assistant Curator",
    "contact_email": "paola.bertucci@yale.edu",
    "taxonomic_coverage": "",
    "geographic_range": "",
    "mailing_address": "Yale University, PO Box 208118",
    "mailing_city": "New Haven",
    "mailing_state": "Connecticut",
    "mailing_zip": "06511-0000",
    "physical_address": "170-210 Whitney Avenue",
    "physical_city": "New Haven",
    "physical_state": "Connecticut",
    "physical_zip": "06511-0000",
    "update_url": "https://docs.google.com/forms/d/1slWOvxuLpuPdvDihSibLQq9BPsOqPzK8Hh93zCW3dRI/viewform?entry.823080433=the+collection+is+already+in+the+list&entry.764919322=urn:uuid:09b5acf0-899b-4b4d-abd0-7dbb7799053c&entry.326174790=Yale University, Peabody Museum of Natural History&entry.2031121141=Historical Scientific Instruments&entry.4068754=&entry.1582913154=&entry.1336841557=http://peabody.yale.edu/collections/historical-scientific-instruments&entry.103879345=http://peabody.yale.edu/collections/search-collections?hsi&entry.107456176=&entry.879476273=&entry.417603227=&entry.1321049572=Paola Bertucci&entry.1687847097=Assistant Curator&entry.1086198428=paola.bertucci@yale.edu&entry.246950189=Yale University, PO Box 208118&entry.1584255348=New Haven&entry.1966582743=Connecticut&entry.256217142=06511-0000&entry.447546773=170-210 Whitney Avenue&entry.1565624766=New Haven&entry.1920508789=Connecticut&entry.1022645685=06511-0000",
    "lat": 41.3167,
    "lon": -72.9204
  }
]
```

## Metadata

- In general, institution and collection names should be spelled in full including the first/middle names of the people which the collections are named after. This is intended to facilitate full name search and avoid ambiguities, e.g.:
-- Bernice Pauahi Bishop Museum and not B.P. Bishop Museum or Bishop Museum
- ```Institution:``` name of the institution, ordered in decreasing hierarchy, separated by commas, e.g.:
-- University of Florida, Florida Museum of Natural History
-- Brigham Young University, Monte L. Bean Life Science Museum
- ```Collection:``` name of the collection, ordered in decreasing hierarchy, separated by commas
MAIN denotes the record for the institution itself rather than one of the collections
If the institution itself is just an herbarium, it should be listed as Herbarium (not MAIN)
- ```recordsets:``` the record sets for the collection in iDigBio. They should be separated by commas
- ```institutionCode:``` the institution code. We are using the GRbio convention of adding <IH> as a suffix if it’s a collection listed in index herbariorum
- ```collectionCode:``` the prefix used by the collection in their catalog number
- ```collectionUUID:``` generated by us, should be unique, with prefix urn:uuid:
- ```institutionLSID:``` the GRbio LSID or coolURI for the collection, empty fields are collections that were not part of GRbio as of August 2014
- ```collectionURL:``` the URL of the website that lists general information about the collection
- ```collectionCatalogURL:``` the URL of the website that provides a search interface (or lists specimens) for the specimens housed by the collection
- ```Contact:``` preferred person to act as point of contact for the collection. Usually I have removed titles from this field to only keep the name
- ```Role:``` role of the contact person for the collection
- ```Email:``` email of the contact person
- ```taxonomicCoverage:``` taxonomic strengths of the collection
- ```geographicRange:``` the geographic range from which the specimens in the collection come from.
- ```collectionSize:``` the number of specimens/lots in the collection
- ```mailingAddress:``` mailing address for the collection
- ```mailingCity```
- ```mailingState```
- ```mailingZipCode:``` to avoid conversion issue between spreadsheet formats, zip codes starting with a 0 have -0000 at the end: e.g., 02138-0000 for the MCZ
- ```physicalAddress:``` physical address for the collection
- ```mailingCity```
- ```mailingState```
- ```mailingZipCode:``` to avoid conversion issue between spreadsheet formats, zip codes starting with a 0 have -0000 at the end: e.g., 02138-0000 for the MCZ
- ```latitude:``` decimal latitude for the collection, should only be added for collection addresses that fail the geolocation lookup with the API
- ```longitude:```  decimal longitude for the collection, should only be added for collection addresses that fail the geolocation lookup with the API