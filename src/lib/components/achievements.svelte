<script lang="ts">
  import resume from "../data/resume.json";
</script>

<section id="awards" class="awards bg-white text-color-main scroll-mt-20">
  <div class="heading h-24 flex items-center justify-center">
    <p class="text-xl text-">AWARDS & ACHIEVEMENTS</p>
  </div>
  <div class="content p-8 text-sm border-2 border-gray-50">
    <div class="container m-auto grid grid-cols-2 gap-y-6">
      {#each resume.achievements as achievement}
        <div
          class="flex flex-col pr-16 items-end border-r-2 border-gray-100 gap-3 relative"
        >
          <div class="absolute disc-icon">&#8226;</div>
          <div class="date font-bold">
            {achievement.date}
          </div>
        </div>
        <div class="flex flex-col ps-16 gap-2" style="width: 30rem;">
          <div class="board">
            {achievement.name.toUpperCase()}
          </div>
          <div class="course">
            {achievement.org}
          </div>
          <div class="stream">
            {achievement?.description}
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
