# README #

This repository contains a Vagrant virtual box with Elasticsearch installed - all set up and ready to use.

_Please note this environment is intended for development only and is not optimized for production._

### What does it do? ###

[Elasticsearch](https://www.elastic.co/products/elasticsearch) is a distributed indexing and search engine built on to of Lucene. It has a [JSON API](https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html) you should learn to be able to use it effectively.
 
There are some plugins installed on top of the Elasticsearch engine to help you diagnosing and managing this beast:

* [Elasticsearch Mapper Attachments](https://github.com/elasticsearch/elasticsearch-mapper-attachments) - enables indexing of many popular document types as .doc or .pdf.
* [ICU Analysis plugin](https://www.elastic.co/guide/en/elasticsearch/plugins/master/analysis-icu.html) - adds extended Unicode support using the [ICU](http://site.icu-project.org/) libraries, including better analysis of Asian languages, Unicode normalization, Unicode-aware case folding, collation support, and transliteration.
* [Elasticsearch HQ](https://github.com/royrusso/elasticsearch-HQ) - provides a powerful and easy to use management user interface.
* [Bigdesk](https://github.com/lukas-vlcek/bigdesk) - another management user interface.

### How do I get set up? ###

* Install [VirtualBox](https://www.virtualbox.org/) - yes, it uses VirtualBox, on newer Windows might have to uninstall or [switch from Hyper-V](http://www.hanselman.com/blog/SwitchEasilyBetweenVirtualBoxAndHyperVWithABCDEditBootEntryInWindows81.aspx).
* Install [Vagrant](https://www.vagrantup.com/downloads.html) for your OS.
* Clone this repository.
* Launch the VM from the repository directory:

```
    vagrant up
```

* Navigate to [http://localhost:9200](http://localhost:9200) to see if it works.
* Access Elasticsearch HQ under [http://localhost:9200/_plugin/hq/](http://localhost:9200/_plugin/hq/).
