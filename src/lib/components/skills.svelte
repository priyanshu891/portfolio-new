<script lang="ts">
  import resume from "../data/resume.json";
</script>

<section id="skills" class="skills bg-white text-color-main scroll-mt-20">
  <div class="heading h-24 flex items-center justify-center">
    <p class="text-xl text-">SKILLS</p>
  </div>
  <div class="content p-8 text-sm border-2 border-gray-50">
    <div class="container m-auto grid grid-cols-2 gap-x-10 gap-y-6 items-end w-3/5">
      {#each resume.skills as skill}
        <div>
          <dl class="px-8">
            <dt class="text-sm font-medium text-gray-500 dark:text-gray-400">
              {skill.name}
            </dt>
            <dd class="flex items-center mb-3">
              <div
                class="w-full bg-gray-200 rounded h-2.5 dark:bg-gray-700 mr-2"
              >
                <div
                  class="bg-blue-600 h-2.5 rounded dark:bg-blue-500"
                  style="width: {(skill.rating / 5) * 100}%"
                />
              </div>
              <!-- <span class="text-sm font-medium text-gray-500 dark:text-gray-400"
                >{skill.rating}</span
              > -->
            </dd>
          </dl>
        </div>
      {/each}
    </div>
  </div>
</section>
