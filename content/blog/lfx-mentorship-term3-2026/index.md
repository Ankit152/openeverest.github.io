---
title: "OpenEverest at LFX Mentorship: Term 3, 2026"
date: 2026-09-10T00:00:00
draft: false
toc: false
image:
    url: lfx-mentorship-cover.png
    attribution: 
authors:
  - spron-in
tags:
  - blog
  - mentorship
  - lfx
  - community
  - providers
  - plugins
summary: "Our two LFX Mentorship Term 3 projects now have their mentees. Meet Aditya Pimpalkar (Object Storage provider) and Abdul Moiz (Benchmark plugin), and see what to expect from each."
---

As you might have heard, OpenEverest takes part in the [LFX Mentorship program](https://mentorship.lfx.linuxfoundation.org/#projects_all?q=openeverest). It is a paid program that lets developers contribute to open source projects, learn from mentors, and get paid along the way.

With OpenEverest's transition to a modular architecture, we are focusing community effort on the providers and plugins ecosystems — and Term 3 is no exception. Now that the mentees have been selected, it is time to talk about what to expect.

A big congratulations to Aditya Pimpalkar and Abdul Moiz on being accepted into the program — we're thrilled to have you both on board and can't wait to build with you.

<div class="not-prose grid gap-6 md:grid-cols-2 my-10">
  <div class="rounded-2xl border border-gray-200 bg-white p-6 shadow-sm transition-all duration-300 hover:shadow-lg">
    <span class="text-xs font-semibold uppercase tracking-wide" style="color:#7790DE">Provider</span>
    <h3 class="mt-1 text-xl font-bold text-gray-900">Object Storage provider</h3>
    <p class="mt-1 text-sm text-gray-600">Mentee: <strong>Aditya Pimpalkar</strong></p>
    <div class="mt-4 space-y-3 text-sm leading-relaxed text-gray-700">
      <p>An S3-compatible storage provider built on <strong>SeaweedFS</strong>, so OpenEverest users can deploy object storage right next to their databases.</p>
      <div class="flex flex-wrap gap-2 pt-1">
        <span class="rounded-md bg-gray-100 px-2.5 py-1 text-xs text-gray-700">Go</span>
        <span class="rounded-md bg-gray-100 px-2.5 py-1 text-xs text-gray-700">Kubernetes</span>
        <span class="rounded-md bg-gray-100 px-2.5 py-1 text-xs text-gray-700">S3 API</span>
        <span class="rounded-md bg-gray-100 px-2.5 py-1 text-xs text-gray-700">SeaweedFS</span>
      </div>
      <a href="https://github.com/openeverest/provider-seaweedfs" target="_blank" rel="noopener" class="inline-flex items-center font-semibold" style="color:#7790DE">provider-seaweedfs →</a>
    </div>
  </div>
  <div class="rounded-2xl border border-gray-200 bg-white p-6 shadow-sm transition-all duration-300 hover:shadow-lg">
    <span class="text-xs font-semibold uppercase tracking-wide" style="color:#7790DE">Plugin</span>
    <h3 class="mt-1 text-xl font-bold text-gray-900">Benchmark plugin</h3>
    <p class="mt-1 text-sm text-gray-600">Mentee: <strong>Abdul Moiz</strong></p>
    <div class="mt-4 space-y-3 text-sm leading-relaxed text-gray-700">
      <p>Benchmark your databases without leaving the OpenEverest UI, using community-standard tools with stored, comparable results.</p>
      <div class="flex flex-wrap gap-2 pt-1">
        <span class="rounded-md bg-gray-100 px-2.5 py-1 text-xs text-gray-700">Go</span>
        <span class="rounded-md bg-gray-100 px-2.5 py-1 text-xs text-gray-700">Kubernetes</span>
        <span class="rounded-md bg-gray-100 px-2.5 py-1 text-xs text-gray-700">TypeScript</span>
        <span class="rounded-md bg-gray-100 px-2.5 py-1 text-xs text-gray-700">pgbench</span>
      </div>
      <a href="https://github.com/openeverest/plugin-bench" target="_blank" rel="noopener" class="inline-flex items-center font-semibold" style="color:#7790DE">plugin-bench →</a>
    </div>
  </div>
</div>

## [Object Storage provider](https://mentorship.lfx.linuxfoundation.org/project/f1ac447c-0f12-42d4-bc90-83c9a3bd2648)

For this project, the mentee is well known in our community — [Aditya Pimpalkar](https://mentorship.lfx.linuxfoundation.org/mentee/059bf961-c0ef-459a-9043-824fb5c87989). He built the [provider for CloudNativePG](https://github.com/AdityaPimpalkar/provider-cloudnative-pg), so writing a provider is not a new endeavour for him.

This time the provider is not database-focused. We decided to cover the need for S3-compatible storage in OpenEverest. Since MinIO closed its doors to the community, there are [a bunch](https://solanica.io/tpost/4-minio-alternatives) of open source alternatives.

We looked at all of them and decided to go with SeaweedFS — at least for now. The reason is simple: it has a decent Kubernetes operator and is not as complex as Ceph. The other solutions are great too, and we might add them to OpenEverest at a later stage.

The provider's code lives in [openeverest/provider-seaweedfs](https://github.com/openeverest/provider-seaweedfs). Aditya acts as the main maintainer and will be creating issues. As always, community contributions are very welcome.

The goal for now is to let OpenEverest users deploy an S3-compatible storage cluster. Later on, we will figure out whether we want to add bucket, user, and role management, or leave it to SeaweedFS itself. That might call for a generic plugin. Stay tuned, and keep an eye out for the first provider release.

## [Benchmark plugin](https://mentorship.lfx.linuxfoundation.org/project/4ef073a5-7d7a-43be-a18c-68e9a9b61b5b)

The mentee for this project is also well known in the community — [Abdul Moiz](https://mentorship.lfx.linuxfoundation.org/mentee/0db40d60-7dad-46aa-af77-156c9c536f1f). He has pushed various PRs into the core and adjacent repositories.

This project is more niche, more complex, and a lot of fun. It will let users benchmark their databases without leaving the OpenEverest UI.

We want a single plugin that runs tests across various database technologies using community-known tools (like [pgbench](https://www.postgresql.org/docs/current/pgbench.html) for PostgreSQL). Results will be stored so users can compare them over time or across different configurations.

The architecture is taking shape in the [openeverest/plugin-bench](https://github.com/openeverest/plugin-bench) repository. As with the provider, issues will be created and contributions are welcome.

I'm personally very excited to see what we end up with by the end of this LFX Mentorship term.

## Join the Community

Both projects are built in the open, and you don't need a mentorship slot to take part — issues will be filed in each repository and contributions are very welcome.

* **Contribute:** Jump into [provider-seaweedfs](https://github.com/openeverest/provider-seaweedfs) or [plugin-bench](https://github.com/openeverest/plugin-bench), or browse our [Good First Issues](https://github.com/orgs/openeverest/projects/2).
* **Chat:** Join the conversation in the CNCF Slack (channel: [#openeverest-users](https://cloud-native.slack.com/archives/C09RRGZL2UX)) and drop by our bi-weekly community meetings.
* **Mentorship:** Explore all [OpenEverest LFX projects](https://mentorship.lfx.linuxfoundation.org/#projects_all?q=openeverest) and watch for the next term.
<div style="display:flex;gap:12px;margin-top:24px;flex-wrap:wrap;">
  <a href="https://cloud-native.slack.com/archives/C09RRGZL2UX" target="_blank" rel="noopener noreferrer" style="display:inline-flex;align-items:center;gap:8px;background-color:#4A154B;color:#fff;text-decoration:none;padding:10px 20px;border-radius:6px;font-weight:600;font-size:15px;">
    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 122.8 122.8"><path d="M25.8 77.6c0 7.1-5.8 12.9-12.9 12.9S0 84.7 0 77.6s5.8-12.9 12.9-12.9h12.9v12.9zm6.5 0c0-7.1 5.8-12.9 12.9-12.9s12.9 5.8 12.9 12.9v32.3c0 7.1-5.8 12.9-12.9 12.9s-12.9-5.8-12.9-12.9V77.6z" fill="#e01e5a"/><path d="M45.2 25.8c-7.1 0-12.9-5.8-12.9-12.9S38.1 0 45.2 0s12.9 5.8 12.9 12.9v12.9H45.2zm0 6.5c7.1 0 12.9 5.8 12.9 12.9s-5.8 12.9-12.9 12.9H12.9C5.8 58.1 0 52.3 0 45.2s5.8-12.9 12.9-12.9h32.3z" fill="#36c5f0"/><path d="M97 45.2c0-7.1 5.8-12.9 12.9-12.9s12.9 5.8 12.9 12.9-5.8 12.9-12.9 12.9H97V45.2zm-6.5 0c0 7.1-5.8 12.9-12.9 12.9s-12.9-5.8-12.9-12.9V12.9C64.7 5.8 70.5 0 77.6 0s12.9 5.8 12.9 12.9v32.3z" fill="#2eb67d"/><path d="M77.6 97c7.1 0 12.9 5.8 12.9 12.9s-5.8 12.9-12.9 12.9-12.9-5.8-12.9-12.9V97h12.9zm0-6.5c-7.1 0-12.9-5.8-12.9-12.9s5.8-12.9 12.9-12.9h32.3c7.1 0 12.9 5.8 12.9 12.9s-5.8 12.9-12.9 12.9H77.6z" fill="#ecb22e"/></svg>
    Join Slack
  </a>
  <a href="https://github.com/openeverest/openeverest" target="_blank" rel="noopener noreferrer" style="display:inline-flex;align-items:center;gap:8px;background-color:#24292f;color:#fff;text-decoration:none;padding:10px 20px;border-radius:6px;font-weight:600;font-size:15px;">
    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 16 16" fill="#fff"><path d="M8 .25a7.75 7.75 0 1 0 0 15.5A7.75 7.75 0 0 0 8 .25zm0 1.5a6.25 6.25 0 0 1 1.97 12.18c-.31.06-.42-.13-.42-.3v-1.05c0-.36-.01-1.02-.49-1.4 1.62-.18 2.5-.88 2.5-2.57 0-.57-.2-1.1-.53-1.49.05-.14.23-.7-.05-1.47 0 0-.44-.14-1.44.54a5.02 5.02 0 0 0-2.62 0C5.93 6.6 5.49 6.74 5.49 6.74c-.28.77-.1 1.33-.05 1.47-.33.39-.53.92-.53 1.49 0 1.69.88 2.39 2.5 2.57-.31.27-.43.67-.47 1.04-.42.19-1.5.52-2.16-.62 0 0-.39-.71-1.13-.76 0 0-.72-.01-.05.45 0 0 .48.23.82 1.08 0 0 .43 1.32 2.49.87v.75c0 .17-.11.36-.42.3A6.25 6.25 0 0 1 8 1.75z"/></svg>
    Star the Repo
  </a>
</div>
