<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">
            Danh sách người dùng
        </h1>
    </div>
</div>

<a href="index.php?controller=users/add" class="btn btn-primary" style="margin-bottom: 10px;">Thêm người dùng</a>

<table class="table table-dark table-hover">
	<thead class="thead-dark">
	<tr>
		<td  width="50px;">STT</td>
		<td width="500px;">Tên người dùng</td>
		<td >Email</td>
		<td width="100px;"></td>
	</tr>
	</thead>
	<?php
		$stt=0;
		foreach ($data as $value) {
			$stt++;
	?>
	
	 <tr>
		<td style="text-align: center;"><?php echo $stt; ?></td>
		<td><?php echo $value["name"]; ?></td>
		<td><?php echo $value["email"] ?></td>
		<td>
			<a href="index.php?controller=users/edit&id=<?php echo $value["token"];?>">Cập nhật</a>
			<a onclick="window.confirm('Bạn có muốn xóa???');" href="index.php?controller=users/list&id=<?php echo $value["token"]; ?>&act=delete">Xóa</a>
		</td>
	</tr>
	<?php } ?>
</table>

<ul class="paginate">
	<?php for($i=1; $i<=$page_show; $i++){ ?>
		<li><a href="index.php?controller=users/list&p=<?php echo $i ?>"><?php echo $i; ?></a></li>
	<?php } ?>
</ul>



