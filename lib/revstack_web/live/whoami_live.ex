defmodule RevstackWeb.WhoamiLive do
  use RevstackWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     assign(socket,
       page_title: "Kyle Neal | Lead Elixir & Erlang Engineer",
       page_description:
         "Kyle Neal — Lead Elixir & Erlang Engineer specializing in distributed systems, BEAM architecture, Phoenix LiveView, and technical leadership."
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
            Lead Elixir &amp; Erlang Engineer
          </p>
          <p class="mt-6 text-lg text-base-content/70 max-w-2xl mx-auto leading-relaxed">
            Distributed systems, BEAM architecture, Phoenix LiveView, and technical leadership.
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
              text="Lead Elixir/Erlang Engineer with deep distributed systems experience"
            />
            <.summary_item
              icon="hero-server-stack"
              text="Designs and owns end-to-end architecture for BEAM-based platforms"
            />
            <.summary_item
              icon="hero-cog-6-tooth"
              text="Strong OTP expertise — GenServers, Supervisors, clustering, fault tolerance"
            />
            <.summary_item
              icon="hero-computer-desktop"
              text="Fullstack Phoenix LiveView development including Ash Framework"
            />
            <.summary_item
              icon="hero-cloud"
              text="Infrastructure-aware engineer — AWS, CI/CD, Ansible, Linux"
            />
            <.summary_item
              icon="hero-user-group"
              text="Leads and mentors UI and backend engineering teams"
            />
            <.summary_item
              icon="hero-shield-check"
              text="Production-focused mindset — reliability, observability, uptime"
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
          <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
            <.expertise_group
              title="BEAM"
              items={[
                "Erlang/OTP",
                "Elixir",
                "Phoenix + LiveView",
                "Ash Framework",
                "Concurrency & fault tolerance"
              ]}
            />
            <.expertise_group
              title="Data"
              items={[
                "PostgreSQL",
                "Cassandra",
                "OpenSearch / Elasticsearch"
              ]}
            />
            <.expertise_group
              title="Messaging"
              items={[
                "RabbitMQ"
              ]}
            />
            <.expertise_group
              title="Infrastructure"
              items={[
                "AWS",
                "Linux",
                "Ansible",
                "CI/CD",
                "Observability systems"
              ]}
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
            <.leadership_item icon="hero-building-office" text="Architecture ownership" />
            <.leadership_item icon="hero-academic-cap" text="Mentoring engineers" />
            <.leadership_item
              icon="hero-arrows-right-left"
              text="Coordinating frontend & backend teams"
            />
            <.leadership_item icon="hero-arrow-trending-up" text="Scaling internal platforms" />
            <.leadership_item icon="hero-calendar" text="Managing delivery timelines" />
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
        <li :for={item <- @items} class="flex items-center gap-2 text-sm text-base-content/80">
          <.icon name="hero-check" class="size-4 text-primary shrink-0" />
          <span>{item}</span>
        </li>
      </ul>
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
