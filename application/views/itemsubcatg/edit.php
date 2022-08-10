	<div class="main-panel">
	    <div class="content-wrapper">
	        <div class="card">
	            <div class="card-body">


	                <div class="titleSec">
	                    <h2>Add Item Sub-Category</h2>
	                    <span class="confirm-div" style="float:right; color:green;">
	                        <?php if (null != $this->session->flashdata('msg')) {
                                echo $this->session->flashdata('msg');
                            }; ?>


	                    </span>
	                </div>

	                <div class="row">
	                    <div class="col-sm-12">
	                        <form action="<?= base_url() ?>index.php/adm/save_subcatg" method="post" id="form">

	                            <input type="hidden" name="id" value="<?= $selected['id'] ?>">
	                            <div class="form-group row">
	                                <div class="col-sm-1">
	                                    <label><b>Category</b></label>
	                                </div>
	                                <div class="col-sm-6">
	                                    <select name="catg_id" class="form-control required" id="catg_id" required>
	                                        <option value="">Select</option>
	                                        <?php
                                            foreach ($catg_list as $catg) {
                                                $_selected = '';
                                                if ($selected['catg_id'] > 0) {
                                                    $_selected = $selected['catg_id'] == $catg->sl_no ? 'selected' : '';
                                                }
                                            ?>
	                                            <option value="<?= $catg->sl_no; ?>" <?= $_selected; ?>><?php echo $catg->category; ?></option>
	                                        <?php
                                            }
                                            ?>
	                                    </select>
	                                </div>
	                            </div>
	                            <div class="form-group row">
	                                <div class="col-sm-1">
	                                    <label><b>Sub-Category</b></label>
	                                </div>
	                                <div class="col-sm-6">
	                                    <input type="text" class="form-control" placeholder="Enter Sub-Category" name="name" value="<?= isset($selected['name']) ? $selected['name'] : '' ?>">
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