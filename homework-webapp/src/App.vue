<template>
  <div id="app">
    <el-container>
      <el-header class="header">
        作业提交系统 - {{ title }}
      </el-header>
      <el-main style="padding:0;">
        <submit v-if="url === 'submit'" />
        <job-list v-else-if="url === 'jobList'" />
        <home v-else />
      </el-main>
      <el-footer class="footer">
        <p class="footItem">
          ASP.NET课程设计
        </p>
        <p class="footItem">
          计科3班-杨胜洁
        </p>
      </el-footer>
    </el-container>
  </div>
</template>

<script>
import Submit from './components/Submit.vue'
import JobList from './components/JobList.vue'
import Home from './components/Home.vue'

export default {
  name: 'App',
  components: {
    Submit,
    Home,
    JobList
  },
  data() {
    return {
      title: '首页',
      url: ''
    }
  },
  watch: {
    $route: {
      handler: function(to, from) {
        if (to.path === '/submit') {
          this.title = '提交作业'
          this.url = 'submit'
        } else if (to.path === '/jobList') {
          this.title = '查看作业'
          this.url = 'jobList'
        } else {
          this.title = '首页'
          this.url = 'home'
        }
      },
      immediate: true
    }

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
.el-main{
  min-height: 500px;
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
