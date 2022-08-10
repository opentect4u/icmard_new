	<div class="main-panel">
	  <div class="content-wrapper">
	    <div class="card">
	      <div class="card-body">


	        <div class="titleSec">
	          <h2>Edit Stock Item</h2>
	          <span class="confirm-div" style="float:right; color:green;">
	            <?php if (null != $this->session->flashdata('msg')) {
                echo $this->session->flashdata('msg');
              }; ?>

	          </span>
	        </div>

	        <div class="row">
	          <div class="col-sm-12">
	            <form action="<?= base_url() ?>index.php/adm/edit_stkitem" method="post">
	              <input type="hidden" value="<?php if (isset($item->id)) {
                                              echo $item->id;
                                            } ?>" name="id">

	              <div class="form-group row">
	                <div class="col-sm-1">
	                  <label><b>Category</b></label>
	                </div>
	                <div class="col-sm-6">
	                  <input type="text" class="form-control" name="catg" value="<?php if (isset($item->catg)) {
                                                                                  echo $item->catg;
                                                                                } ?>" readonly>
	                </div>
	              </div>

	              <div class="form-group row">
	                <div class="col-sm-1">
	                  <label><b> Sub-Category</b></label>
	                </div>
	                <div class="col-sm-6">
	                  <select name="subcatg" class="form-control required" id="subcatg" required>
	                    <option value="">Select</option>
	                    <?php
                      foreach ($subcatg_list as $dt) {
                        $_selected = '';
                        if ($dt->id == $item->sub_catg_id) {
                          $_selected = 'selected';
                        }
                      ?>
	                      <option value="<?php echo $dt->id; ?>" <?= $_selected ?>><?php echo $dt->name; ?></option>
	                    <?php
                      }
                      ?>
	                  </select>
	                </div>
	              </div>

	              <div class="form-group row">
	                <div class="col-sm-1">
	                  <label><b>Item</b></label>
	                </div>
	                <div class="col-sm-6">
	                  <input type="text" class="form-control" placeholder="enter Item name" name="item_name" value="<?php if (isset($item->item_name)) {
                                                                                                                    echo $item->item_name;
                                                                                                                  } ?>">
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