{{/*
Create secret to access docker registry
*/}}
{{- define "imagePullSecret" }}
{{- if .Values.agent.resource.imageCredentials }}
{{- with .Values.agent.resource.imageCredentials }}
{{- printf "{\"auths\":{\"%s\":{\"username\":\"%s\",\"password\":\"%s\",\"auth\":\"%s\"}}}" .server .username .password (printf "%s:%s" .username .password | b64enc) | b64enc }}
{{- end }}
{{- end }}
{{- end }}