<!-- template组件模板：保存标签 -->
<template>
	<!-- 模板要求：必须有一个根标签 -->
	<div>
		<div :class="{top:true,top_active:isnot}" >
			公司
		</div>
		
	</div>
</template>

<script>
	export default {
		data(){
			return{
				isnot:''
			}
		},
		mounted(){
		  var y=window.scrollY;
		  if(y>30){
			  this.isnot=true
		  }else{
			  this.isnot=false
		  }
		}
	}
</script>

<style scoped>
	/* 当前组件专有样式内容 */
	.top{
		width:100%;
		text-align: left;
		color: #fff;
		padding: 5px 0PX 5PX 20PX;
		position: fixed;
		font-size: 1.5rem;
		background: #1ed4cb;
	}
	.top_active{
		font-size: 1rem;
	}
	
</style>
