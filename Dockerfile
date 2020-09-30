# Generated by IBM TransformationAdvisor
# Wed Sep 30 13:24:44 UTC 2020

FROM ibmcom/websphere-traditional:latest-ubi

# put app and scripts and properties in /work/config
# put external library (e.g db driver) in /work/config/lib
COPY --chown=was:root modresorts-1.0.war /work/config/modresorts-1.0.war
COPY --chown=was:root ./src/config /work/config
COPY --chown=was:root ./lib /work/config/lib
RUN /work/configure.sh
