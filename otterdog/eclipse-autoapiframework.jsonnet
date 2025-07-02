local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('automotive.autoapiframework', 'eclipse-autoapiframework') {
  settings+: {
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('application-framework') {
    },
    orgs.newRepo('vss-gui-tool') {
    },
  ],
}
