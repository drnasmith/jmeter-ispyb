# jmeter-ispyb
Apache JMeter Tests for ISPyB/SynchWeb (requires JMeter > 5.0) https://jmeter.apache.org/

See jmeter docs for where to get mysql jdbc driver (MySQL Connector J) and install description
The main use case for these scripts are to create known database configurations for testing SynchWeb (or related web apps).
The template should be used as a starting point for creating your own scripts.
It shows how to import the setup/teardown scripts so the database should be left in the same state.

## Setup
Provide a properties file with <examples> as follows
synchweb_user = <boaty>
synchweb_password = <mcboatface>
db.user = <ispyb_db_user>
db.password = <ispyb_db_password>
db.host = <localhost>
db.port = <3306>

## Using the csv files
Each csv file refers to a table.
First line is a comment indicated valid items.
The delimiter is usually ';' because then we can handle addresses with ',' in the name.

Links/Foreign Keys are worked out based on names.
For example sessions are mapped to proposals by the proposalCode+proposalNumber. 
Dewars are mapped to shipments based on the shippingName etc.

## Running the test
You can run jmeter in gui or non-gui mode.

For gui mode:
jmeter -p [properties_file] -t [jmx_test_plan_file]

For non-gui mode
jmeter -n -t [jmx file] -l [results file] -e -o [Path to web report folder] -p [properties_file]
