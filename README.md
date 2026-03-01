# Revstack

A Phoenix LiveView website for RevenueLink Technologies LLC, featuring a services landing page and a recruiter-focused technical profile.

## Features

### Public Pages
- **Home** (`/`) — Consulting landing page with hero, service overview, and CTAs
- **About** (`/about`) — Company and founder information
- **Services** (`/services`) — Detailed service offerings (Elixir, Phoenix, Erlang/OTP, architecture, infrastructure) with engagement models
- **Contact** (`/contact`) — Lead capture form with validation
- **Estimate** (`/estimate`) — Project estimate request form with project type / budget / timeline enums
- **Kyle Neal Profile** (`/whoami`) — High-end recruiter-facing technical profile with expertise, leadership, and interests
- **Privacy Policy** (`/privacy`) — Data collection and usage policy

### Admin Features
- **Ash Admin** (`/admin`) — Admin dashboard for managing leads and estimate requests (magic link authentication)
- Lead and EstimateRequest resources with status tracking and filtering

### Technical Stack
- **Phoenix 1.8** with LiveView
- **Ash Framework** + **AshPostgres** for domain modeling and data persistence
- **AshAuthentication** with magic link sign-in
- **AshAdmin** for admin dashboard
- **Tailwind CSS v4** + **daisyUI** for styling
- **PostgreSQL** database

### Data Models
- **Lead** — Contact form submissions (name, email, company, message, contact method, phone, status)
- **EstimateRequest** — Project estimate requests (name, email, project type, budget range, timeline, summary, internal size tag)

Both models include honeypot anti-spam, email validation, and role-based authorization (public create, admin read/update/destroy).

## Getting Started

### Prerequisites
- Elixir ~> 1.15
- PostgreSQL 16+

### Setup

1. Install dependencies and set up the database:
```bash
mix setup
```

2. Start the development server:
```bash
mix phx.server
```

3. Visit [`localhost:4000`](http://localhost:4000) in your browser.

The site is fully functional immediately — forms submit to the database, and you can access the Ash Admin dashboard at `/admin` with magic link authentication.

## Development

- **Run tests**: `mix test`
- **Format code**: `mix format`
- **Check for issues**: `mix precommit` (compile with warnings as errors, format check, test)
- **Generate migrations**: `mix ash.codegen <name>`

## Project Structure

```
lib/
  revstack/
    accounts/           # AshAuthentication User resource
    consulting/         # Lead and EstimateRequest resources
    consulting.ex       # Consulting domain
  revstack_web/
    live/               # LiveView pages (home, about, services, etc.)
    components/         # Reusable UI components and layouts
    router.ex           # Route definitions

config/                 # Environment configuration
priv/
  repo/
    migrations/         # Database migrations
```

## Deployment

For production deployment, follow [Phoenix deployment guides](https://hexdocs.pm/phoenix/deployment.html).

Key considerations:
- Set `SECRET_KEY_BASE` environment variable
- Configure `DATABASE_URL` for your PostgreSQL instance
- Set up email for magic link authentication (via Swoosh configuration)
- Configure domain/host in `config/runtime.exs`

## License

All rights reserved — RevenueLink Technologies LLC
