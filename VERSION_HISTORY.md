28.0.0
- No change

27.6.0
- initContainersImage to be customizable

27.5.0
- customer_secret to be optional

27.1.0
- Host level action update

27.0.0
- No change

26.2.0
- Host level action is added by default

26.1.0
- Certificate is optional

26.0.0
- No change

25.2.0
- Host level action is added by default

25.1.0
- Certificate is optional

25.0.0
- No change

24.1.0
- Certificate is optional

24.0.0
- No change

23.0.0
- No change

22.0.0
- No change

21.0.0
- No change

17.3.0
- custom tags for agent pod can be added:
  .Values.agent.podLabels

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