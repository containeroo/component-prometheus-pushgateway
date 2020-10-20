local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.prometheus_pushgateway;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('prometheus-pushgateway', params.namespace);

{
  'prometheus-pushgateway': app,
}
