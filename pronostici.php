<?
mysql_select_db("fantamondiale", mysql_connect("localhost", "root", ""));

if(!empty($_POST)){
	if($_POST['utente'] > 0){
		mysql_query("DELETE FROM pronostici_partite WHERE utente = '".$_POST['utente']."'");
		foreach($_POST['partite'] as $partita=>$pronostici){
			mysql_query("INSERT INTO `pronostici_partite`(`partita`, `u_o`, `1x2`, `goal_1`, `goal_2`, `utente`) 
				VALUES ('".$partita."','".$pronostici['u_o']."','".$pronostici['1x2']."','".$pronostici['goal_1']."','".$pronostici['goal_2']."','".$_POST['utente']."')");	
		}
	}
}
$squadre = array();
$q = mysql_query("SELECT * FROM squadre"); 
while($r = mysql_fetch_assoc($q)){
	$squadre[$r['ID']] = $r['nome'];
}


$pronostici = array();
if($_GET['utente'] > 0){
	$q = mysql_query("SELECT * FROM pronostici_partite WHERE utente = '".$_GET['utente']."' ");
	while($r = mysql_fetch_assoc($q)){
		$pronostici[$r['ID']] = $r;
	}
}
?>
<style>
*{
	font-family:arial;
	font-size:12px;
}
table{
	border-left:1px solid #999;
	border-right:1px solid #999;
}
tr th{
	padding:3px 6px;
	background:#999;
	border-bottom:1px solid #FFF;
}
tr td{
	padding:3px 6px;
	border-bottom:1px solid #999;
}
</style>
<form action="" method="GET">
	<table cellpadding="0" cellspacing="0">
		<tr>
			<th colspan="11" align="left">Utente:
				<select name="utente" onchange="this.form.submit()">
					<option value="0">Seleziona</option>
					<?
					$q = mysql_query("SELECT * FROM utenti ORDER BY nome");
					while($r = mysql_fetch_assoc($q)){
						?>
						<option value="<?=$r['ID']?>"><?=$r['nome']?></option>
						<?
					}
					?>
				</select>
			</th>
		</tr>
	</table>
</form>
<form action="" method="POST">
	<input type="hidden" name="utente" value="<?=$_GET['utente']?>">
	<table cellpadding="0" cellspacing="0">
		<tr>
			<th>ID</th>
			<th>Data</th>
			<th>Luogo</th>
			<th colspan="3">Partita</th>
			<th colspan="3">Risultato</th>
			<th>U/O</th>
			<th>1X2</th>
		</tr>
		<?
		$q = mysql_query("SELECT * FROM partite ORDER BY `datetime`");
		while($r = mysql_fetch_assoc($q)){
			?>
			<tr>
				<td><?=$r['ID']?></td>
				<td><?=formatta_data($r['datetime'])?></td>
				<td><?=$r['location']?></td>
				<td><?=$squadre[$r['squadra_1']]?></td>
				<td>-</td>
				<td><?=$squadre[$r['squadra_2']]?></td>			
				<td><input type="text" name="partite[<?=$r['ID']?>][goal_1]" value="<?=$pronostici[$r['ID']]['goal_1']?>" style="width:50px"></td>
				<td>-</td>
				<td><input type="text" name="partite[<?=$r['ID']?>][goal_2]" value="<?=$pronostici[$r['ID']]['goal_2']?>" style="width:50px"></td>
				<td><input type="text" name="partite[<?=$r['ID']?>][u_o]" value="<?=$pronostici[$r['ID']]['u_o']?>" style="width:50px"></td>		
				<td><input type="text" name="partite[<?=$r['ID']?>][1x2]" value="<?=$pronostici[$r['ID']]['1x2']?>" style="width:50px"></td>		
			</tr>
			<?
		}
		?>
		<tr>
			<th colspan="11">
				<input type="submit" value="Salva pronostici">
			</th>
		</tr>
	</table>
</form>
<?

function formatta_data($data){
	if(strlen($data) == 12){
		return substr($data,6,2)."/".substr($data,4,2)."/".substr($data,0,4)." ".substr($data,8,2).":".substr($data,10,2);
	}elseif(strlen($data) == 14){
		return substr($data,6,2)."/".substr($data,4,2)."/".substr($data,0,4)." ".substr($data,8,2).":".substr($data,10,2).":".substr($data,12,2);
	}elseif(strlen($data) == 8){
		return substr($data,6,2)."/".substr($data,4,2)."/".substr($data,0,4);
	}
}
?>