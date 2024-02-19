"""
This file contains the Maven dependencies of Batfish.
"""

load("@rules_jvm_external//:specs.bzl", "maven")

# See: https://github.com/bazelbuild/rules_jvm_external#exporting-and-consuming-artifacts-from-external-repositories
BATFISH_MAVEN_ARTIFACTS = [
    "com.carrotsearch:hppc:0.9.1",
    "com.fasterxml.jackson.core:jackson-annotations:2.16.1",
    "com.fasterxml.jackson.core:jackson-core:2.16.1",
    "com.fasterxml.jackson.core:jackson-databind:2.16.1",
    "com.fasterxml.jackson.dataformat:jackson-dataformat-yaml:2.16.1",
    "com.fasterxml.jackson.datatype:jackson-datatype-guava:2.16.1",
    "com.fasterxml.jackson.datatype:jackson-datatype-jdk8:2.16.1",
    "com.fasterxml.jackson.datatype:jackson-datatype-jsr310:2.16.1",
    "com.fasterxml.jackson.jaxrs:jackson-jaxrs-base:2.16.1",
    "com.fasterxml.jackson.module:jackson-module-jaxb-annotations:2.16.1",
    "com.github.ben-manes.caffeine:caffeine:3.1.8",
    "com.google.auto.service:auto-service:1.1.1",
    "com.google.auto.service:auto-service-annotations:1.1.1",
    "com.google.code.findbugs:jsr305:3.0.2",
    "com.google.code.gson:gson:2.10.1",  # managed up for CVE-2022-25647
    "com.google.errorprone:error_prone_annotations:2.24.1",
    "com.google.guava:guava:33.0.0-jre",
    maven.artifact(group = "com.google.guava", artifact = "guava-testlib", version = "33.0.0-jre", exclusions = [maven.exclusion(group = "junit", artifact = "junit")]),
    "com.google.re2j:re2j:1.7",
    "com.ibm.icu:icu4j:74.2",
    "commons-beanutils:commons-beanutils:1.9.4",
    "commons-cli:commons-cli:1.6.0",
    "commons-io:commons-io:2.15.1",
    "dk.brics:automaton:1.12-4",
    "jakarta.activation:jakarta.activation-api:1.2.2",
    "jakarta.annotation:jakarta.annotation-api:1.3.5",
    "jakarta.ws.rs:jakarta.ws.rs-api:2.1.6",
    "jakarta.xml.bind:jakarta.xml.bind-api:2.3.3",
    "junit:junit:4.12",
    "net.sourceforge.pmd:pmd-java:6.55.0",
    "org.antlr:antlr4-runtime:4.7.2",
    "org.apache.commons:commons-collections4:4.4",
    "org.apache.commons:commons-configuration2:2.9.0",
    "org.apache.commons:commons-lang3:3.14.0",
    "org.apache.commons:commons-text:1.11.0",
    "org.apache.httpcomponents:httpclient:4.5.14",  # managed up 2021-06-04 for CVE-2020-13956
    "org.apache.httpcomponents:httpcore:4.4.16",  # managed up 2021-06-04 for fixes
    "org.apache.logging.log4j:log4j-api:2.22.1",
    "org.apache.logging.log4j:log4j-core:2.22.1",
    "org.apache.logging.log4j:log4j-slf4j-impl:2.22.1",
    "org.codehaus.jettison:jettison:1.5.4",
    "io.github.java-diff-utils:java-diff-utils:4.12",
    "org.glassfish.grizzly:grizzly-http-server:2.4.4",
    "org.glassfish.grizzly:grizzly-framework:2.4.4",
    "org.glassfish.jersey.containers:jersey-container-grizzly2-http:2.41",
    "org.glassfish.jersey.core:jersey-client:2.41",
    "org.glassfish.jersey.core:jersey-common:2.41",
    "org.glassfish.jersey.core:jersey-server:2.41",
    "org.glassfish.jersey.inject:jersey-hk2:3.1.5",
    "org.glassfish.jersey.media:jersey-media-json-jackson:2.41",
    maven.artifact(group = "org.glassfish.jersey.test-framework", artifact = "jersey-test-framework-core", version = "2.41", exclusions = [maven.exclusion(group = "junit", artifact = "junit")]),
    maven.artifact(group = "org.glassfish.jersey.test-framework.providers", artifact = "jersey-test-framework-provider-grizzly2", version = "2.41", exclusions = [maven.exclusion(group = "junit", artifact = "junit")]),
    "org.hamcrest:hamcrest:2.2",
    "org.lz4:lz4-java:1.8.0",
    "org.mockito:mockito-core:5.8.0",
    "org.mockito:mockito-inline:5.2.0",
    "org.jgrapht:jgrapht-core:1.5.2",
    "org.jline:jline:3.25.0",
    "org.parboiled:parboiled-core:1.4.1",
    "org.parboiled:parboiled-java:1.4.1",
    "org.skyscreamer:jsonassert:1.5.1",
    "org.yaml:snakeyaml:2.2",
]
