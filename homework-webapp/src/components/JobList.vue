<template>
  <div>
    <el-table
      v-loading="loading"
      class="table"
      :data="list"
      stripe="stripe"
      border
    >
      <el-table-column
        prop="jobName"
        label="作业"
        :filters="jobName"
        :filter-method="filterHandler"
      />
      <el-table-column
        prop="grade"
        label="年级"
        :filters="grade"
        :filter-method="filterHandler"
      />
      <el-table-column
        prop="classes"
        label="班级"
        :filters="classes"
        :filter-method="filterHandler"
      />
      <el-table-column
        prop="name"
        label="学生"
      />
      <el-table-column
        prop="sid"
        label="学号"
      />
      <el-table-column
        prop="createTime"
        label="提交时间"
      />
      <el-table-column label="操作">
        <template slot-scope="scope">
          <el-button
            size="mini"
            @click="download(scope.row)"
          >
            下载
          </el-button>
        </template>
      </el-table-column>
    </el-table>
    <div class="block">
      <el-pagination
        background
        layout="prev, pager, next"
        :total="total"
        :current-page="currentPage"
        :page-size="pageSize"
        @prev-click="prevClick"
        @next-click="nextClick"
        @current-change="currentChange"
      />
    </div>
  </div>
</template>

<script>
import { getWorkList } from '../api/api'

export default {
  name: 'JobList',
  data() {
    return {
      currentPage: 1,
      pageSize: 8,
      list: [],
      total: 0,
      stripe: true,
      loading: true,
      jobName: [
        { text: 'ASP.NET课程设计', value: 'ASP.NET课程设计' },
        { text: '2016毕业设计', value: '2016毕业设计' }
      ],
      grade: [
        { text: 2016, value: 2016 },
        { text: 2017, value: 2017 },
        { text: 2018, value: 2018 },
        { text: 2019, value: 2019 }
      ],
      classes: [
        { text: '计科B161班', value: '计科B161班' },
        { text: '计科B162班', value: '计科B162班' },
        { text: '计科B163班', value: '计科B163班' },
        { text: '软件B161班', value: '软件B161班' },
        { text: '软件B162班', value: '软件B162班' },
        { text: '网络B161班', value: '网络B161班' },
        { text: '网络B162班', value: '网络B162班' }
      ]
    }
  },
  mounted() {
    getWorkList(this.currentPage, this.pageSize).then(res => {
      this.list = res.jobs
      this.total = res.pageSum
      this.loading = false
    })
  },
  methods: {
    filterHandler(value, row, column) {
      const property = column['property']
      return row[property] === value
    },
    currentChange(val) {
      getWorkList(val, this.pageSize).then(res => {
        this.list = res.jobs
        this.total = res.pageSum
      })
    },
    prevClick() {
      this.currentPage--
    },
    nextClick() {
      this.currentPage++
    },
    download(e) {
      const a = document.createElement('a')
      a.href = e.downLink
      a.target = '_blank'
      a.click()
    }
  }
}
</script>

<style scoped>
.table {
  width: 100%;
  margin: 10px auto;
}
.selector {
  display: flex;
  justify-content: center;
  margin-top: 10px;
}
.condition .title {
  color: #35455a;
  margin-right: 15px;
}
.condition .option {
  margin-right: 30px;
}
</style>
