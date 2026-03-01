defmodule RevstackWeb.WhoamiLive do
  use RevstackWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     assign(socket,
       page_title: "Kyle Neal | Lead Elixir & Erlang Engineer",
       page_description:
         "Kyle Neal — Lead Distributed Systems Engineer specializing in Erlang/OTP, Elixir, Phoenix LiveView, high-volume event processing, and technical leadership."
     )}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <Layouts.app flash={@flash}>
      <%!-- Hero --%>
      <section class="py-20 sm:py-28">
        <div class="mx-auto max-w-4xl text-center">
          <div class="inline-flex items-center gap-2 rounded-full bg-primary/10 px-4 py-1.5 text-sm font-medium text-primary mb-6">
            <.icon name="hero-user" class="size-4" /> Technical Profile
          </div>
          <h1 class="text-4xl sm:text-5xl lg:text-6xl font-extrabold tracking-tight text-base-content leading-tight">
            Kyle Neal
          </h1>
          <p class="mt-2 text-xl sm:text-2xl text-primary font-semibold">
            Lead Distributed Systems Engineer
          </p>
          <p class="mt-6 text-lg text-base-content/70 max-w-2xl mx-auto leading-relaxed">
            10+ years building revenue-critical distributed systems on the BEAM.
            Erlang/OTP, Elixir, Phoenix LiveView, Cassandra, RabbitMQ, and technical leadership.
          </p>
          <div class="mt-8 flex flex-col sm:flex-row items-center justify-center gap-4">
            <.link
              navigate={~p"/contact"}
              class="btn btn-primary btn-lg gap-2 shadow-lg hover:shadow-xl transition-all duration-300 hover:-translate-y-0.5"
            >
              <.icon name="hero-envelope" class="size-5" /> Contact Me
            </.link>
            <.link
              navigate={~p"/"}
              class="btn btn-outline btn-lg gap-2 transition-all duration-300 hover:-translate-y-0.5"
            >
              <.icon name="hero-building-office-2" class="size-5" /> Visit Revstack
            </.link>
          </div>
          <%!-- Quick links --%>
          <div class="mt-6 flex items-center justify-center gap-6 text-sm text-base-content/50">
            <a
              href="https://github.com/kyle-neal"
              target="_blank"
              rel="noopener noreferrer"
              class="inline-flex items-center gap-1.5 hover:text-base-content transition-colors"
            >
              <svg viewBox="0 0 16 16" class="size-4 fill-current" aria-hidden="true">
                <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z" />
              </svg>
              GitHub
            </a>
            <a
              href="mailto:nealkyle5@gmail.com"
              class="inline-flex items-center gap-1.5 hover:text-base-content transition-colors"
            >
              <.icon name="hero-envelope" class="size-4" />
              nealkyle5@gmail.com
            </a>
          </div>
        </div>
      </section>

      <%!-- At a Glance --%>
      <section class="py-12">
        <div class="mx-auto max-w-5xl">
          <div class="grid grid-cols-2 sm:grid-cols-4 gap-4">
            <.stat_card value="10+" label="Years on the BEAM" />
            <.stat_card value="1.5M+" label="Events processed / day" />
            <.stat_card value="$2.5M+" label="Monthly revenue supported" />
            <.stat_card value="4" label="Engineers managed" />
          </div>
        </div>
      </section>

      <%!-- Professional Summary --%>
      <section class="py-16 sm:py-20">
        <div class="mx-auto max-w-4xl">
          <div class="text-center mb-12">
            <h2 class="text-3xl font-bold text-base-content">Professional Summary</h2>
            <div class="mt-3 w-16 h-1 bg-primary mx-auto rounded-full"></div>
          </div>
          <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
            <.summary_item
              icon="hero-cpu-chip"
              text="Lead Distributed Systems Engineer focused on long-lived, production BEAM systems (Erlang/OTP + Elixir)"
            />
            <.summary_item
              icon="hero-server-stack"
              text="Builds and operates high-throughput, revenue-critical platforms with a strong performance and operability mindset"
            />
            <.summary_item
              icon="hero-circle-stack"
              text="Designs distributed data + messaging architectures across Cassandra/PostgreSQL, RabbitMQ, and search/analytics"
            />
            <.summary_item
              icon="hero-magnifying-glass"
              text="Owns data modeling and query tuning across OLTP and time-series workloads, with deep comfort debugging production paths"
            />
            <.summary_item
              icon="hero-cog-6-tooth"
              text="Reliability-first engineering: OTP fault tolerance, BEAM VM tuning, release strategy, CI/CD automation, and incident response"
            />
            <.summary_item
              icon="hero-computer-desktop"
              text="Full-stack builder with Phoenix/LiveView and Ash; ships internal platforms and tooling from concept to production"
            />
            <.summary_item
              icon="hero-user-group"
              text="Hands-on technical leader: mentors engineers, aligns cross-team delivery, and stays deep in the code"
            />
            <.summary_item
              icon="hero-cloud"
              text="Infrastructure-aware across AWS and Linux, with pragmatic automation experience (Jenkins/Ansible)"
            />
          </div>
        </div>
      </section>

      <%!-- Technical Expertise --%>
      <section class="py-16 sm:py-20 bg-base-200/50 -mx-4 sm:-mx-6 lg:-mx-8 px-4 sm:px-6 lg:px-8 rounded-2xl">
        <div class="mx-auto max-w-5xl">
          <div class="text-center mb-12">
            <h2 class="text-3xl font-bold text-base-content">Technical Expertise</h2>
            <div class="mt-3 w-16 h-1 bg-primary mx-auto rounded-full"></div>
          </div>
          <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <.expertise_group
              title="BEAM & Languages"
              items={[
                "Erlang/OTP (GenServers, Supervisors, clustering)",
                "Elixir",
                "Phoenix + LiveView",
                "Ash Framework",
                "BEAM VM tuning & relup zero-downtime upgrades",
                "REST API design & third-party integrations"
              ]}
            />
            <.expertise_group
              title="Data & Messaging"
              items={[
                "Cassandra (6-node production cluster)",
                "PostgreSQL",
                "Elasticsearch / OpenSearch analytics",
                "Apache Spark (AWS EMR)",
                "RabbitMQ distributed messaging pipelines",
                "Time-series data modeling (1.5M+ events/day)"
              ]}
            />
            <.expertise_group
              title="Infrastructure & DevOps"
              items={[
                "AWS (EC2, RDS, S3)",
                "Linux operations & administration",
                "Ansible automation",
                "CI/CD (Jenkins, Ansible)",
                "Observability & reliability engineering"
              ]}
            />
          </div>
        </div>
      </section>

      <%!-- Professional Experience --%>
      <section class="py-16 sm:py-20">
        <div class="mx-auto max-w-4xl">
          <div class="text-center mb-12">
            <h2 class="text-3xl font-bold text-base-content">Professional Experience</h2>
            <div class="mt-3 w-16 h-1 bg-primary mx-auto rounded-full"></div>
          </div>
          <div class="space-y-8">
            <%!-- VeriAS / Ionik --%>
            <.experience_card
              title="Lead Distributed Systems Engineer"
              company="VeriAS / Ionik"
              period="October 2014 — Present"
              current?={true}
              items={[
                "Lead architect and primary backend engineer for a revenue-critical affiliate network platform written in Erlang, supporting $2.5M+ monthly revenue and processing 1.5M+ events daily (~20+ events/sec average with significantly higher peak throughput).",
                "Design and operate distributed data and messaging architecture including a 6-node Cassandra production cluster, RabbitMQ event pipelines, and Elasticsearch/OpenSearch analytics infrastructure.",
                "Own data modeling and performance strategy across Cassandra and PostgreSQL; routinely debug and optimize complex production queries and high-volume transaction paths.",
                "Responsible for system reliability, BEAM VM tuning, release strategy (relup), CI/CD automation, and production incident debugging across distributed environments.",
                "Architected and built NetAdmin from inception — a full-stack Elixir (Phoenix + Ash) internal infrastructure control platform enabling resource lifecycle orchestration, authorization modeling, operational auditability, and cross-system automation.",
                "Lead and manage 4 engineers (UI + infrastructure) while remaining hands-on across backend, data architecture, and full-stack feature delivery."
              ]}
            />

            <%!-- CGI Federal --%>
            <.experience_card
              title="Application Programmer"
              company="CGI Federal"
              period="December 2013 — October 2014"
              current?={false}
              items={[
                "Performed detailed source code analysis for enterprise Java/ADA systems.",
                "Developed tooling and assisted with build/release workflows for multi-million SLOC applications.",
                "Created smoke and sanity testing processes supporting production releases."
              ]}
            />

            <%!-- Wichita Online --%>
            <.experience_card
              title="In-House Technician"
              company="Wichita Online"
              period="April 2013 — December 2013"
              current?={false}
              items={[
                "Provided in-field network troubleshooting and wireless equipment deployment (MikroTik, Canopy routers)."
              ]}
            />
          </div>
        </div>
      </section>

      <%!-- Education --%>
      <section class="py-16 sm:py-20 bg-base-200/50 -mx-4 sm:-mx-6 lg:-mx-8 px-4 sm:px-6 lg:px-8 rounded-2xl">
        <div class="mx-auto max-w-4xl">
          <div class="text-center mb-12">
            <h2 class="text-3xl font-bold text-base-content">Education</h2>
            <div class="mt-3 w-16 h-1 bg-primary mx-auto rounded-full"></div>
          </div>
          <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
            <.education_card
              degree="B.S. Computer Science"
              school="Cameron University"
              period="2010 — 2014"
              honors="Magna Cum Laude"
            />
            <.education_card
              degree="A.S. Information Technology"
              school="Cameron University"
              period="2014 — 2016"
              honors="Magna Cum Laude"
            />
          </div>
        </div>
      </section>

      <%!-- Leadership --%>
      <section class="py-16 sm:py-20">
        <div class="mx-auto max-w-4xl">
          <div class="text-center mb-12">
            <h2 class="text-3xl font-bold text-base-content">Leadership</h2>
            <div class="mt-3 w-16 h-1 bg-primary mx-auto rounded-full"></div>
          </div>
          <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
            <.leadership_item icon="hero-building-office" text="Architecture ownership across all production systems" />
            <.leadership_item icon="hero-academic-cap" text="Mentoring and managing 4 engineers" />
            <.leadership_item
              icon="hero-arrows-right-left"
              text="Coordinating frontend & infrastructure teams"
            />
            <.leadership_item icon="hero-arrow-trending-up" text="Scaling platforms to $2.5M+ monthly revenue" />
            <.leadership_item icon="hero-calendar" text="Managing delivery timelines and releases" />
            <.leadership_item icon="hero-wrench-screwdriver" text="Hands-on across backend and full-stack delivery" />
          </div>
        </div>
      </section>

      <%!-- Personal Interests --%>
      <section class="py-16 sm:py-20 bg-base-200/50 -mx-4 sm:-mx-6 lg:-mx-8 px-4 sm:px-6 lg:px-8 rounded-2xl">
        <div class="mx-auto max-w-4xl">
          <div class="text-center mb-12">
            <h2 class="text-3xl font-bold text-base-content">When I'm Not Coding</h2>
            <div class="mt-3 w-16 h-1 bg-primary mx-auto rounded-full"></div>
          </div>
          <div class="flex flex-wrap justify-center gap-4">
            <.interest_badge icon="hero-musical-note" label="Playing Guitar" />
            <.interest_badge icon="hero-fire" label="Mountain Biking" />
            <.interest_badge icon="hero-map" label="Hiking" />
            <.interest_badge icon="hero-globe-americas" label="Going on Adventures" />
          </div>
        </div>
      </section>

      <%!-- Closing CTA --%>
      <section class="py-20 sm:py-28">
        <div class="mx-auto max-w-3xl">
          <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
            <div class="group rounded-2xl border border-base-300 bg-base-100 p-8 text-center shadow-sm hover:shadow-md hover:border-primary/30 transition-all duration-300">
              <div class="flex h-14 w-14 items-center justify-center rounded-2xl bg-primary/10 text-primary mx-auto mb-4 group-hover:bg-primary/20 transition-colors">
                <.icon name="hero-briefcase" class="size-7" />
              </div>
              <h3 class="text-lg font-bold text-base-content mb-2">Hiring for a role?</h3>
              <p class="text-sm text-base-content/70 mb-4">I'd love to hear about the opportunity.</p>
              <.link navigate={~p"/contact"} class="btn btn-primary gap-2">
                <.icon name="hero-envelope" class="size-4" /> Contact Me
              </.link>
            </div>
            <div class="group rounded-2xl border border-base-300 bg-base-100 p-8 text-center shadow-sm hover:shadow-md hover:border-primary/30 transition-all duration-300">
              <div class="flex h-14 w-14 items-center justify-center rounded-2xl bg-primary/10 text-primary mx-auto mb-4 group-hover:bg-primary/20 transition-colors">
                <.icon name="hero-rocket-launch" class="size-7" />
              </div>
              <h3 class="text-lg font-bold text-base-content mb-2">Need consulting?</h3>
              <p class="text-sm text-base-content/70 mb-4">
                Let's build something reliable together.
              </p>
              <.link navigate={~p"/"} class="btn btn-primary gap-2">
                <.icon name="hero-building-office-2" class="size-4" /> Visit Revstack
              </.link>
            </div>
          </div>
        </div>
      </section>
    </Layouts.app>
    """
  end

  defp stat_card(assigns) do
    ~H"""
    <div class="rounded-2xl border border-base-300 bg-base-100 p-5 text-center shadow-sm hover:shadow-md hover:border-primary/30 transition-all duration-200">
      <p class="text-2xl sm:text-3xl font-extrabold text-primary">{@value}</p>
      <p class="mt-1 text-xs sm:text-sm text-base-content/60">{@label}</p>
    </div>
    """
  end

  defp summary_item(assigns) do
    ~H"""
    <div class="flex items-start gap-3 rounded-xl border border-base-300 bg-base-100 p-4 shadow-sm">
      <div class="flex h-8 w-8 shrink-0 items-center justify-center rounded-lg bg-primary/10 text-primary">
        <.icon name={@icon} class="size-4" />
      </div>
      <p class="text-sm text-base-content/80 leading-relaxed">{@text}</p>
    </div>
    """
  end

  defp expertise_group(assigns) do
    ~H"""
    <div class="rounded-2xl border border-base-300 bg-base-100 p-6 shadow-sm">
      <h3 class="font-bold text-primary mb-4">{@title}</h3>
      <ul class="space-y-2">
        <li :for={item <- @items} class="flex items-start gap-2 text-sm text-base-content/80">
          <.icon name="hero-check" class="size-4 text-primary shrink-0 mt-0.5" />
          <span>{item}</span>
        </li>
      </ul>
    </div>
    """
  end

  defp experience_card(assigns) do
    ~H"""
    <div class="rounded-2xl border border-base-300 bg-base-100 p-6 sm:p-8 shadow-sm hover:shadow-md transition-shadow duration-200">
      <div class="flex flex-col sm:flex-row sm:items-start sm:justify-between gap-2 mb-5">
        <div>
          <h3 class="text-lg font-bold text-base-content">{@title}</h3>
          <p class="text-primary font-medium">{@company}</p>
        </div>
        <div class="flex items-center gap-2 shrink-0">
          <span class="text-sm text-base-content/60">{@period}</span>
          <span
            :if={@current?}
            class="inline-flex items-center rounded-full bg-success/10 px-2.5 py-0.5 text-xs font-medium text-success"
          >
            Current
          </span>
        </div>
      </div>
      <ul class="space-y-3">
        <li :for={item <- @items} class="flex items-start gap-2.5 text-sm text-base-content/80 leading-relaxed">
          <.icon name="hero-chevron-right" class="size-4 text-primary shrink-0 mt-0.5" />
          <span>{item}</span>
        </li>
      </ul>
    </div>
    """
  end

  defp education_card(assigns) do
    ~H"""
    <div class="rounded-2xl border border-base-300 bg-base-100 p-6 shadow-sm text-center hover:shadow-md hover:border-primary/30 transition-all duration-200">
      <div class="flex h-12 w-12 items-center justify-center rounded-xl bg-primary/10 text-primary mx-auto mb-4">
        <.icon name="hero-academic-cap" class="size-6" />
      </div>
      <h3 class="font-bold text-base-content">{@degree}</h3>
      <p class="text-sm text-base-content/70 mt-1">{@school}</p>
      <p class="text-xs text-base-content/50 mt-1">{@period}</p>
      <span class="inline-flex items-center rounded-full bg-warning/10 px-3 py-1 text-xs font-medium text-warning mt-3">
        {@honors}
      </span>
    </div>
    """
  end

  defp leadership_item(assigns) do
    ~H"""
    <div class="flex items-center gap-3 rounded-xl border border-base-300 bg-base-100 p-4 shadow-sm">
      <div class="flex h-8 w-8 shrink-0 items-center justify-center rounded-lg bg-primary/10 text-primary">
        <.icon name={@icon} class="size-4" />
      </div>
      <span class="text-sm font-medium text-base-content">{@text}</span>
    </div>
    """
  end

  defp interest_badge(assigns) do
    ~H"""
    <div class="flex items-center gap-2 rounded-full border border-base-300 bg-base-100 px-5 py-3 shadow-sm hover:shadow-md hover:border-primary/30 transition-all duration-200">
      <.icon name={@icon} class="size-5 text-primary" />
      <span class="text-sm font-medium text-base-content">{@label}</span>
    </div>
    """
  end
end
