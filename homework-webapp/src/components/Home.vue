<template>
  <div class="body">
    <router-link to="/submit" class="btn first">
      提交作业
    </router-link>
    <router-link to="/jobList" class="btn next">
      查看作业
    </router-link>
  </div>
</template>

<script>

export default {
  name: 'Home',
  data() {
    return {}
  }
}
</script>

<style scoped>
.btn {
  display: block;
  width: 400px;
  height: 50px;
  line-height: 50px;
  background-color: #fff;
  border-radius: 10px;
  text-decoration: none;
  margin: 0 auto;
  color: #35455a;
}
.first {
  margin-top: 200px;
}
.next {
  margin-top: 30px;
}
</style>
