<script lang="ts">
  import resume from "../data/resume.json";
</script>

<section id="education" class="education bg-white text-color-main scroll-mt-20">
  <div class="heading h-24 flex items-center justify-center">
    <p class="text-xl text-">EDUCATION</p>
  </div>
  <div class="content p-8 text-sm border-2 border-gray-50">
    <div class="container m-auto grid grid-cols-2 gap-y-6">
      {#each resume.educations as education}
        <div
          class="flex flex-col pr-16 items-end border-r-2 border-gray-100 gap-3 relative"
        >
          <div class="absolute disc-icon">&#8226;</div>
          <div class="tenure font-bold">
            {education.start}
            {education.start && education.end ? "-" : ""}
            {education.end}
          </div>
          <div class="degree">{education.degree}</div>
        </div>
        <div class="flex flex-col ps-16 gap-2">
          <div class="board">
            {education.board.toUpperCase()}
          </div>
          <div class="course">
            {education.course}
          </div>
          <div class="stream">
            {education.stream}
          </div>
          <!-- <div class="education-desc" style="width: 26rem;">
            <ul>
              {#each education.description as description}
                <li class="mb-2">{description}</li>
              {/each}
            </ul>
          </div> -->
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
