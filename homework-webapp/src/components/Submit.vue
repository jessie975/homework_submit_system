<template>
  <div class="body">
    <el-form
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="100px"
      class="demo-ruleForm"
    >
      <el-form-item label="作业" prop="task">
        <el-select v-model="ruleForm.task" placeholder="请选择作业" class="selector">
          <el-option label="ASP.NET课程设计" value="asp" />
          <el-option label="2016毕业设计" value="taskEnd" />
        </el-select>
      </el-form-item>

      <el-form-item label="姓名" prop="name">
        <el-input v-model="ruleForm.name" placeholder="请输入姓名" />
      </el-form-item>

      <el-form-item label="学号" prop="sid">
        <el-input v-model="ruleForm.sid" placeholder="请输入学号" />
      </el-form-item>

      <el-form-item label="年级" prop="grade">
        <el-select v-model="ruleForm.grade" placeholder="请选择年级" class="selector">
          <el-option label="2016" value="2016" />
          <el-option label="2017" value="2017" />
          <el-option label="2018" value="2018" />
          <el-option label="2019" value="2019" />
        </el-select>
      </el-form-item>

      <el-form-item label="班级" prop="classes">
        <el-input v-model="ruleForm.classes" placeholder="例如：计科B163班" />
      </el-form-item>

      <el-form-item label="上传作业附件">
        <el-upload
          class="upload"
          name="Files"
          drag
          action="http://127.0.0.1:5000/api/upload"
          :on-success="uploadSuccess"
        >
          <i class="el-icon-upload" />
          <div class="el-upload__text">
            将文件拖到此处，或<em>点击上传</em>
          </div>
        </el-upload>
      </el-form-item>

      <el-form-item>
        <el-button type="primary" class="submit" @click="submitForm('ruleForm')">
          确认提交
        </el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import { submit } from '../api/api'
// import router from 'vue-router'

export default {
  name: 'Submit',
  data() {
    return {
      ruleForm: {
        task: 'ASP.NET课程设计',
        name: '杨胜洁',
        sid: '201607014332',
        grade: 2016,
        classes: '计科B163班',
        files: ''
      },
      rules: {
        task: [
          { required: true, message: '请选择作业', trigger: 'change' }
        ],
        name: [
          { required: true, message: '请输入学生姓名', trigger: 'blur' },
          { min: 2, max: 5, message: '长度在 2 到 5 个字符', trigger: 'blur' }
        ],
        sid: [
          { required: true, message: '请输入学号', trigger: 'blur' }
        ],
        grade: [
          { required: true, message: '请选择年级', trigger: 'change' }
        ],
        classes: [
          { required: true, message: '请输入班级', trigger: 'blur' }
        ]
      }
    }
  },
  methods: {
    uploadSuccess(e) {
      this.$message({
        message: '上传成功~',
        type: 'success'
      })
      this.ruleForm.files = e.urls
    },
    upload() {
      this.$message.error('上传失败，请稍后重试~')
    },
    submitForm(formName) {
      const { task, name, sid, grade, classes, files } = this.ruleForm
      if (files.length === 0) {
        this.$message({
          message: '请上传作业附件',
          type: 'warning'
        })
      } else {
        this.$refs[formName].validate(valid => {
          if (valid) {
            submit({
              jobName: task,
              name,
              sid,
              grade,
              classes,
              downLink: files
            }).then(
              this.$message({
                message: '提交成功~',
                type: 'success'
              }),
              this.$router.push('home')
            )
          } else {
            return false
          }
        })
      }
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.body {
  width: 60%;
  margin: 20px auto;
  padding: 20px;
}
.selector {
  width: 100%;
}
.submit {
  background-color: #85a2c7;
  border: 1px solid #85a2c7;
}
</style>
