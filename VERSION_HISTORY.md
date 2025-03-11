28.11.0
- custom affinity enabled for daemonset

28.10.0
- Option to disable readiness probe (default: disable)

28.9.0
- imageCredentials is optional.
- Added trim to remove extra linebreaks.

28.8.0
- Added option to add custom labels for namespace of agent

28.7.0
- Removed volumeMount for '/config' for customer_secret_filepath, as NVault will create volumeMount as part of secret file pull.

28.6.0
- customer_secret_filepath option added. This will add volume and volumeMount for '/config' and SECRET_FILEPATH env var. 
  - This will override SECRET env var.
  - Currently supported for release-27.1.48-hf01 only.

28.5.0
- Additional imagePullSecrets can be added.

28.4.0
- Clusterrole update with VMI

28.3.0
- SECRET env var is customizable.
- additional mount & volumeMount options
- hostAction option now includes varlog, varlibdockercontainers, host-ssh-volume.

28.2.0
- Clusterrole with VMI & pod delete
- hostNetwork & dnsPolicy added to daemonset

28.1.0
- Additional clusterrole for agent.serviceaccount.enable_debug_permission=true
- imagePullPolicy: Always for initContainer

28.0.0
- No change

27.9.0
- SECRET env var is customizable.
- additional mount & volumeMount options
- hostAction option now includes varlog, varlibdockercontainers, host-ssh-volume.

27.8.0
- Clusterrole with VMI & pod delete
- hostNetwork & dnsPolicy added to daemonset

27.7.0
- Additional clusterrole for agent.serviceaccount.enable_debug_permission=true
- imagePullPolicy: Always for initContainer

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