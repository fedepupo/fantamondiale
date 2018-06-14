<?
mysql_select_db("fantamondiale", mysql_connect("localhost", "root", ""));
//date_default_timezone_set('Europe/Rome');
//Lw7LnEu8ZhmshIWD98CaoZhhrHPlp1mmiiUjsnnmMIwcZ3QhPC
/*array(
    "X-Mashape-Key" => "Lw7LnEu8ZhmshIWD98CaoZhhrHPlp1mmiiUjsnnmMIwcZ3QhPC",
    "Accept" => "application/json"
  )
  */
  define("URL", "http://worldcup.sfg.io/matches");
  $fields = array();
  $params = http_build_query($fields);

  $ch = curl_init();

  curl_setopt($ch, CURLOPT_URL, URL."?".$params);

  curl_setopt($ch, CURLOPT_HEADER, 0);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
  curl_setopt($ch, CURLOPT_TIMEOUT, 10);
  $output = curl_exec($ch);

  curl_close($ch);


  $matches = json_decode($output);

  if(!empty($matches)){
  	foreach($matches as $match){

  		echo "<pre>";
  		print_r($match);
  		echo "</pre>";

  		$datetime = date("YmdHis", mktime(date("H", strtotime($match->datetime))-5, date("i", strtotime($match->datetime)), date("s", strtotime($match->datetime)), date("m", strtotime($match->datetime)), date("d", strtotime($match->datetime)), date("Y", strtotime($match->datetime))))."<br>";

		$sqd1 = getTeam($match->home_team->country, $match->home_team->code);
		$sqd2 = getTeam($match->away_team->country, $match->away_team->code);

		$IDmatch = getMatch($sqd1, $sqd2, $goal1, $goal2, $datetime);
  	}
  }

  function getTeam($nome, $sigla){
  	$q = mysql_query("SELECT ID FROM squadre WHERE nome = '".$nome."' OR sigla = '".$sigla."' LIMIT 1"); 
  	if($r = mysql_fetch_assoc($q)){
  		return $r['ID'];
  	}else{
  		mysql_query("INSERT INTO `squadre`(`nome`, `sigla`) VALUES ('".$nome."', '".$sigla."')");
  		return mysql_insert_id();
  	}
  }

  function getMatch($sqd1, $sqd2, $goal1, $goal2, $datetime){
  	$q = mysql_query("SELECT ID FROM partite WHERE squadra_1 = '".$sqd1."' OR squadra_2 = '".$sqd2."' LIMIT 1"); 
  	if($r = mysql_fetch_assoc($q)){
  		return $r['ID'];
  	}else{
  		mysql_query("INSERT INTO `partite`(`squadra_1`, `squadra_2`, `tipo`, `goal_1`, `goal_2`, `datetime`) VALUES ('".$sqd1."','".$sqd2."','','".$goal1."','".$goal2."','".$datetime."')");
  		return mysql_insert_id();
  	}
  }
  ?>