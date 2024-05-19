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
                    <div class="btn-list">
                      <?php 
                      $mydb->setQuery('SELECT * FROM `in_ext_com`');
                                $cur = $mydb->loadResultList();
                                foreach ($cur as $result) {
                      echo
                        '<a title="Edit" href="index.php?view=edit&id=' . $result->in_ext_com_ID . '" class="btn btn-outline-secondary w-30">Edit</a>
                        <a title="Edit" href="index.php?view=uploadfile&id=' . $result->in_ext_com_ID . '" class="btn btn-outline-warning w-30">Change</a>
                        <a title="Delete" href="controller.php?action=delete&id=' . $result->in_ext_com_ID . '" class="btn btn-outline-danger w-30">Delete</a>';
                                }
                        ?>
                        <a href="#" class="btn btn-primary d-sm-none btn-icon" data-bs-toggle="modal" data-bs-target="#modal-simple" aria-label="Create new report">
                            <!-- Download SVG icon from http://tabler-icons.io/i/plus -->
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path d="M12 5l0 14" />
                                <path d="M5 12l14 0" />
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
	<embed src="<?php echo web_root.'admin/files/in-ext-com/'.$res->in_ext_com_FileLocation; ?>" type="application/pdf" width="100%" height="1000px" />
</div>