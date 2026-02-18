# CI/CD Starter Lab

A minimal app and CI pipeline for teaching CI/CD.

## What it contains

- `app/` — simple Flask app  
- `tests/` — pytest unit tests  
- `Dockerfile` — builds container image  
- `deploy.sh` — simulates deployment (prints environment + SHA)  
- `.github/workflows/ci-template.yml` — GitHub Actions workflow (unit tests, build, publish artifact, simulated deploy)  
- `requirements.txt`

## Student tasks

1. Fork this repo and create a PR to trigger the pipeline.  
2. Make a change that breaks a test, observe CI blocking, fix it, and get green.  
3. Optionally configure registry secrets and modify the workflow to push the image.

## Run locally

Install dependencies:

```bash
pip install -r requirements.txt
```

Run the app:

```bash
python app/main.py
```

Run tests:

```bash
pytest -q
```

## Notes

- The workflow demonstrates CI steps: test, build, publish artifact, and a simulated deploy.  
- `deploy.sh` only prints environment information and commit SHA to simulate deployment.
## My note
