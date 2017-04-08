{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "volumeMounts" -}}
{{- range $volumeName, $data := .Values.volumes }}
        - name: {{ $volumeName }}-vol
          mountPath: {{ $data.containerPath }}
{{- end -}}
{{- end -}}

{{- define "volumes" -}}
{{- range $volumeName, $data := .Values.volumes }}
        - name: {{ $volumeName }}-vol
        {{- if eq $data.type "host" }}
          hostPath:
            path: {{ $data.hostPath }}
        {{- else if eq $data.type "claim" }}
          persistentVolumeClaim:
            claimName: {{ $data.claimName }}
        {{- end -}}
{{- end -}}
{{- end -}}

