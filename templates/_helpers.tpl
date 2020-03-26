{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "integration-manager.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
The components in this chart create additional resources that expand the longest created name strings.
The longest name that gets created (-job-results-processor) adds an extra 22 characters to integration-manager.fullname,
so truncation should be 63-22=41.
*/}}
{{- define "integration-manager.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 41 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 41 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 41 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/* Fullname suffixed with aggregator */}}
{{- define "integration-manager.aggregator.fullname" -}}
{{- printf "%s-aggregator" (include "integration-manager.fullname" .) -}}
{{- end }}

{{/* Fullname suffixed with aggregator-processor */}}
{{- define "integration-manager.aggregator-processor.fullname" -}}
{{- printf "%s-aggregator-processor" (include "integration-manager.fullname" .) -}}
{{- end }}

{{/* Fullname suffixed with base */}}
{{- define "integration-manager.base.fullname" -}}
{{- printf "%s-base" (include "integration-manager.fullname" .) -}}
{{- end }}

{{/* Fullname suffixed with job-execution */}}
{{- define "integration-manager.job-execution.fullname" -}}
{{- printf "%s-job-execution" (include "integration-manager.fullname" .) -}}
{{- end }}

{{/* Fullname suffixed with job-results-processor */}}
{{- define "integration-manager.job-results-processor.fullname" -}}
{{- printf "%s-job-results-processor" (include "integration-manager.fullname" .) -}}
{{- end }}

{{/* Fullname suffixed with job-scheduler */}}
{{- define "integration-manager.job-scheduler.fullname" -}}
{{- printf "%s-job-scheduler" (include "integration-manager.fullname" .) -}}
{{- end }}

{{/* Fullname suffixed with static-content */}}
{{- define "integration-manager.static-content.fullname" -}}
{{- printf "%s-static-content" (include "integration-manager.fullname" .) -}}
{{- end }}
