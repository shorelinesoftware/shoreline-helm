{{/*
Create secret to access docker registry
*/}}
{{- define "imagePullSecret" }}
{{- if ne .Values.agent.resource.image "shorelinesoftware/agent" }}
{{- with .Values.agent.resource.imageCredentials }}
{{- printf "{\"auths\":{\"%s\":{\"username\":\"%s\",\"password\":\"%s\",\"auth\":\"%s\"}}}" .server .username .password (printf "%s:%s" .username .password | b64enc) | b64enc }}
{{- end }}
{{- end }}
{{- end }}