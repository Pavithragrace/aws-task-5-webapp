# AWS Task‑5 — Starter Repo (CodeCommit • CodeBuild • CodeDeploy • CodePipeline)

This folder contains a minimal static website and the required deployment files:

```
.
├── appspec.yml               # Tells CodeDeploy how to deploy to EC2 (/var/www/html)
├── buildspec.yml             # Lets CodeBuild pass files to the pipeline artifacts
├── index.html                # The demo page
└── scripts/
    ├── install_dependencies.sh
    ├── start_server.sh
    └── stop_server.sh
```

**Usage (high level):**
1. Create a CodeCommit repo (e.g., `web-app`) and push these files.
2. Launch an Amazon Linux 2 EC2 instance with an IAM instance profile for CodeDeploy and a Security Group allowing HTTP (80).
3. Install the CodeDeploy agent on the instance (via User Data or SSH).
4. Create a CodeDeploy Application + Deployment Group that targets your instance by tag.
5. Create a CodeBuild Project that just packages this repo (buildspec already included).
6. Create a CodePipeline (Source: CodeCommit → Build: CodeBuild → Deploy: CodeDeploy).
7. Push a change to `index.html` and watch the pipeline redeploy; then browse the EC2 Public IPv4 DNS.
