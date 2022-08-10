	<div class="main-panel">
	  <div class="content-wrapper">
	    <div class="card">
	      <div class="card-body">


	        <div class="titleSec">
	          <h2>Add Stock Item</h2>
	          <span class="confirm-div" style="float:right; color:green;">
	            <?php if (null != $this->session->flashdata('msg')) {
                echo $this->session->flashdata('msg');
              }; ?>
	            <?php //echo validation_errors(); 
              ?>


	          </span>
	        </div>

	        <div class="row">

	          <div class="col-sm-12">
	            <form action="<?= base_url() ?>index.php/adm/add_stkitem" method="post" id="form">
	              <div class="form-group row">
	                <div class="col-sm-1">
	                  <label><b> Category</b></label>
	                </div>
	                <div class="col-sm-6">
	                  <select name="catg" class="form-control required" id="catg" required>
	                    <option value="">Select</option>
	                    <?php
                      foreach ($catgdtls as $catg) {
                      ?>
	                      <option value="<?php echo $catg->sl_no; ?>"><?php echo $catg->category; ?></option>
	                    <?php
                      }
                      ?>
	                  </select>
	                </div>
	              </div>

	              <div class="form-group row">
	                <div class="col-sm-1">
	                  <label><b> Sub-Category</b></label>
	                </div>
	                <div class="col-sm-6">
	                  <select name="subcatg" class="form-control required" id="subcatg" required>
	                    <option value="">Select</option>
	                    <?php /*
                      foreach ($catgdtls as $catg) {
                      ?>
	                      <option value="<?php echo $catg->category; ?>"><?php echo $catg->category; ?></option>
	                    <?php
                      }
                      */ ?>
	                  </select>
	                </div>
	              </div>

	              <div class="form-group row">
	                <div class="col-sm-1">
	                  <label><b>Name</b></label>
	                </div>
	                <div class="col-sm-6">
	                  <input type="text" class="form-control" placeholder="" name="item_name" id="itemname">
	                </div>
	              </div>

	              <div class="form-group row">
	                <div class="col-sm-12 btnSubmitSec">
	                  <input type="submit" class="btn btn-info" id="submit" name="submit" value="Submit">
	                  <!--		<input type="reset" onclick="" class="btn btn-info" value="Cancel">-->
	                </div>
	              </div>

	            </form>


	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
	</div>
	<script>
	  $('#catg').on('change', function() {
	    var catg_id = $(this).val()
	    $.ajax({
	      type: "GET",
	      url: "<?php echo site_url('adm/get_subcatg_list'); ?>",
	      data: {
	        catg_id: catg_id
	      },
	      dataType: 'html',
	      success: function(data) {
	        var res = JSON.parse(data)
	        // console.log(JSON.parse(data)[0].id);
	        $('#subcatg').empty();
	        $('#subcatg').append($('<option>', {
	          value: '',
	          text: 'Select'
	        }));
	        $.each(res, function(i, item) {
	          $('#subcatg').append($('<option>', {
	            value: item.id,
	            text: item.name
	          }));
	        });
	      }
	    })
	  })
	</script>