# Ruby Assignment

## Issue: GitHub Login Authentication Problem

**Description:**
While attempting to push code to GitHub, I encountered an issue where the login process using a password was rejected. As of August 13, 2021, GitHub no longer supports password authentication over HTTPS. Instead, they require the use of a Personal Access Token (PAT) or SSH keys for authentication.

**Steps Taken:**
- Generated a Personal Access Token from GitHub settings.
- Updated the GitHub remote URL to use the PAT for authentication.

**Solution:**
After generating the PAT and updating the remote URL, I successfully pushed my code to the repository.

**Verification:**
- The push was successful, and the code is now visible on GitHub.
