# Hive S3

## Get Started

To get started, first clone this repo:

```
git clone https://github.com/EdmilsonSantana/hive-s3.git
cd hive-s3
```

As a prerequisite you will need:

- An user with access to an s3 bucket that you will use to query with Apache Hive. Create a `.env` file, based on  `.env.tmpl` file, with the user's access key and secret.

- [Docker](https://www.docker.com/get-started/) and docker-compose installed.

With Docker installed and running you have to copy the required dependencies to `target/lib` folder and finally run Apache Hive executing:

```
.\mvnw dependency:copy-dependencies
docker-compose up -d
```

You can now enter the Hive server container and access Beeline Cli:

```
docker-compose exec -it hiveserver /bin/bash
```

```
beeline -u 'jdbc:hive2://localhost:10000/'
```

There is a HQL and a csv file available in `data/` with a database and a schema that can be used for testing. You must upload the csv file to your bucket and adjust the file location in the HQL file to point to your bucket.

You can run the script within Beeline with the following command:

```
!run /eletric_vehicle_population.hql
```

Check if the script executed successfully running this following query:

```
select count(*) from Electric_Vehicle_Population_Data;
```
