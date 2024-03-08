20.0.0
- No change

19.0.0
- No change

18.0.0
- No change

17.2.0
- imagePullSecrets only used when this value is present: 
  .Values.agent.resource.imageCredentials
- Changing maxUnavailable: 3 -> 10 

17.1.0
- Fixed bug around bareMetalDataVolume (default was set to enable)

16.1.0
- New support for priorityClassName