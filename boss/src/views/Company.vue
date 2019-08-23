<!-- template组件模板：保存标签 -->
<template>
	<!-- 模板要求：必须有一个根标签 -->
	<div class="emm">
		<auheader :aboutus='aboutus'/>
		<div class="bg" ></div>
		<div class="detail-mask"></div>
		<div class="contanier">
			<div class="bor">
				<audetail/>
			</div>
			<aboutus/>
			<cppic/>
			<cpsite/>
			<cpuccn/>
			<cpbi/>
		<myfooter></myfooter>
		</div>
	</div>
</template>

<script>
	// vue 组件:导出默认对象
	import AuHeader from '../components/aboutus/AuHeader'
	import AuDetail from '../components/aboutus/AuDetail'
	import AboutUs from '../components/aboutus/AboutUs'
	import CpPic from '../components/aboutus/CpPic'
	import CpSite from '../components/aboutus/CpSite'
	import CpUccn from '../components/aboutus/CpUccn'
	import CpBI from '../components/aboutus/CpBI'
	import myfooter from '../components/aboutus/myfooter'
	
	export default {
		data(){
			//当前组件共享数据，模块直接读取
			return{
			//默认返回空对象（没数据）
				aboutus:''
			}
		},
		methods:{
			loadMore(){
				var url='company';
				this.axios.get(url).then(res=>{
					this.aboutus=res.data[0].aboutus;
					console.log(this.aboutus);
				})
			}
		},
		created(){
			this.loadMore();
		},
		components:{
			'auheader':AuHeader,
			'audetail':AuDetail,
			'aboutus':AboutUs,
			'cppic':CpPic,
			'cpsite':CpSite,
			'cpuccn':CpUccn,
			'cpbi':CpBI,
			'myfooter':myfooter
		}
	}
</script>

<style scoped>
	/* 当前组件专有样式内容 */
	
	html::-webkit-scrollbar{
		display: none;
	}
	.bg{
		background: url('../assets/Tencent.jpg') no-repeat center center;
		position: fixed;
		z-index: 1;
		background-size: 250% 100%;
		height: 667px;
		width: 100%;
		opacity: .4;
		filter: blur(20px);
	}
	.detail-mask{
	  width: 375px;
	  /* 遮罩层宽度填满父元素 */
	  height: 667px;
	  /* 高度同上 */
	  background: #000;
	  /* 背景颜色 */
	  position: fixed;
	  /* 绝对定位 */
	  left: 0;
	  /* 左侧顶端 */
	  top: 0;
	  z-index: -1;
	  /* 显示模糊图片底层 */
	}
	.contanier {
	  padding: 0.5rem 0.75rem;
	  font-size: 12px;
	  box-sizing: border-box;
	  color: #fff;
	  position: relative;
	  /* position: absolute; */
	  top: 1.5rem;
	  z-index: 1;
	  }
	  .bor{
		  margin-bottom: 2rem;
	  }
</style>
