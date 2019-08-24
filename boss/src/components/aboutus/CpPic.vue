<!-- template组件模板：保存标签 -->
<template>
	<!-- 模板要求：必须有一个根标签 -->
	<div>
		<div class="cp_pic" >
			<div class="pic_title">公司照片</div>
			<img :src="'http://127.0.0.1:3000/img/'+list.cpic"  alt="">
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
		props:['list']
	}
</script>

<style scoped>
	/* 当前组件专有样式内容 */
	.cp_pic{
		margin-bottom: 2.5rem;
	}
	.pic_title{
		font-size:1.3rem;
		margin-bottom: 0.5rem;
		display: flex;
	}
	.cp_pic img{
		width: 100%;
		border-radius: 0.5rem;
	}
</style>
