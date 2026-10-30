# LeetCodeChallenges

My LeetCode submissions, synced into this repository by a GitHub Actions workflow.

## Contents

54 problems in `submissions/`: 50 in SQL (MySQL) and 4 in Java.

Each problem has its own folder, named after its LeetCode ID and slug:

```
submissions/
  0176-second-highest-salary/
    README.md       problem statement, as HTML from LeetCode
    solution.sql    submitted solution (solution.java for Java)
```

The number in the folder name is LeetCode's internal question ID, which can differ from the number shown on leetcode.com for recent problems (`2087-confirmation-rate` is problem 1934, for example).

## How the sync works

The workflow in `.github/workflows/sync_leetcode.yml` (named "Sync Leetcode"):

- runs every day at 00:00 UTC (`cron: "0 0 * * *"`), or manually from the Actions tab (`workflow_dispatch`);
- uses [`joshcai/leetcode-sync@v1.7`](https://github.com/joshcai/leetcode-sync) to fetch the submissions and write them to `submissions/`;
- commits each submission separately, with a message starting with `submit:` followed by its runtime and memory, for example `submit: Runtime - 313 ms (98.46%), Memory - 0B (100.00%)`.

It needs two repository secrets, taken from the cookies of a logged-in leetcode.com session:

| Secret | Cookie |
| --- | --- |
| `LEETCODE_CSRF_TOKEN` | `csrftoken` |
| `LEETCODE_SESSION` | `LEETCODE_SESSION` |

The GitHub token is the one Actions provides automatically.

GitHub disables scheduled workflows in public repositories after 60 days without activity. If syncing stops, re-enable the workflow from the Actions tab.

## Other files

- `.gitattributes` makes GitHub Linguist count `.java`, `.sql` and `.sh` files in the language stats.
- `LICENSE`: GNU GPL v3.
