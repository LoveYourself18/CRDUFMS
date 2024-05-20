<?php
require_once("../include/initialize.php");
if (!isset($_SESSION['USERID'])) {
	redirect(web_root . "../index.php");
}

$content = 'home.php';
$view = (isset($_GET['page']) && $_GET['page'] != '') ? $_GET['page'] : '';
// switch ($view) {
// 	default:
// 		$content = 'home.php';
// }
?>

<!doctype html>
<!--
* Tabler - Premium and Open Source dashboard template with responsive and high quality UI.
* @version 1.0.0-beta19
* @link https://tabler.io
* Copyright 2018-2023 The Tabler Authors
* Copyright 2018-2023 codecalm.net Paweł Kuna
* Licensed under MIT (https://github.com/tabler/tabler/blob/master/LICENSE)
-->
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<title>CRDUFMS</title>
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/css/lightbox.min.css">
	<link type="text/css" href="<?php echo web_root; ?>css/dataTables.bootstrap.css" rel="stylesheet">
	<link type="text/css" href="<?php echo web_root; ?>e_admin\css\theme.css" rel="stylesheet">

	<link type="text/css" href="./dist/css/tabler.min.css?1684106062" rel="stylesheet" />
	<link type="text/css" href="../dist/css/tabler-flags.min.css?1684106062" rel="stylesheet" />
	<link type="text/css" href="../dist/css/tabler-payments.min.css?1684106062" rel="stylesheet" />
	<link type="text/css" href="../dist/css/tabler-vendors.min.css?1684106062" rel="stylesheet" />
	<link type="text/css" href="../dist/css/demo.min.css?1684106062" rel="stylesheet" />
	<style>
		@import url('https://rsms.me/inter/inter.css');

		:root {
			--tblr-font-sans-serif: 'Inter Var', -apple-system, BlinkMacSystemFont, San Francisco, Segoe UI, Roboto, Helvetica Neue, sans-serif;
		}

		body {
			font-feature-settings: "cv03", "cv04", "cv11";
		}
	</style>
	<link rel="stylesheet" href="../css/styles.css">
</head>

<body class=" layout-boxed">
	<script src="./dist/js/demo-theme.min.js?1684106062"></script>
	<div class="page">
		<!-- Navbar -->
		<header class="navbar navbar-expand-md d-print-none">
			<div class="container-xl">
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu" aria-controls="navbar-menu" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<h1 class="navbar-brand navbar-brand-autodark d-none-navbar-horizontal pe-0 pe-md-3">
					<a href=".">
						<img src="./static/fmslogo.png" width="32" height="32" alt="CBSUA" class="navbar-brand-image">
					</a>
				</h1>
				<div>
					<h1 class="navbar-brand navbar-brand-autodark d-none-navbar-horizontal pe-0 pe-md-3">
						Research and Development Unit
						</a>
					</h1>
				</div>
				<div class="navbar-nav flex-row order-md-last">
					<h1 class="navbar-brand navbar-brand-autodark d-none-navbar-horizontal pe-0 pe-md-3">
							<img src="./static/fmslogo2.png" width="110" height="32" alt="Tabler" class="navbar-brand-image">
					</h1>
				</div>
			</div>
		</header>
		<header class="navbar-expand-md ">
			<div class="collapse navbar-collapse" id="navbar-menu">
				<div class="navbar">
					<div class="container-xl">
						<ul class="navbar-nav">
							<li class="nav-item">
								<a class="nav-link" href="<?php echo web_root; ?>/admin">
									<span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/home -->
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-file-stack">
											<path stroke="none" d="M0 0h24v24H0z" fill="none" />
											<path d="M14 3v4a1 1 0 0 0 1 1h4" />
											<path d="M5 12v-7a2 2 0 0 1 2 -2h7l5 5v4" />
											<path d="M5 21h14" />
											<path d="M5 18h14" />
											<path d="M5 15h14" />
										</svg>
									</span>
									<span class="nav-link-title">
										All files
									</span>
								</a>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown" data-bs-auto-close="outside" role="button" aria-expanded="false">
									<span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/package -->
										<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
											<path stroke="none" d="M0 0h24v24H0z" fill="none" />
											<path d="M12 3l8 4.5l0 9l-8 4.5l-8 -4.5l0 -9l8 -4.5" />
											<path d="M12 12l8 -4.5" />
											<path d="M12 12l0 9" />
											<path d="M12 12l-8 -4.5" />
											<path d="M16 5.25l-8 4.5" />
										</svg>
									</span>
									<span class="nav-link-title">
										General files
									</span>
								</a>
								<div class="dropdown-menu">
									<div class="dropdown-menu-columns">
										<div class="dropdown-menu-column">
											<div class="dropend">
												<a class="dropdown-item dropdown-toggle" href="#sidebar-cards" data-bs-toggle="dropdown" data-bs-auto-close="outside" role="button" aria-expanded="false">
													Communication
												</a>
												<div class="dropdown-menu">
													<a href="<?php echo web_root; ?>admin/files/in-ext-com/index.php" class="dropdown-item">
														Incoming External
													</a>
													<a href="<?php echo web_root; ?>admin/files/in-int-com/index.php" class="dropdown-item">
														Incoming Internal
													</a>
													<a href="<?php echo web_root; ?>admin/files/out-ext-com/index.php" class="dropdown-item">
														Ougoing External
													</a>
													<a href="<?php echo web_root; ?>admin/files/out-int-com/index.php" class="dropdown-item">
														Ougoing Internal
													</a>
												</div>
											</div>
											<div class="dropend">
												<a class="dropdown-item dropdown-toggle" href="#sidebar-cards" data-bs-toggle="dropdown" data-bs-auto-close="outside" role="button" aria-expanded="false">
													MEMO
												</a>
												<div class="dropdown-menu">
													<a href="<?php echo web_root; ?>admin/files/memo_op/index.php" class="dropdown-item">
														OP
													</a>
													<a href="<?php echo web_root; ?>admin/files/memo_ovpri/index.php" class="dropdown-item">
														OVPRI
													</a>
													<a href="<?php echo web_root; ?>admin/files/memo_oca/index.php" class="dropdown-item">
														OCA
													</a>
													<a href="<?php echo web_root; ?>admin/files/memo_local/index.php" class="dropdown-item">
														Local
													</a>
													<a href="<?php echo web_root; ?>admin/files/memo_others/index.php" class="dropdown-item">
														Others
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown" data-bs-auto-close="outside" role="button" aria-expanded="false">
									<span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/checkbox -->
										<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
											<path stroke="none" d="M0 0h24v24H0z" fill="none" />
											<path d="M9 11l3 3l8 -8" />
											<path d="M20 12v6a2 2 0 0 1 -2 2h-12a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2h9" />
										</svg>
									</span>
									<span class="nav-link-title">
										Forms
									</span>
								</a>
								<div class="dropdown-menu">
									<div class="dropdown-menu-columns">
										<div class="dropdown-menu-column">
											<a class="dropdown-item" href="<?php echo web_root; ?>admin/files/form-proposal/index.php">
												Proposal
											</a>
											<a class="dropdown-item" href="./pricing.html">
												Monitoring
											</a>
											<a class="dropdown-item" href="./pricing-table.html">
												Completed
											</a>
										</div>
									</div>
								</div>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#navbar-extra" data-bs-toggle="dropdown" data-bs-auto-close="outside" role="button" aria-expanded="false">
									<span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/star -->
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-file-search">
											<path stroke="none" d="M0 0h24v24H0z" fill="none" />
											<path d="M14 3v4a1 1 0 0 0 1 1h4" />
											<path d="M12 21h-5a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2h7l5 5v4.5" />
											<path d="M16.5 17.5m-2.5 0a2.5 2.5 0 1 0 5 0a2.5 2.5 0 1 0 -5 0" />
											<path d="M18.5 19.5l2.5 2.5" />
										</svg>
									</span>
									<span class="nav-link-title">
										Research files
									</span>
								</a>
								<div class="dropdown-menu">
									<div class="dropdown-menu-columns">
										<div class="dropdown-menu-column">
											<a class="dropdown-item" href="<?php echo web_root; ?>admin/files/rf-proposal/index.php">
												Proposal
											</a>
											<a class="dropdown-item" href="./pricing.html">
												Ongoing
											</a>
											<a class="dropdown-item" href="./pricing-table.html">
												Completed
											</a>
											<a class="dropdown-item" href="./pricing-table.html">
												Published
											</a>
											<a class="dropdown-item" href="./pricing-table.html">
												Citation
											</a>
											<a class="dropdown-item" href="./pricing-table.html">
												Utilization
											</a>
										</div>
									</div>
								</div>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="<?php echo web_root; ?>admin/files/reports/index.php">
									<span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/ghost -->
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-report">
											<path stroke="none" d="M0 0h24v24H0z" fill="none" />
											<path d="M8 5h-2a2 2 0 0 0 -2 2v12a2 2 0 0 0 2 2h5.697" />
											<path d="M18 14v4h4" />
											<path d="M18 11v-4a2 2 0 0 0 -2 -2h-2" />
											<path d="M8 3m0 2a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v0a2 2 0 0 1 -2 2h-2a2 2 0 0 1 -2 -2z" />
											<path d="M18 18m-4 0a4 4 0 1 0 8 0a4 4 0 1 0 -8 0" />
											<path d="M8 11h4" />
											<path d="M8 15h3" />
										</svg>
									</span>
									<span class="nav-link-title">
										Reports
									</span>
								</a>
							</li>
							<li>
						</ul>
						<div class="col-auto ms-auto d-print-none">
							<a class="nav-link" href="<?php echo web_root; ?>admin/logout.php">
								<span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/ghost -->
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon icon-tabler icons-tabler-outline icon-tabler-logout">
										<path stroke="none" d="M0 0h24v24H0z" fill="none" />
										<path d="M14 8v-2a2 2 0 0 0 -2 -2h-7a2 2 0 0 0 -2 2v12a2 2 0 0 0 2 2h7a2 2 0 0 0 2 -2v-2" />
										<path d="M9 12h12l-3 -3" />
										<path d="M18 15l3 -3" />
									</svg>
								</span>
								<span class="nav-link-title">
									Logout
								</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</header>
		<div class="modal modal-blur fade" id="modal-report" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">New report</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="mb-3">
							<label class="form-label">Name</label>
							<input type="text" class="form-control" name="example-text-input" placeholder="Your report name">
						</div>
						<label class="form-label">Report type</label>
						<div class="form-selectgroup-boxes row mb-3">
							<div class="col-lg-6">
								<label class="form-selectgroup-item">
									<input type="radio" name="report-type" value="1" class="form-selectgroup-input" checked>
									<span class="form-selectgroup-label d-flex align-items-center p-3">
										<span class="me-3">
											<span class="form-selectgroup-check"></span>
										</span>
										<span class="form-selectgroup-label-content">
											<span class="form-selectgroup-title strong mb-1">Simple</span>
											<span class="d-block text-muted">Provide only basic data needed for the report</span>
										</span>
									</span>
								</label>
							</div>
							<div class="col-lg-6">
								<label class="form-selectgroup-item">
									<input type="radio" name="report-type" value="1" class="form-selectgroup-input">
									<span class="form-selectgroup-label d-flex align-items-center p-3">
										<span class="me-3">
											<span class="form-selectgroup-check"></span>
										</span>
										<span class="form-selectgroup-label-content">
											<span class="form-selectgroup-title strong mb-1">Advanced</span>
											<span class="d-block text-muted">Insert charts and additional advanced analyses to be inserted in
												the report</span>
										</span>
									</span>
								</label>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-8">
								<div class="mb-3">
									<label class="form-label">Report url</label>
									<div class="input-group input-group-flat">
										<span class="input-group-text">
											https://tabler.io/reports/
										</span>
										<input type="text" class="form-control ps-0" value="report-01" autocomplete="off">
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="mb-3">
									<label class="form-label">Visibility</label>
									<select class="form-select">
										<option value="1" selected>Private</option>
										<option value="2">Public</option>
										<option value="3">Hidden</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-lg-6">
								<div class="mb-3">
									<label class="form-label">Client name</label>
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="mb-3">
									<label class="form-label">Reporting period</label>
									<input type="date" class="form-control">
								</div>
							</div>
							<div class="col-lg-12">
								<div>
									<label class="form-label">Additional information</label>
									<textarea class="form-control" rows="3"></textarea>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<a href="#" class="btn btn-link link-secondary" data-bs-dismiss="modal">
							Cancel
						</a>
						<a href="#" class="btn btn-primary ms-auto" data-bs-dismiss="modal">
							<!-- Download SVG icon from http://tabler-icons.io/i/plus -->
							<svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
								<path stroke="none" d="M0 0h24v24H0z" fill="none" />
								<path d="M12 5l0 14" />
								<path d="M5 12l14 0" />
							</svg>
							Create new report
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="span9">
			<div class="content">
				<div class="module">
					<?php check_message(); ?>
					<?php require_once $content; ?>
				</div>
			</div>
		</div>
		<div class="footer" style="text-align: center">
			<div class="container">
				<b class="copyright">&copy; 2024 Research and Development Unit </b>All rights reserved.
			</div>
		</div>
		<!-- Libs JS -->
		<script src="./dist/libs/apexcharts/dist/apexcharts.min.js?1684106062" defer></script>
		<script src="./dist/libs/jsvectormap/dist/js/jsvectormap.min.js?1684106062" defer></script>
		<script src="./dist/libs/jsvectormap/dist/maps/world.js?1684106062" defer></script>
		<script src="./dist/libs/jsvectormap/dist/maps/world-merc.js?1684106062" defer></script>
		<!-- Tabler Core -->
		<script src="./dist/js/tabler.min.js?1684106062" defer></script>
		<script src="./dist/js/demo.min.js?1684106062" defer></script>

		<script src="<?php echo web_root; ?>e_admin/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script src="<?php echo web_root; ?>e_admin/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
		<script src="<?php echo web_root; ?>e_admin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="<?php echo web_root; ?>e_admin/scripts/flot/jquery.flot.js" type="text/javascript"></script>
		<script src="<?php echo web_root; ?>e_admin/scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
		<script src="<?php echo web_root; ?>e_admin/scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
		<script src="<?php echo web_root; ?>e_admin/scripts/common.js" type="text/javascript"></script>
		<script src="<?php echo web_root; ?>e_admin/scripts/datatables/jquery.dataTables.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/js/lightbox.min.js"></script>

</body>

</html>

<script>
	$(document).ready(function() {
		$('.datatable-1').dataTable();
		$('.dataTables_paginate').addClass("btn-group datatable-pagination");
		$('.dataTables_paginate > a').wrapInner('<span />');
		$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
		$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
	});
</script>