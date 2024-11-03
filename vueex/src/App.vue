<script setup>
import { RouterLink, RouterView, useRouter, useRoute } from 'vue-router'

const route = useRoute()
const router = useRouter()

console.log(route)
</script>

<template>
  <div class="verti">
    <h3>linlui</h3>
    <h1>ilo ike</h1>
    <div class="horiz">
      <button class="lnk" @click="router.push('/')"><h2>Home</h2></button>
      <button class="lnk" @click="router.push('/this-site')" ><h2>This Site</h2></button>
    </div>
    <br>
    <RouterView />
  </div>
</template>