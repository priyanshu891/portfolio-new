<script lang="ts">
  import resume from "../data/resume.json";
</script>

<section id="experience" class="experience bg-white text-color-main scroll-mt-20">
  <div
    class="heading h-24 flex items-center justify-center"
  >
    <p class="text-xl text-">EXPERIENCE</p>
  </div>
  <div class="content p-8 text-sm border-2 border-gray-50">
    <div class="container m-auto grid grid-cols-2 gap-y-4">
      {#each resume.experiences as experience}
        <div
          class="flex flex-col pr-16 items-end border-r-2 border-gray-100 gap-3 relative"
        >
        <div class="absolute disc-icon">
            &#8226;
        </div>
          <div class="tenure font-bold">
            {experience.start} - {experience.end}
          </div>
          <div class="designation">{experience.designation}</div>
        </div>
        <div class="flex flex-col ps-16 gap-3">
          <div class="company-name">
            {experience.organisation.toUpperCase()}
          </div>
          <div class="experience-desc" style="width: 26rem;">
            <ul>
              {#each experience.description as description}
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
    .disc-icon{
       top: -0.6rem;
       right: -0.3rem;
    }
</style>