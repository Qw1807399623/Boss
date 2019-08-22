<!-- template组件模板：保存标签 -->
<template>
	<!-- 模板要求：必须有一个根标签 -->
		<!--  -->
		<div :class="{footer:true,footer_beiyong:y}"  @ontouchstart='scroll'  >
			<div class="header"></div>
			<div class="title_left">
				职位
				<sub>3942</sub>
			</div>
			<filtrate></filtrate>
			<ctent></ctent>
		</div>
</template>
<script>
	
	import filtrate from '../boss/filtrate.vue'
	import ctent from '../../views/content.vue'
	export default {
		data(){
			//当前组件共享数据，模块直接读取
			return{
			//默认返回空对象（没数据）
				y:true
			}
		},
		components:{
			'filtrate':filtrate,
			'ctent':ctent
		},
		methods:{
			scroll(){
			 console.log(1111);
			}
		},
		
		
		mounted(){
		  var scrollTop=0,
		  topValue=window.scrollY;  
		  document.onscroll=(e)=>{
				scrollTop = window.scrollY;
				if(scrollTop<=topValue){
					this.y=false;
				}else{
					this.y=true;
				}  
				setTimeout(function(){topValue=scrollTop;},0);
		  }; 
		  function getScrollTop(){
				var scrollTop=0;
				if(document.documentElement&&document.documentElement.scrollTop)
				{
					 scrollTop=document.documentElement.scrollTop;
				}
				else if(document.body)
				{
					 scrollTop=document.body.scrollTop;
				}
				return scrollTop;
		  }
		}
	}
	
</script>

<style scoped>
	/* 当前组件专有样式内容 */
	.footer{
		background: #fff;
/* 		margin-right: -0.75rem;
		margin-left: -0.75rem;
		padding-top: 0.25rem; */
		width: 100%;
		color: #000000;
		position: fixed;
		top: 667px;
		right: 0px;
		border-radius: 1rem;
		transition: 0.1s linear;
	}
	.footer_beiyong{
		top: 615px;
	}
	.footer .header{
		margin: 5px auto;
		width: 50px;
		height: 5px;
		border-radius: 5px;
		background: #ddd;
	}
	.title_left{
		display: flex;
		font-size: 1rem;
		margin-top: 20px;
		margin-left: 10px;
		margin-right: 300px;
		color: #666;
		border-bottom: 1px solid #42B983;
	}
	
</style>
