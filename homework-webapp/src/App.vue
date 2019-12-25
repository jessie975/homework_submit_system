<template>
  <div id="app">
    <el-container>
      <el-header class="header">作业提交系统</el-header>
      <el-main class="body">
        <submit></submit>
      </el-main>
      <el-footer class="footer">
        <p class="footItem">ASP.NET课程设计</p>
        <p class="footItem">计科3班-杨胜洁</p>
      </el-footer>
    </el-container>
  </div>
</template>

<script>
import Submit from './components/Submit.vue'

export default {
  name: 'app',
  components: {
    Submit
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #fff;
}
.header {
  background-color: #35455a;
  line-height: 60px;
  text-align: left;
  font-size: 24px;
  font-weight: 700;
}
.body {
  background-color: #ecf4f9;
}
.footer {
  background-color: #35455a;
  text-align: right;
}
.footItem {
  height: 10px;
  line-height: 10px
}
</style>
