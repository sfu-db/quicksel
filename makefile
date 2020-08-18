DIR := ${CURDIR}

all:
	mvn compile assembly:single
	mvn test-compile

run:
	java -Dproject_home=${DIR} \
	-classpath target/test-classes:target/quickSel-0.1-jar-with-dependencies.jar \
	-Xmx32g -Xms1g edu.illinois.quicksel.experiments.Test dom1000 skew1.0_corr1.0 vood 1000 1000000

exp_speed:
	java -Dproject_home=${DIR} \
	-classpath target/test-classes:target/quickSel-0.1-jar-with-dependencies.jar \
	-Xmx8g -Xms1g edu.illinois.quicksel.experiments.SpeedComparison

exp_dmv:
	java -Dproject_home=${DIR} \
	-classpath target/test-classes:target/quickSel-0.1-jar-with-dependencies.jar \
	-Xmx32g -Xms1g edu.illinois.quicksel.experiments.DMVSpeedComparison

exp_instacart:
	java -Dproject_home=${DIR} \
	-classpath target/test-classes:target/quickSel-0.1-jar-with-dependencies.jar \
	-Xmx32g -Xms1g edu.illinois.quicksel.experiments.InstacartSpeedComparison

exp_scan:
	java -Dproject_home=${DIR} \
	-classpath target/test-classes:target/quickSel-0.1-jar-with-dependencies.jar \
    -Xmx32g -Xms1g edu.illinois.quicksel.experiments.PerAttAndSamplingTest
