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
	                        <form action="<?= base_url() ?>index.php/adm/save_stakeholder_type" method="post" id="form">
	                            <input type="hidden" name="id" value="<?= $selected['id'] ?>">
	                            <div class="form-group row">
	                                <div class="col-sm-1">
	                                    <label><b>Stakeholder Type</b></label>
	                                </div>
	                                <div class="col-sm-6">
	                                    <input type="text" class="form-control" placeholder="Enter Stakeholder Type" name="name" value="<?= isset($selected['name']) ? $selected['name'] : '' ?>">
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