module.exports = {
  branches: ['main'],
  tagFormat: "${version}",
  plugins: [
    ['@semantic-release/commit-analyzer', {
      preset: 'conventionalcommits',
    }],
    ['@semantic-release/release-notes-generator', {
      preset: 'conventionalcommits',
    }],
    "@semantic-release/changelog",
    "@semantic-release/gitlab",
    ["@semantic-release/git", {
      assets: [
        'CHANGELOG.md',
      ],
    }],
  ],
};
