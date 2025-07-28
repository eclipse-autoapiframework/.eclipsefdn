local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('automotive.autoapiframework', 'eclipse-autoapiframework') {
  settings+: {
    has_discussions: true,
    discussion_source_repository: 'eclipse-autoapiframework/.github',
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('application-framework') {
    },
    orgs.newRepo('vss-gui-tool') {
    },
  ],
}
