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

<div class="page-wrapper col-11 ms-6">
    <div class="page-header d-print-none">
        <div class="container-xl">
            <div class="row g-2 align-items-center">
                <div class="col">
                    <div class="page-pretitle">
                        Incoming External Communications
                    </div>
                    <h2 class="page-title">
                        <?php echo $title ; ?>
                    </h2>
                    <h3 style="font-size: 18px;font-weight: bold;">Title : <?php echo $res->in_ext_com_title;?> | From : <?php echo $res->in_ext_com_sender;?></h3>
                </div>
                <div class="col-auto ms-auto d-print-none">
                      
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
	<embed src="<?php echo web_root.'admin/files/in-ext-com/'.$res->in_ext_com_FileLocation; ?>" type="application/pdf" width="100%" height="1000px" />
</div>