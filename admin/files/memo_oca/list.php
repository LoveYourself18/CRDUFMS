<?php
if (!isset($_SESSION['USERID'])) {
    redirect(web_root . 'admin/index.php');
} ?>


<div class="inc-ext-com page-wrapper col-11 ms-6">
    <div class="page-header d-print-none">
        <div class="container-xl">
            <div class="row g-2 align-items-center">
                <div class="col">
                    <div class="page-pretitle">
                        Memo
                    </div>
                    <h2 class="page-title">
                        Office of the Campus Administrator
                    </h2>
                </div>
                <div class="col-auto ms-auto d-print-none">
                    <div class="btn-list">
                        <a href="#" class="btn btn-primary btnmodal d-none d-sm-inline-block" data-bs-toggle="modal" data-bs-target="#modal-simple">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path d="M12 5l0 14" />
                                <path d="M5 12l14 0" />
                            </svg>
                            Add new file
                        </a>
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
    <div class="page-body">
        <div class="col">
            <div class="card">
                <form action="controller.php?action=delete" Method="POST">
                    <div class="table-responsive">
                        <table id="example" class="datatable-1 table table-striped table-bordered table-hover table-responsive" style="font-size:12px" cellspacing="0">
                            <thead>
                                <tr>
                                    <th width="40%">Memo Series No.</th>
                                    <th width="33%">Title</th>
                                    <th width="12%">Date Received</th>
                                    <th width="15%">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $mydb->setQuery('SELECT * FROM `memo_oca`');
                                $cur = $mydb->loadResultList();
                                foreach ($cur as $result) {
                                    echo '<tr>';
                                    echo '<td>' . $result->memo_oca_title . '</td>';
                                    echo '<td>' . $result->memo_oca_sender . '</td>';
                                    echo '<td>' . $result->memo_oca_dateReceived . '</td>';
                                    $view = 'index.php?view=viewpdf&id=' . $result->memo_oca_ID;
                                    echo '<td class="text d-flex gap-2">
            <a title="View" href="'.$view.'" class="btn btn-outline-success w-30">View</a>
            <a title="Edit" href="index.php?view=edit&id=' . $result->memo_oca_ID . '" class="btn btn-outline-secondary w-30">Edit</a>
            <a title="Edit" href="index.php?view=uploadfile&id=' . $result->memo_oca_ID . '" class="btn btn-outline-warning w-30">Change</a>
            <a title="Delete" href="controller.php?action=delete&id=' . $result->memo_oca_ID . '" class="btn btn-outline-danger w-30">Delete</a>
        </td>';
                                    echo '</tr>';
                                }
                                ?>
                            </tbody>

                        </table>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal modal-blur fade" id="modal-simple" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="form">
        <div class="modal-content">
            <div class="modal-header">
                <div class="modal-status bg-success"></div>
                <h5 class="modal-title">Add new file</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form class="modal-body" action="controller.php?action=add" method="POST" enctype="multipart/form-data">
                <div class="row mb-3 align-items-end">
                    <div class="col">
                        <label class="control-label" for="LessonChapter">Series No.</label>
                        <input name="deptid" type="hidden" value="">
                        <input class="form-control input-sm" id="LessonChapter" name="LessonChapter" placeholder="Series No." type="text" value="">
                    </div>
                </div>
                <div class="row mb-3 align-items-end">
                    <div class="col">
                        <label class="control-label" for="LessonTitle">Title</label>
                        <input name="deptid" type="hidden" value="">
                        <input class="form-control input-sm" id="LessonTitle" name="LessonTitle" placeholder="Title" type="text" value="">
                    </div>
                </div>
                <div class="mb-3">
                    <label for="date">Date Received:</label>
        <input type="date" id="date" name="date" required>
                </div>
                <div class="mb-3">
                    <label class="control-label" align="right" for="file">Upload File:</label>
                    <input class="form-control" type="file" name="file" />
                </div>
                <div class="modal-footer">
                    <label class="col-md-2 control-label" for="idno"></label>
                    <button type="button" class="btn me-auto" data-bs-dismiss="modal">Close</button>
                    <button class="btn btn-primary" name="save" type="submit">
                        <span class="fa fa-save fw-fa">
                        </span>
                        Save
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>