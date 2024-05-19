<?php 
if(!isset($_SESSION['USERID'])){
  redirect(web_root."admin/index.php");
} 
  @$id = $_GET['id'];
    if($id==''){
  redirect("index.php");
}
  $lesson = New Lesson();
  $res = $lesson->single_lesson($id);

?> 
<h2><?php echo $title ; ?></h2>
<p style="font-size: 18px;font-weight: bold;">Title : <?php echo $res->in_ext_com_title;?> | Description : <?php echo $res->in_ext_com_desc;?></p>
<div class="container">
	<embed src="<?php echo web_root.'admin/files/in-ext-com/'.$res->in_ext_com_FileLocation; ?>" type="application/pdf" width="100%" height="1000px" />
</div>