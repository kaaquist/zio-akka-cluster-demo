.PHONY: all build test clean run
build:
	sbt clean compile

clean: 
	export JSON=`cat keys/gcp-key.json`;export PROJECTID="hf-data-staging";sbt clean

test: 
	export JSON=`cat keys/gcp-key.json`;export PROJECTID="hf-data-staging";sbt clean compile test

run-conf1:
	sbt run -J-Dconfig.resource=application1.conf

run-conf2: 
	sbt run -J-Dconfig.resource=application2.conf

scalafmt:
	sbt scalafmtAll