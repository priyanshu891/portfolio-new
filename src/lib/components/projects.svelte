<script lang="ts">
  import resume from "../data/resume.json";
</script>

<section id="project" class="project bg-white text-color-main scroll-mt-20">
  <div class="heading h-24 flex items-center justify-center">
    <p class="text-xl text-">PROJECTS</p>
  </div>
  <div class="content p-8 text-sm border-2 border-gray-50">
    <div class="container m-auto grid grid-cols-2 gap-y-4">
      {#each resume.projects as project}
        <div
          class="flex flex-col pr-16 items-end border-r-2 border-gray-100 gap-3 relative"
        >
          <div class="absolute disc-icon">&#8226;</div>
          <div class="tenure font-bold">
            {project.start} - {project.end}
          </div>
        </div>
        <div class="flex flex-col ps-16 gap-3">
          <div class="project-name">
            {project.name.toUpperCase()}
          </div>
          <div class="project-desc" style="width: 26rem;">
            <ul>
              {#each project.description as description}
                <li class="mb-2">{description}</li>
              {/each}
            </ul>
          </div>
        </div>
      {/each}
    </div>
  </div>
</section>

<style>
  .disc-icon {
    top: -0.6rem;
    right: -0.3rem;
  }
</style>
