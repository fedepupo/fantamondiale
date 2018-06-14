<?
mysql_select_db("fantamondiale", mysql_connect("localhost", "root", ""));


$squadre = array();
$q = mysql_query("SELECT * FROM squadre"); 
while($r = mysql_fetch_assoc($q)){
	$squadre[$r['ID']] = $r['nome'];
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
<table cellpadding="0" cellspacing="0">
	<tr>
		<th colspan="10" align="left">Utente:
			<select>
				<option>Seleziona</option>
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
	<tr>
		<th>ID</th>
		<th>Data</th>
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
			<td><?=$squadre[$r['squadra_1']]?></td>
			<td>-</td>
			<td><?=$squadre[$r['squadra_2']]?></td>			
			<td><input type="text" name="goal_2" style="width:50px"></td>
			<td>-</td>
			<td><input type="text" name="goal_1" style="width:50px"></td>
			<td><input type="text" name="u_o" style="width:50px"></td>		
			<td><input type="text" name="1x2" style="width:50px"></td>		
		</tr>
		<?
	}
	?>
</table>
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