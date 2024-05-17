<?php
if (!isset($_SESSION['USERID'])) {
    redirect(web_root . 'admin/index.php');
} ?>
<div class="page">
    <div class="page-wrapper col-11 ms-6">
        <div class="page-header d-print-none">
            <div class="container-xl">
                <div class="row g-2 align-items-center">
                    <div class="col">
                        <div class="page-pretitle">
                            Forms
                        </div>
                        <h2 class="page-title">
                            Proposal
                        </h2>
                    </div>
                    <div class="col-auto ms-auto d-print-none">
                        <div class="btn-list">
                            <a href="#" class="btn btn-primary d-none d-sm-inline-block" data-bs-toggle="modal"
                                data-bs-target="#modal-simple">
                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                    viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                    stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <path d="M12 5l0 14" />
                                    <path d="M5 12l14 0" />
                                </svg>
                                Add new file
                            </a>
                            <a href="#" class="btn btn-primary d-sm-none btn-icon" data-bs-toggle="modal"
                                data-bs-target="#modal-simple" aria-label="Create new report">
                                <!-- Download SVG icon from http://tabler-icons.io/i/plus -->
                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24"
                                    viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                                    stroke-linecap="round" stroke-linejoin="round">
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
        <form action="controller.php?action=delete" Method="POST">
            <table id="example" class=" datatable-1 table table-bordered table-hover" cellspacing="0"
                style="font-size:12px">

                <thead>
                    <tr>
                        <th>Lesson</th>
                        <th>Question</th>
                        <th>A</th>
                        <th>B</th>
                        <th>C</th>
                        <th>D</th>
                        <th>Answer</th>
                        <th width="10%">Action</th>

                    </tr>
                </thead>
                <tbody>
                    <?php
                    $mydb->setQuery('SELECT * FROM `tbllesson` l, `tblexercise` e WHERE l.`LessonID`=e.`LessonID`');
                    $cur = $mydb->loadResultList();
                    
                    foreach ($cur as $result) {
                        echo '<tr>';
                        echo '<td>' . $result->LessonTitle . '</a></td>';
                        echo '<td>' . $result->Question . '</a></td>';
                        echo '<td>' . $result->ChoiceA . '</a></td>';
                        echo '<td>' . $result->ChoiceB . '</a></td>';
                        echo '<td>' . $result->ChoiceC . '</a></td>';
                        echo '<td>' . $result->ChoiceD . '</a></td>';
                        echo '<td>' . $result->Answer . '</a></td>';
                        echo '<td > <a title="Edit" href="index.php?view=edit&id=' .
                            $result->ExerciseID .
                            '" class="btn btn-primary btn-xs" >Edit</a>
                                        				  					 <a title="Delete" href="controller.php?action=delete&id=' .
                            $result->ExerciseID .
                            '" class="btn btn-danger btn-xs" >Delete</a>
                                        				  					 </td>';
                        echo '</tr>';
                    }
                    ?>
                </tbody>

            </table>


        </form>
    </div>
</div>
