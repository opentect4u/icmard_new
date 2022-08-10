<div class="main-panel">
    <div class="content-wrapper">
        <div class="card">
            <div class="card-body">


                <div class="titleSec">
                    <a href="<?= base_url() ?>index.php/adm/add_stakeholder_type?id=0"><button type="button" class="btn btn-primary">Add</button></a>
                    <h2>Stakeholder Type</h2>
                    <span class="confirm-div" style="float:right; color:green;">
                        <?php if (null != $this->session->flashdata('msg')) {
                            echo $this->session->flashdata('msg');
                        }; ?>

                    </span>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <table id="example" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody>

                                <?php

                                $i = 1;
                                foreach ($stkh_list as $dt) { ?>
                                    <tr>
                                        <td><?= $i; ?></td>
                                        <td><?= $dt->name ?></td>
                                        <td><a href="<?= base_url() ?>index.php/adm/add_stakeholder_type?id=<?= $dt->id ?>" data-toggle="tooltip" data-placement="bottom" title="Edit" class="edit"><i class="fa fa-edit menu-icon"></i></a>


                                        <td><button type="button" name="delete" class="delete" id="<?= $dt->id; ?>" data-toggle="tooltip" data-placement="bottom" title="Delete">

                                                <i class="fa fa-trash-o fa-2x" style="color: #bd2130"></i>
                                            </button> </td>
                                    </tr>

                                <?php $i++;
                                } ?>

                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    $(document).ready(function() {

        $('.delete').click(function() {
            // alert('abc');
            var id = $(this).attr('id');
            // echo $sl_no;
            // exit;
            // window.alert("<?php echo $this->session->flashdata('msg'); ?>");
            var result = confirm("Do you really want to delete this record?");

            if (result) {

                window.location = "<?php echo site_url('adm/delete_stakeholder_type?id="+id+"'); ?>";


            }

        });

    });
</script>