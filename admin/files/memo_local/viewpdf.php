<?php 
if(!isset($_SESSION['USERID'])){
  redirect(web_root."admin/index.php");
} 
  @$id = $_GET['id'];
    if($id==''){
  redirect("index.php");
}
  $lesson = New memoLocal();
  $res = $lesson->single_lesson($id);

?> 

<div class="page-wrapper col-11 ms-6">
    <div class="page-header d-print-none">
        <div class="container-xl">
            <div class="row g-2 align-items-center">
                <div class="col">
                    <div class="page-pretitle">
                        Local memo
                    </div>
                    <h2 class="page-title" style="display: none">
                        <?php echo $title ; ?>
                    </h2>
                    <h3 style="font-size: 18px;font-weight: bold;">Series No. : <?php echo $res->memo_local_title;?></h3>
                    <h3 style="font-size: 18px;font-weight: bold;">Title :<?php echo $res->memo_local_sender;?></h3>
                </div>
                <div class="col-auto ms-auto d-print-none">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
	<embed src="<?php echo web_root.'admin/files/memo_local/'.$res->memo_local_FileLocation; ?>" type="application/pdf" width="100%" height="1000px" />
</div>