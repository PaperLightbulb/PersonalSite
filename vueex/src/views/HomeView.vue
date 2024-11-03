<script setup>
import { useRoute, useRouter } from 'vue-router';
import { useTemplateRef, ref, onMounted } from 'vue';

const route = useRoute()
const router = useRouter()

const home = ref(null)
const resume = ref(null)
const thisSite = ref(null)

function gh () {
  window.location.href = 'https://github.com/PaperLightbulb'
}

function send_home () {
  console.log(home.value.style)
  home.value.style.display = "block"
  resume.value.style.display = "none"
  thisSite.value.style.display = "none"
}

function send_resume () {
  home.value.style.display = "none"
  resume.value.style.display = "block" 
  thisSite.value.style.display = "none"
}

function send_this_site () {
  home.value.style.display = "none"
  resume.value.style.display = "none" 
  thisSite.value.style.display = "block"
}

onMounted(() => {
  home.value.style.display = "block"
  resume.value.style.display = "none" 
  thisSite.value.style.display = "none"
})
</script>

<template>
  <div class="verti">
    <h3>Showcase</h3>
    <h1>Tim Garnett</h1>
    <div class="horiz">
      <button class="lnk" @click="send_home()"><h2>Home</h2></button>
      <button class="lnk" @click="send_this_site()" ><h2>This Site</h2></button>
      <button class="lnk" @click="gh()" ><h2>Github</h2></button>
      <button class="lnk" @click="send_resume()" ><h2>Resume</h2></button>
    </div>
    <br>
    <div ref="home">
      <h2>Home</h2>
      <p>Hello, I'm Tim.<br><br>
        
      I'm excited about<br>
      - Cloud computing<br>
      - DevOps<br>
      - Web Design<br>
      - Containers<br>
      - Scripting<br><br>
      
      Nice to meet you!</p>
    </div>
    <div ref="resume">
      <h2>Resume</h2>
    </div>
    <div ref="thisSite" >
      <h2>This Site</h2>
      <p>built with<br>
      - k3s Kubernetes (Self Hosted)<br>
      - Docker<br>
      - Vue JS<br>
      - Pinggy.io (Reverse Tunnel)</p>
    </div>
  </div>
</template>
