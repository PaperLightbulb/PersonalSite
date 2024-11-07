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

function send_gh () {
  send(gh,ghb)
  window.location.href = 'https://github.com/PaperLightbulb'
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
    <div class="content" ref="home">
      <p>I'm a computer science student with a passion for containerization. I built my own Kuberenetes cluster and host both pre made services and my own apps. My interest in Dev Ops has grown with my introduction to cloud computing and web backend. I have experience with Amazon Web Services such as EC2, Lambda, and S3. I am excited to provide a valuable perspective to the team.</p>
    </div>
    <div class="content" ref="resume">
      <h2>Education</h2><br>
<h3>Projects</h3><p>
Personal Kubernetes Cluster<br>
- Built and serviced a k3s Kubernetes cluster.<br>
- Hosted on 4 machines.<br>
This Site<br>
- Hosted on my Kubernetes cluster using a reverse tunnel.<br>
- Utilizes bash scripting for easy deployment.<br>
toki ike<br>
- Wrote a toy object oriented programming language including parser and lexer.<br>
12-hour Hackathon challenge<br>
- Engineered an internet-connected baseball scoreboard and game state indicator.<br></p>
<h3>GPA</h3>
<p>- 3.5<br></p>
<h3>ACT</h3>
<p>
- Composite 32<br>
- English 35<br></p>
<h2>Awards</h2>
<p>
National Merit Commended Student<br>
- Top 2% of scorers in the country on the PSAT NMSQT<br>
Outstanding Student in Language Arts Award (2022)<br>
- Performed in English at the top of my school.<br></p>
<h2>Organizations</h2>
<p>
Scouts BSA (formerly Boy Scouts of America)<br>
- Led and organized Scouts from the postion of Senior Patrol Leader.<br>
- Completed all ranks prior to Eagle Scout.<br>
Safe City Food Shelf<br>
- Helped hundreds of individuals and families have access to timely, dignified food options.</p>
    </div>
    <div class="content" ref="thisSite" >
      <p>This site is hosted on my personal k3s Kubernetes cluster. Kubernetes facinates me beacuse of its continuous uptime features and ability to load balance across machines. My k3s cluster has 4 machines, ranging from a Raspberry Pie 2 to a beefy gaming PC. I created a build script in order to make updating this website easy and painless. I used a reverse tunnelling service to host this website on the public internet due to not having access to a public IP address or port forwarding. I built with Vue JS, which interested me because of its abstraction of the virtual DOM, and because of my past experience with it.</p>
    </div>
    <div class="content" ref="gh"></div>
  </div>
</template>
