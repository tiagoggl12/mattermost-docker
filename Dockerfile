FROM ghcr.io/mattermost/mattermost-team-edition:10.0.0

ENV MM_SQLSETTINGS_DRIVERNAME=postgres
ENV MM_SERVICESETTINGS_SITEURL=https://bugacave-mattermost-tnvxb7qnxq-ew.a.run.app
ENV MM_SERVICESETTINGS_LISTENADDRESS=:8080

EXPOSE 8080

CMD ["mattermost"]
