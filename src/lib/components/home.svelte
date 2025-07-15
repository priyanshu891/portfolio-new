<script>
  import resume from "../data/resume.json";
</script>

<section class="intro scroll-mt-20">
  <!-- <div class="intro-background bg-[url('background.webp')] relative opacity-70 bg-center bg-cover bg-no-repeat bg-fixed flex items-end justify-center"> -->
  <div
    class="intro-background relative opacity-70 bg-center bg-cover bg-no-repeat bg-fixed flex items-end justify-center"
  >
    <div class="grid grid-cols-2 mb-3">
      <div class="image bg-blue-200" style="height: 470px; width:470px">
        <img src="Profile_Photo.png" alt="Profile_Photo" srcset="" />
      </div>
      <div class="about bg-bg-white pt-24 ps-24">
        <div class="name">
          <h1 class="text-3xl font-thin mb-1">{resume.name}</h1>
        </div>
        <div class="designation text-sm font-bold mb-4">
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
        <div class="address text-sm">
          <p class="font-bold">Address:</p>
          <p class="value mb-4">
            {resume.address.split("|")[0]}<br />
            {resume.address.split("|")[1]}
          </p>
        </div>
        <div class="dob text-sm">
          <p class="font-bold">Date of Birth:</p>
          <p class="value mb-4">April 11th, 1997</p>
        </div>
      </div>
    </div>
  </div>
</section>
<div style="height:470px">
  <div
    class="about-desc grid auto-rows-min items-start justify-center bg-bg-white"
  >
    <div class="social bg-color-main" style="height: 75px; min-width:940px">
      <div class="icon-wrapper flex items-center justify-center h-full">
        <a
          class="social-link"
          href="https://linkedin.com/in/priyanshu891"
          target="_blank"
          ><i class="fa-brands fa-linkedin-in text-2xl text-white px-6" /></a
        >
        <i class="fa-brands fa-square-facebook text-2xl text-white px-6" />
        <i class="fa-brands fa-x-twitter text-2xl text-white px-6" />
        <i class="fa-brands fa-instagram text-2xl text-white px-6" />
        <a
          class="social-link"
          href="https://github.com/priyanshu891"
          target="_blank"
          ><i class="fa-brands fa-github text-2xl text-white px-6" /></a
        >
      </div>
    </div>
    <div class="greet text-2xl text-center p-12 mt-12">
      Hello! I'm Priyanshu
    </div>
    <div class="intro-desc">
      <p class="mx-auto text-center" style="width: 525px;">
        As a Front-End Developer working on our research project, I am responsible
        for developing innovative and interactive web applications using
        cutting-edge technologies. I collaborate with researchers, UX/UI
        designers, and other developers to create user-friendly interfaces and
        seamless user experiences. My role involves translating research
        findings into functional applications, ensuring high performance,
        responsiveness, and scalability.
      </p>
    </div>
  </div>
</div>

<style>
  .intro {
    height: 80vh;
    color: #182153;
  }
  .intro-background {
    height: 80vh;
    background-color: #182153f2;
  }

  .about {
    position: static;
    display: grid;
    height: auto;
    width: 100%;
    min-height: auto;
    grid-template-rows: repeat(8, min-content) 1fr;
    grid-template-columns: 100%;
    align-items: center;
    justify-content: center;
  }

  .social-link {
    text-decoration: none;
  }
  /* .about-desc{
    display: grid;
    grid-template-rows: 1fr auto;
    align-items: start;
    justify-content: center;
} */
</style>
