<!-- template组件模板：保存标签 -->
<template>
	<!-- 模板要求：必须有一个根标签 -->
	<div class="aboutUs">
		<div class="au_title">公司介绍</div>
		<div class="au_text" v-html="list.aboutus">
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
		},
		props:['list'],
		methods:{
			
		}
		
	}
</script>

<style scoped>
	/* 当前组件专有样式内容 */
	.aboutUs{
		margin-bottom: 2.5rem;
	}
	.aboutUs .au_title{
		font-size: 1.3rem;
		margin-bottom: 0.5rem;
		display: flex;
	}
	.aboutUs .au_text{
		font-size: 0.9rem;
		text-align: left;
	}
</style>
