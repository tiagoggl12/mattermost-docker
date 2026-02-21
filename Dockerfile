FROM mattermost/mattermost-team-edition:11.3

ENV MM_SQLSETTINGS_DRIVERNAME=postgres
ENV MM_SERVICESETTINGS_SITEURL=https://bugacave-mattermost-1070113539349.europe-west1.run.app
ENV MM_SERVICESETTINGS_LISTENADDRESS=:8080

RUN mkdir -p /mattermost/data /mattermost/logs /mattermost/plugins /mattermost/config

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:8080/api/v4/system/ping || exit 1

CMD ["mattermost"]
