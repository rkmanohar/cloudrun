resource "google_logging_project_bucket_config" "custom-log-bucket" {
    project    = "alpine-guild-420600"
    location  = "global"
    retention_days = 30
    bucket_id = "cloudrunlogs"
    description = "Cloudrunlogs"
}

resource "google_logging_project_sink" "cloudrun-logsink" {
  name        = "Cloudrunlogs"
  destination = "logging.googleapis.com/projects/alpine-guild-420600/locations/global/buckets/cloudrunlogs"
  filter      = "resource.type = gce_instance AND severity >= WARNING"
  unique_writer_identity = true
}
