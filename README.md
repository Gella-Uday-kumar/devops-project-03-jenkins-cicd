# devops-project-03-jenkins-cicd

A Jenkins CI/CD pipeline project for automated deployment.

## Structure

- `app/` — Frontend application files
- `deployment/scripts/` — Shell scripts for deploy, backup, rollback, and health check
- `Jenkinsfile` — Pipeline definition
- `screenshots/` — Project screenshots

## Pipeline Stages

1. Build
2. Deploy
3. Health Check
4. Rollback (on failure)
