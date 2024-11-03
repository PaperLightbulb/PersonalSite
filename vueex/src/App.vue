<script setup>
import { RouterLink, RouterView, useRouter, useRoute } from 'vue-router'

const route = useRoute()
const router = useRouter()

console.log(route)

function gh () {
  window.location.href = 'https://github.com/PaperLightbulb'
}
</script>

<template>
  <div class="verti">
    <h3>Showcase</h3>
    <h1>Arbor Garnett</h1>
    <div class="horiz">
      <button class="lnk" @click="router.push('/')"><h2>Home</h2></button>
      <button class="lnk" @click="router.push('/this-site')" ><h2>This Site</h2></button>
      <button class="lnk" @click="gh()" ><h2>Github</h2></button>
      <button class="lnk" @click="router.push('/resume')" ><h2>Resume</h2></button>
    </div>
    <br>
    <RouterView />
  </div>
</template>