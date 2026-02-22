FROM mattermost/mattermost-team-edition:10.0.0

COPY plugins/ /mattermost/plugins/

ENV MM_SQLSETTINGS_DRIVERNAME=postgres
ENV MM_SERVICESETTINGS_SITEURL=https://bugacave-mattermost-tnvxb7qnxq-ew.a.run.app
ENV MM_SERVICESETTINGS_LISTENADDRESS=:8080
ENV MM_PLUGINSETTINGS_ENABLEUPLOADS=true

EXPOSE 8080

CMD ["mattermost"]
