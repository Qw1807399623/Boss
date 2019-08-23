<!-- template组件模板：保存标签 -->
<template>
	<!-- 模板要求：必须有一个根标签 -->
	<div>
		<div class="cp_uccn">
			<div class="uccn">公司官网</div>
			<div class="link">
				<div>http://www.tencent.com</div>
				<div><img src="../../assets/向右尖括号.png" alt=""></div>
			</div>
		</div>
	</div>
</template>

<script>
	// vue 组件:导出默认对象
	export default {
		data(){
			//当前组件共享数据，模块直接读取
			return{
			//默认返回空对象（没数据）
				
			}
		}
	}
</script>

<style scoped>
	/* 当前组件专有样式内容 */
	
	.cp_uccn{
			  margin-bottom: 2rem;
	}
	.uccn{
			  font-size: 1.3rem;
			  margin-bottom: 0.5rem;
			  display: flex;
			  justify-content: space-between;
	}
	.cp_uccn .link{
			  display: flex;
			  justify-content: space-between;
	}
</style>
