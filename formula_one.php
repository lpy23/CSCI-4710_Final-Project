<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>

	<?php
		$servername = "localhost";
		$username = "root";
		$password = "sS1b4ls3k1y@!";
		$db = "formulaone";
	
		// Create connection
		$conn = new mysqli($servername, $username, $password, $db);
	
		// Check connection
		if ($conn->connect_error) {
		  die("Connection failed: " . $conn->connect_error);
		}
		echo "Connected successfully";
	?>

	<!-- Drivers Table -->
	<table border="1" align="center">
		<caption>Drivers</caption>
		<tr>
			<td>Name</td>
			<td>Abbreviation</td>
			<td>Number</td>
			<td>Country</td>
			<td>Points</td>
			<td>World Championships</td>
			<td>Highest Grid Position</td>
			<td>Date of Birth</td>
			<td>Place of Birth</td>
		</tr>

		<?php

			$query = mysqli_query($conn, "SELECT * FROM Drivers")
			   or die (mysqli_error($conn));

			while ($row = mysqli_fetch_array($query)) {
				echo
				"<tr>
					<td>{$row['name']}</td>
					<td>{$row['abbreviation']}</td>
					<td>{$row['number']}</td>
					<td>{$row['country']}</td>
					<td>{$row['points']}</td>
					<td>{$row['world_championships']}</td>
					<td>{$row['highest_grid_positions']}</td>
					<td>{$row['date_of_birth']}</td>
					<td>{$row['place_of_birth']}</td>
				</tr>";
			}
		?>
	</table>

	<!-- Teams Table -->
	<table border="1" align="center">
		<caption>Teams</caption>
		<tr>
			<td>Team Name</td>
			<td>Full Team Name</td>
			<td>Base</td>
			<td>Team Chief</td>
			<td>Technical Chief</td>
			<td>Chassis</td>
			<td>Power Unit</td>
			<td>First Team Entry</td>
			<td>World Championships</td>
		</tr>

		<?php

			$query = mysqli_query($conn, "SELECT * FROM Teams")
			   or die (mysqli_error($conn));

			while ($row = mysqli_fetch_array($query)) {
				echo
				"<tr>
					<td>{$row['team']}</td>
					<td>{$row['full_team_name']}</td>
					<td>{$row['base']}</td>
					<td>{$row['team_chief']}</td>
					<td>{$row['technical_chief']}</td>
					<td>{$row['chassis']}</td>
					<td>{$row['power_unit']}</td>
					<td>{$row['first_team_entry']}</td>
					<td>{$row['world_championships']}</td>
				</tr>";
			}
		?>
	</table>

	<!-- Calendar Table -->
	<table border="1" align="center">
		<caption>Calendar</caption>
		<tr>
			<td>Round Number</td>
			<td>Grand Prix Name</td>
			<td>Country</td>
			<td>City</td>
			<td>Circuit Name</td>
			<td>Race Date</td>
			<td>First Grand Prix</td>
			<td>Number of Laps</td>
			<td>Circuit Length (km)</td>
			<td>Race Distance (km)</td>
			<td>Number of Turns</td>
			<td>DRS Zones</td>
		</tr>

		<?php

			$query = mysqli_query($conn, "SELECT * FROM Calendar ORDER BY round")
			   or die (mysqli_error($conn));

			while ($row = mysqli_fetch_array($query)) {
				echo
				"<tr>
					<td>{$row['round']}</td>
					<td>{$row['gp_name']}</td>
					<td>{$row['country']}</td>
					<td>{$row['city']}</td>
					<td>{$row['circuit_name']}</td>
					<td>{$row['race_date']}</td>
					<td>{$row['first_gp']}</td>
					<td>{$row['number_of_laps']}</td>
					<td>{$row['circuit_length_km']}</td>
					<td>{$row['race_distance_km']}</td>
					<td>{$row['turns']}</td>
					<td>{$row['drs_zones']}</td>
				</tr>";
			}
		?>
	</table>

	<!-- DrivesFor Table -->
	<table border="1" align="center">
		<caption>DrivesFor</caption>
		<tr>
			<td>Driver</td>
			<td>Team</td>
		</tr>

		<?php

			$query = mysqli_query($conn, "SELECT * FROM DrivesFor")
			   or die (mysqli_error($conn));

			while ($row = mysqli_fetch_array($query)) {
				echo
				"<tr>
					<td>{$row['driver']}</td>
					<td>{$row['team']}</td>
				</tr>";
			}
		?>
	</table>

	<!-- Podiums Table -->
	<table border="1" align="center">
		<caption>Podiums</caption>
		<tr>
			<td>Grand Prix</td>
			<td>Position</td>
			<td>Driver</td>
		</tr>

		<?php

			$query = mysqli_query($conn, "SELECT * FROM Podiums ORDER BY track, position")
				or die (mysqli_error($conn));

			while ($row = mysqli_fetch_array($query)) {
				echo
				"<tr>
					<td>{$row['track']}</td>
					<td>{$row['position']}</td>
					<td>{$row['driver']}</td>
				</tr>";
			}
		?>
	</table>

	<!-- Static Query #1 -->
	<table border="1" align="center">
		<caption>Static Query #1: What are the names, abbreviations, and numbers
			<br>of the drivers who are based in Silverstone, United Kingdom?</caption>
		<tr>
			<td>Name</td>
			<td>Abbreviation</td>
			<td>Number</td>
		</tr>

		<?php

			$query = mysqli_query($conn,
				"SELECT df.driver, d.abbreviation, d.number FROM DrivesFor df
				INNER JOIN Teams t ON df.team = t.team
				INNER JOIN Drivers d ON df.driver = d.name
				WHERE t.base = 'Silverstone, United Kingdom'")
				or die (mysqli_error($conn));

			while ($row = mysqli_fetch_array($query)) {
				echo
				"<tr>
					<td>{$row['driver']}</td>
					<td>{$row['abbreviation']}</td>
					<td>{$row['number']}</td>
				</tr>";
			}
		?>
	</table>

	<!-- Static Query #2 -->
	<table border="1" align="center">
		<caption>Static Query #2: Which power unit has had the most podium finishes?</caption>
		<tr>
			<td>Power Unit</td>
			<td>Podium Finishes</td>
		</tr>

		<?php

			$query = mysqli_query($conn,
				"SELECT t.power_unit, COUNT(t.power_unit) AS finishes
				FROM Teams t
				INNER JOIN DrivesFor df on t.team = df.team
				INNER JOIN Podiums p on df.driver = p.driver
				GROUP BY t.power_unit
				ORDER BY COUNT(t.power_unit) DESC
				LIMIT 1")
				or die (mysqli_error($conn));

			while ($row = mysqli_fetch_array($query)) {
				echo
				"<tr>
					<td>{$row['power_unit']}</td>
					<td>{$row['finishes']}</td>
				</tr>";
			}
		?>
	</table>

	<!-- Static Query #3 -->
	<table border="1" align="center">
		<caption>Static Query #3: Who finished second at Monza?</caption>
		<tr>
			<td>Driver</td>
			<td>Team</td>
		</tr>

		<?php

			$query = mysqli_query($conn,
				"SELECT p.driver, df.team FROM Podiums p
				INNER JOIN DrivesFor df ON p.driver = df.driver
				INNER JOIN Calendar c ON p.track = c.gp_name
				WHERE c.city = 'Monza' AND p.position = 2")
				or die (mysqli_error($conn));

			while ($row = mysqli_fetch_array($query)) {
				echo
				"<tr>
					<td>{$row['driver']}</td>
					<td>{$row['team']}</td>
				</tr>";
			}
		?>
	</table>

	<!-- Static Query #4 -->
	<table border="1" align="center">
		<caption>Static Query #4: What chassis was used to win the 17th grand prix?</caption>
		<tr>
			<td>Chassis</td>
		</tr>

		<?php

			$query = mysqli_query($conn,
				"SELECT t.chassis FROM Teams t
				INNER JOIN DrivesFor df ON t.team = df.team
				INNER JOIN Podiums p ON df.driver = p.driver
				INNER JOIN Calendar c ON p.track = c.gp_name
				WHERE c.round = 17 AND p.position = 1")
				or die (mysqli_error($conn));

			while ($row = mysqli_fetch_array($query)) {
				echo
				"<tr>
					<td>{$row['chassis']}</td>
				</tr>";
			}
		?>
	</table>

	<!-- Static Query #5 -->
	<table border="1" align="center">
		<caption>Static Query #5: Who are the chiefs that had their team podium on May 2, 2021 and in what positions did they finish?</caption>
		<tr>
			<td>Team Chief</td>
			<td>Technical Chief</td>
			<td>Finishing Position</td>
		</tr>

		<?php

			$query = mysqli_query($conn,
				"SELECT t.team_chief, t.technical_chief, p.position FROM Teams t
				INNER JOIN DrivesFor df ON t.team = df.team
				INNER JOIN Podiums p ON df.driver = p.driver
				INNER JOIN Calendar c ON p.track = c.gp_name
				WHERE c.race_date = '2021-05-02'
				ORDER BY position")
				or die (mysqli_error($conn));

			while ($row = mysqli_fetch_array($query)) {
				echo
				"<tr>
					<td>{$row['team_chief']}</td>
					<td>{$row['technical_chief']}</td>
					<td>{$row['position']}</td>
				</tr>";
			}
		?>
	</table>

	<center>

	<!-- User Input Query #1 -->
	<h2>Driver's Birth Information</h2>
	<form action = "formula_one.php" method = "get">
			Driver Name: <input type = "text" name = "drivername">
			<input type = "submit">
	</form>
	<br>
	<?php

		$drivername = $_GET["drivername"];
		$query = mysqli_query($conn,
			"SELECT date_of_birth, place_of_birth
			FROM Drivers
			WHERE name = '".$drivername."'")
			or die (mysqli_error($conn));

		while ($row = mysqli_fetch_array($query)) {
			echo "$drivername was born in {$row['date_of_birth']} on {$row['place_of_birth']}.";
		}

	?>
	
	<!-- User Input Query #2 -->
	<h2>Driver's Car Information</h2>
	<form action = "formula_one.php" method = "get">
			Driver Name: <input type = "text" name = "drivername1">
			<input type = "submit">
	</form>
	<br>
	<?php

		$drivername = $_GET["drivername1"];
		$query = mysqli_query($conn,
			"SELECT t.full_team_name, t.chassis, t.power_unit
			FROM Teams t
			INNER JOIN DrivesFor df ON t.team = df.team
			WHERE df.driver = '".$drivername."'")
			or die (mysqli_error($conn));

		while ($row = mysqli_fetch_array($query)) {
			echo "$drivername drives for {$row['full_team_name']} in a {$row['chassis']} chassis powered by a {$row['power_unit']} engine.";
		}

	?>

	<!-- User Input to Table -->
	<h2>Add A Team</h2>
	<form action = "formula_one.php" method = "get">
			Team Name: <input type = "text" name = "teamname">
			<br/>
			Full Team Name: <input type = "text" name = "fullteamname">
			<br/>
			Base: <input type = "text" name = "base">
			<br/>
			Team Chief: <input type = "text" name = "teamchief">
			<br/>
			Technical Chief: <input type = "text" name = "techchief">
			<br/>
			Chassis: <input type = "text" name = "chassis">
			<br/>
			Power Unit: <input type = "text" name = "powerunit">
			<br/>
			First Team Entry: <input type = "text" name = "firstteamentry">
			<br/>
			World Championships: <input type = "text" name = "worldchampionships">
			<br/>
			<input type = "submit">
	</form>
	<br>
	<?php

		$teamname = $_GET["teamname"];
		$fullteamname = $_GET["fullteamname"];
		$base = $_GET["base"];
		$teamchief = $_GET["teamchief"];
		$techchief = $_GET["techchief"];
		$chassis = $_GET["chassis"];
		$powerunit = $_GET["powerunit"];
		$firstteamentry = $_GET["firstteamentry"];
		$worldchampionships = $_GET["worldchampionships"];

		$query = mysqli_query($conn,
			"INSERT INTO Teams VALUES('".$teamname."','".$fullteamname."',
												'".$base."','".$teamchief."',
												'".$techchief."','".$chassis."',
												'".$powerunit."','".$firstteamentry."',
												'".$worldchampionships."')")
			or die (mysqli_error($conn));

	?>
	</center>

</body>
</html>
