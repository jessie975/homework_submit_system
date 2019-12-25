<template>
  <div>
    <div class="selector">
      <div v-for="i in condition" :key="i.type" class="condition">
        <span class="title">{{ i.label }}</span>
        <el-select
          v-model="selectValue"
          placeholder="请选择"
          class="option"
          @visible-change="visibleChange(i.type)"
        >
          <el-option
            v-for="item in optionType"
            :key="item.value"
            :label="item.label"
            :value="item.value"
          />
        </el-select>
      </div>
    </div>

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
      />
      <el-table-column
        prop="grade"
        label="年级"
      />
      <el-table-column
        prop="classes"
        label="班级"
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
      selectValue: [
        { value1: '' },
        { value2: '' },
        { value3: '' }
      ],
      optionType: null,
      condition: [
        { label: '作业', type: 'jobName' },
        { label: '年级', type: 'grade' },
        { label: '班级', type: 'classes' }
      ],
      jobName: [
        { value: 'zy1', label: 'ASP.NET课程设计' },
        { value: 'zy2', label: '2016毕业设计' }
      ],
      grade: [
        { value: '2016', label: '2016' },
        { value: '2017', label: '2017' },
        { value: '2018', label: '2018' },
        { value: '2019', label: '2019' }
      ],
      classes: [
        { value: 'jk1', label: '计科B161' },
        { value: 'jk2', label: '计科B162' },
        { value: 'jk3', label: '计科B163' },
        { value: 'rj1', label: '软件B161' },
        { value: 'rj2', label: '软件B162' },
        { value: 'wl1', label: '网络B161' },
        { value: 'wl2', label: '网络B162' }
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
    visibleChange(e) {
      this.optionType = this[e]
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
