<script lang="ts">
  import resume from "../data/resume.json";
</script>

<section id="contact" class="contact bg-bg-white  text-color-main scroll-mt-20">
  <div class="heading h-24 flex items-center justify-center">
    <p class="text-xl text-">CONTACT ME</p>
  </div>
  <div class="content p-8 text-sm border-2 border-gray-50">
    <div class="container m-auto grid grid-cols-2 gap-y-4">
        <div
          class="flex flex-col pr-16 items-end border-r-2 border-gray-200 gap-3 relative"
        >
            <div class="form">
                <div class="name flex gap-4">
                    <div class="first-name">
                        <label for="fname" class="text-xs px-1 my-2 block">First Name</label>
                        <input id="fname" type="text" class="p-1 outline outline-1">
                    </div>
                    <div class="last-name">
                        <label for="lname" class="text-xs px-1 my-2 block">Last Name</label>
                        <input id="lname" type="text" class="p-1 outline outline-1">
                    </div>
                </div>
                    <div class="email my-4">
                        <label for="email" class="text-xs px-1 my-2 block">Email</label>
                        <input id="email" type="text" class="p-1 w-full outline outline-1">
                    </div>


                    <div class="query">
                        <label for="query" class="text-xs px-1 my-2 block">Type your message here...</label>
                        <textarea id="query" class="p-1 w-full outline outline-1" rows="6"></textarea>
                    </div>
                    <button class="w-full p-3 bg-color-main text-bg-white text-xs outline">Submit</button>

            </div>
        </div>
        <div class="flex flex-col ps-16 gap-3">
            <div class="about">
                <div class="name">
                  <h1 class="text-3xl font-thin mb-1">{resume.name}</h1>
                </div>
                <div class="designation text-sm font-bold mb-5">
                  {resume.experiences[0].designation}
                </div>
                <div class="phone text-sm">
                  <p class="font-bold">Phone:</p>
                  <p class="value mb-4">{resume.phone}</p>
                </div>
                <div class="email text-sm">
                  <p class="font-bold">Email:</p>
                  <p class="value mb-4">{resume.email}</p>
                </div>
              </div>
              <hr class="w-3/6 mb-4 mt-16 h-1">
              <div class="icon-wrapper">
                <i class="fa-brands fa-linkedin-in text-lg pe-3"></i>
                <i class="fa-brands fa-square-facebook text-lg px-3"></i>
                <i class="fa-brands fa-x-twitter text-lg px-3"></i>
                <i class="fa-brands fa-instagram text-lg px-3"></i>
                <i class="fa-brands fa-github text-lg px-3"></i>
            </div>
        </div>

    </div>
  </div>
</section>