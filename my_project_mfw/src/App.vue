<template>
  <div id="app">
    <!--中间视图-->
    <router-view></router-view>
    <div class="last"></div>
  </div>
</template>

<script>
  export default {
    name: 'app',
    data() {
      return {
       
      }
    },
    components: {

    },
  }
</script>

<style>
  #app {
    background: white;
  }

  div.last {
    height: 50px;
  }
</style>