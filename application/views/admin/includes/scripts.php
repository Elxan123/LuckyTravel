<!-- SCRIPTS -->
<!-- JQuery -->
<script src="<?php echo base_url("public/admin/mdbootstrap/")?>js/jquery-3.4.1.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="<?php echo base_url("public/admin/mdbootstrap/")?>js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="<?php echo base_url("public/admin/mdbootstrap/")?>js/bootstrap.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="<?php echo base_url("public/admin/mdbootstrap/")?>js/mdb.min.js"></script>

<script src="<?php echo base_url("public/admin/")?>js/iziToast.min.js"></script>
<!--<script src="--><?php //echo base_url("public/admin/")?><!--js/jquery.dataTables.js"></script>-->
<script src="<?php echo base_url("public/admin/")?>js/jquery.dataTables.js"></script>
<script src="<?php echo base_url("public/admin/")?>js/sweetalert.min.js"></script>
<script src="<?php echo base_url("public/admin/")?>js/dataTables.bootstrap4.min.js"></script>
<script src="<?php echo base_url("public/admin/")?>js/custom.js"></script>


<!-- Initializations -->
<script>
    // SideNav Initialization
    $(".button-collapse").sideNav();

    var container = document.querySelector('.custom-scrollbar');
    var ps = new PerfectScrollbar(container, {
        wheelSpeed: 2,
        wheelPropagation: true,
        minScrollbarLength: 20
    });

    // Data Picker Initialization
    $('.datepicker').pickadate();

    // Material Select Initialization
    $(document).ready(function () {
        $('.mdb-select').material_select();
    });

    // Tooltips Initialization
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })

</script>

</body>

</html>
