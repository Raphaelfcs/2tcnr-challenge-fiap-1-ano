GridDB Data Source for Grafana

## Overview

This Plugin is used to get data from GridDB and display as graph or table base on [Grafana](https://github.com/grafana/grafana).

## Operating environment

Building of the plugin and execution have been checked in the following environment.
- OS: CentOS 7.6(x64)
- [GridDB Server and Java Client](https://github.com/griddb/griddb_nosql): 4.2
- [GridDB WebAPI](https://github.com/griddb/webapi): 2.0
- [Grafana](https://github.com/grafana/grafana): 6.2

## QuickStart

### How to installation

1. Go to $GRAFANA_HOME/data/plugins, create a new folder "GridDB-plugin"
    + Note: This folder is created after run Grafana server the first time.
2. Copy folder "dist" to folder "GridDB-plugin"
3. Restart your Grafana server 

Note: The folder "dist" includes files created by building with the following method.

    Go to source include file package.json and run the command below:

        $ npm install -g yarn
        $ yarn install
        $ yarn build

### How to use

Please refer to [User Guide](https://github.com/griddb/griddb-datasource/blob/master/docs/UserGuide.md).

The summary is as below:

#### Adding the data source

1. Open the side menu by clicking the Grafana icon in the top header.
2. In the side menu under the Configuration link you should find a link named Data Sources
3. Click the + Add data source button in the top header
4. Select GridDB from the Type dropdown
5. Click to Save & Test button to check the connection to datasource. System use basic authentication to authenticate to GridDB server

|Name|Description|
|---|---|
|Name|Data Source name|
|Host|URL to GridDB WebAPI|
|Cluster|Cluster name|
|User|GridDB user name|
|Password|GridDB password|

#### Variable

You can use three formats below to create variable;

|Format|Description|
|---|---|
|$griddb_container_list| Get all containers|
|$griddb_column_list({container name})|Get all columns of a specific container|
|$griddb_query_data({container name}, {columns}, {TQL})|Get data of a specific container|

#### Annotation

There are two types: normal annotation and regions annotation.

- Annotation
    + Please add "where $_timeFilter" in Query.
- Regions Annotation
    + Please add "where $_rangeFilter" in Query.

#### Query

Please refer to [Query special expression](QuerySpecialExpression.md).

## Community

  * Issues  
    Use the GitHub issue function if you have any requests, questions, or bug reports. 
  * PullRequest  
    Use the GitHub pull request function if you want to contribute code.
    You'll need to agree GridDB Contributor License Agreement(CLA_rev1.1.pdf).
    By using the GitHub pull request function, you shall be deemed to have agreed to GridDB Contributor License Agreement.

## License
  
  This Plugin source license is Apache License, version 2.0.
