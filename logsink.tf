
import {
  to = google_logging_project_sink.default
  id = "projects/alpine-guild-420600/sinks/_Default"
  filter = " "
}


resource "google_logging_project_sink" "default" {
  name        = "_Default"
  destination = "logging.googleapis.com/projects/alpine-guild-420600/locations/global/buckets/_Default"

  exclusions {
    name        = "cloudrun_exclusions"
    description = "Exclude logs from Cloudrun service"
    filter      = "resource.type = k8s_container resource.labels.namespace_name=\"namespace-1\" "
  }

  unique_writer_identity = true
}
