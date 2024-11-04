<script setup>
import { useRoute, useRouter } from 'vue-router';
import { useTemplateRef, ref, onMounted } from 'vue';

const route = useRoute()
const router = useRouter()

const home = ref(null)
const resume = ref(null)
const thisSite = ref(null)
const gh = ref(null)

const homeb = ref(null)
const siteb = ref(null)
const resumeb = ref(null)
const ghb = ref(null)

function send_gh () {
  send(gh,ghb)
  window.location.href = 'https://github.com/PaperLightbulb'
}

function send (sel, selb) {
  home.value.style.display = "none"
  resume.value.style.display = "none"
  thisSite.value.style.display = "none"
  gh.value.style.display = "none"

  sel.value.style.display = "block"
  
  homeb.value.style.fontSize = ""
  siteb.value.style.fontSize = ""
  resumeb.value.style.fontSize = ""
  ghb.value.style.fontSize = ""

  selb.value.style.fontSize = "xx-large"
}

function send_home () {
  send(home,homeb)
}

function send_resume () {
  send(resume,resumeb)
}

function send_this_site () {
  send(thisSite,siteb)
}

onMounted(() => {
  send(home,homeb)
})
</script>

<template>
  <div class="verti">
    <h3>Showcase</h3>
    <h1>Arbor Garnett</h1>
    <div class="horiz">
      <button class="lnk" @click="send_home()"><h2 ref="homeb">Home</h2></button>
      <button class="lnk" @click="send_this_site()" ><h2 ref="siteb">This Site</h2></button>
      <button class="lnk" @click="send_gh()" ><h2 ref="ghb">Github</h2></button>
      <button class="lnk" @click="send_resume()" ><h2  ref="resumeb">Resume</h2></button>
    </div>
    <div ref="home">
      <p>Hello, I'm Arbor.<br><br>
        
      I'm excited about<br>
      - Cloud computing<br>
      - DevOps<br>
      - Web Design<br>
      - Containers<br>
      - Scripting<br><br>
      
      Nice to meet you!</p>
    </div>
    <div ref="resume">
    </div>
    <div ref="thisSite" >
      <p>built with<br>
      - k3s Kubernetes (Self Hosted)<br>
      - Docker<br>
      - Vue JS<br>
      - Pinggy.io (Reverse Tunnel)</p>
    </div>
    <div ref="gh"></div>
  </div>
</template>
