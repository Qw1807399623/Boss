<template>
	<div class="auheader">
		<div class="au_h_lf"><img src="../assets/zuojiankuohao.png" alt=""></div>
		<div class="au_h_rg">
			<div class="concern">+关注</div>
			<div class="father">
				<img src="../assets/省略号.png">
			</div>
		</div>
	</div>
</template>

<script>
	export default{
		data(){
			return{
				
			}
		}
	}
</script>

<style scoped>
	
	 .auheader {
	  display: flex;
	  justify-content: space-between;
	  align-items: center; }
	   .auheader .au_h_rg {
	    display: flex;
	    justify-content: space-between;
	    align-items: center; }
	     .auheader .au_h_rg .concern {
	      font-size: 0.75rem;
	      border: 1px solid #fff;
	      padding: 0.25rem;
	      border-radius: 0.25rem;
	      margin-right: 1rem; }
</style>
