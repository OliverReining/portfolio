# Configuration Directory (`config/`)

This directory contains the networking and reverse-proxy configuration files used to serve the portfolio application securely through Tailscale.

## 📂 Files inside `/config`

- **[portfolio.json](file:///home/oliver/projects/portfolio/config/portfolio.json)**: The Tailscale Serve and Funnel configuration schema.

---

## ⚙️ Routing Details (`portfolio.json`)

The setup uses Tailscale's built-in web server capabilities to handle SSL termination, routing, and access control:

1. **TCP Port 443**: HTTPS is enabled (`"HTTPS": true`).
2. **Web Route (`/`)**: Traffic arriving on host `${TS_CERT_DOMAIN}:443` is proxied to `http://127.0.0.1:80` (which is mapped to the Nginx web server running inside the Docker compose network).
3. **Funnel Access (`AllowFunnel`)**: Public traffic from the internet is permitted into this machine specifically for the certificate domain on port 443.

---

## 🤖 AI Agent Tips for Deployment Configuration

- **Environment Variables**: The placeholder `${TS_CERT_DOMAIN}` is dynamically injected or resolved by Tailscale based on the tailnet configuration of the logged-in machine.
- **Docker Integration**: This directory is mounted as a read-only volume inside the `ts-portfolio` container defined in [docker-compose.yml](file:///home/oliver/projects/portfolio/docker-compose.yml):
  ```yaml
  volumes:
    - ./config:/config
  ```
- **State Directory**: Do not edit `tailscale-state/` locally, as it contains internal Tailscale node identities and state directories (git-ignored).
