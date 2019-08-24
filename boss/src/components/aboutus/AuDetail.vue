<!-- template组件模板：保存标签 -->
<template>
	<!-- 模板要求：必须有一个根标签 -->
		<div class="au_detail">
			<div class="au_title">
				<div class="au_dt_lf">
					<div class="au_dt_tit" v-text="list.cname"></div>
					<div class="au_dt_stit" v-text="list.financing+'·'+list.many+'·'+list.tmt"></div>
				</div>
				<div class="au_dt_rg">
					<img :src="`http://127.0.0.1:3000/img/`+list.clogo" alt="" style="width: 40px;height: 40px;">
					<!-- <img :src="'http://127.0.0.1:3000/'+img/txlogo.jpg" alt="" style="width: 40px;height: 40px;"> -->
				</div>
			</div>
			<div class="au_boon">
				<div class="au_b_lf">
					<div class="au_b_lf_p">
					<img src="../../assets/utimeclock.png" alt="">&nbsp;&nbsp;上午09:30-下午06:30
					</div>
					<div>
						<img src="../../assets/rili.png" alt="">双休
						<img src="../../assets/shoutixiang.png" alt="">弹性工作
					</div>
				</div>
				<div class="au_b_rg">
					更多福利<img src="../../assets/向右尖括号.png" alt="">
				</div>
			</div>
			<div class="au_boon1">
				<div style="width: 1400px;">
					<div class="border">
						<img src="../../assets/01.png" alt="">
						<div>五险一金</div>
					</div>
					<div class="border">
						<img src="../../assets/02.png" alt="">
						<div>补充医疗保险</div>
					</div>
					<div class="border">
						<img src="../../assets/03.png" alt="">
						<div>定期体检</div>
					</div>
					<div class="border">
						<img src="../../assets/04.png" alt="">
						<div>年终奖</div>
					</div>
					<div class="border">
						<img src="../../assets/05.png" alt="">
						<div>带薪年假</div>
					</div>
					<div class="border">
						<img src="../../assets/06.png" alt="">
						<div>员工旅游</div>
					</div>
					<div class="border">
						<img src="../../assets/07.png" alt="">
						<div>免费班车</div>
					</div>
					<div class="border">
						<img src="../../assets/08.png" alt="">
						<div>交通补助</div>
					</div>
					<div class="border">
						<img src="../../assets/09.png" alt="">
						<div>包吃</div>
					</div>
					<div class="border">
						<img src="../../assets/10.png" alt="">
						<div>节日福利</div>
					</div>
					<div class="border">
						<img src="../../assets/11.png" alt="">
						<div>无息房贷</div>
					</div>
					
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
		},
		methods:{
			
		},
		props:['list']
		
	}
</script>

<style scoped>
	/* 当前组件专有样式内容 */
	
	 .au_detail {
	  display: flex;
	  justify-content: space-between;
	  align-items: center;
	  flex-wrap: wrap; }
	   .au_detail .au_title {
	    margin: 1.25rem 0;
	    display: flex;
	    justify-content: space-between;
	    align-items: center;
	    width: 100%; }
	     .au_detail .au_title .au_dt_lf .au_dt_tit {
	      display: flex;
	      justify-content: space-between;
	      align-items: center;
	      font-size: 1.7rem; }
	     .au_detail .au_title .au_dt_lf .au_dt_stit {
			  text-align: left;
			padding-top: 5px;
	      font-size: 0.75em;
	      color: #aaaaaa; }
			.au_dt_rg img{
				border-radius: 0.5rem;
			}
	   .au_detail .au_boon {
	    display: flex;
	    justify-content: space-between;
	    align-items: flex-start;
	    width: 100%;
	    margin: 10px 0; }
	     .au_detail .au_boon .au_b_lf > div {
			margin-bottom: 5px;
	      display: flex;
	      justify-content: space-between;
	      align-items: center; }
	     .au_detail .au_boon .au_b_rg {
					display: flex;
					justify-content: space-between;
					align-items: center;
	      color: #aaaaaa; }
	     .au_detail .au_boon1{
			  width: 361px;
			  overflow:auto;
		  }
	     .au_detail .au_boon1::-webkit-scrollbar{
			  display: none;
		  }
	     .au_detail .au_boon1 .border{
				border-radius: 0.5rem;
				margin-right: 0.5rem;
				border:1px solid #555;
				height: 26px;
				padding: 0.75rem;
				float: left;
				display: flex;
				justify-content: space-between;
				align-items: center; }
	     .au_detail .au_boon1 .border >div{
			  float: left;
				width: 47px;
			  text-align: left;
			  margin-left: 0.5rem;
		  }
</style>
