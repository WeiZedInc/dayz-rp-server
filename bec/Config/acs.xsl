<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<style type="text/css">
		body {background:#fefefe;color: rgb(0, 0, 0);font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;font-weight: normal;}
		.farme_bg {margin: 0px auto;width: 100%;}
		.block {margin-top: 20px;}
		.block_title
		{
			background:#888888;color: rgb(255, 255, 255);height: 18px;
			font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;font-weight: bold;
			padding-left: 6px;	padding-top: 1px;
		}
		.block_data
		{
			background: #cccccc;color: #000000;
			font-family: Verdana, Arial, Helvetica, sans-serif;	font-size: 10px; font-weight: normal;line-height: 1.4em;
			padding-bottom: 3px;padding-left: 6px;
		}
	</style>
	<xsl:choose>
		<xsl:when test="/BeCommands/command">
			<head>
			<title>Bec Commands</title>
			</head>
			<body>
				<div class="farme_bg">
					<xsl:for-each select="/BeCommands/command">
						<div class="block">
							<div class="block_title">
								Command Id : <xsl:value-of select="@id" />
							</div>
							<div class="block_data">
								<div style="float: left; padding-right: 10px;">Name:<br />Group:<br />Cmd:<br />Time<br />Text<br />Desc<br /></div>
								<div>
									<xsl:choose>	
										<xsl:when test="name">
											<xsl:value-of select="name" /><br />
										</xsl:when>
										<xsl:otherwise>
											Missing Name Tag<br />
										</xsl:otherwise>
									</xsl:choose>

									<xsl:choose>	
										<xsl:when test="group">
											<xsl:value-of select="group" /><br />
										</xsl:when>
										<xsl:otherwise>
											Missing Group Tag<br />
										</xsl:otherwise>
									</xsl:choose>
									
									<xsl:choose>	
										<xsl:when test="cmd">
											<xsl:value-of select="cmd" /><br />
										</xsl:when>
										<xsl:otherwise>
											Missing Cmd Tag<br />
										</xsl:otherwise>
									</xsl:choose>

									<xsl:choose>	
										<xsl:when test="time">
											<xsl:value-of select="time" /><br />
										</xsl:when>
										<xsl:otherwise>
											Missing Time Tag<br />
										</xsl:otherwise>
									</xsl:choose>

									<xsl:choose>	
										<xsl:when test="text">
											<xsl:value-of select="text" /><br />
										</xsl:when>
										<xsl:otherwise>
											Missing Text Tag<br />
										</xsl:otherwise>
									</xsl:choose>

									<xsl:choose>	
										<xsl:when test="desc">
											<xsl:value-of select="desc" /><br />
										</xsl:when>
										<xsl:otherwise>
											Missing Desc Tag<br />
										</xsl:otherwise>
									</xsl:choose>
								</div>
							</div>
						</div>
					</xsl:for-each>
				</div>
				<br />
			</body>
		</xsl:when>

		<xsl:when test="/BEAdmins/admin">
			<head>
			<title>Bec Admins</title>
			</head>
			<body>
				<div class="farme_bg">
					<xsl:for-each select="/BEAdmins/admin">
						<div class="block">
							<div class="block_title">
								Admin Id : <xsl:value-of select="@id" />
							</div>
							<div class="block_data">
								<div style="float: left; padding-right: 10px;">Name:<br />Guid:<br />Group:<br />GroupName:<br /></div>
								<div>
									<xsl:choose>	
										<xsl:when test="name">
											<xsl:value-of select="name" /><br />
										</xsl:when>
										<xsl:otherwise>
											Missing Name Tag<br />
										</xsl:otherwise>
									</xsl:choose>
									
									<xsl:choose>	
										<xsl:when test="guid">
											<xsl:value-of select="guid" /><br />
									</xsl:when>
										<xsl:otherwise>
											Missing Guid Tag<br />
										</xsl:otherwise>
									</xsl:choose>
									
									<xsl:choose>	
										<xsl:when test="group">
											<xsl:value-of select="group" /><br />
										</xsl:when>
										<xsl:otherwise>
											Missing Group Tag<br />
										</xsl:otherwise>
									</xsl:choose>
									
									<xsl:choose>	
										<xsl:when test="groupname">
										<xsl:value-of select="groupname" /><br />
									</xsl:when>
										<xsl:otherwise>
											Missing Group Name Tag<br />
										</xsl:otherwise>
									</xsl:choose>
								</div>
							</div>
						</div>
					</xsl:for-each>
				</div>
				<br />
			</body>			
		</xsl:when>
		
		<xsl:when test="/Scheduler/job">
			<head>
			<title>Bec Scheduler</title>
			</head>
			<body>
				<div class="farme_bg">
					<xsl:for-each select="/Scheduler/job">
						<div class="block">
							<div class="block_title">
								Job Id : <xsl:value-of select="@id" />
							</div>
							<div class="block_data">
								<div style="float: left; padding-right: 10px;">Time:<br />Delay:<br />Day:<br />Loop:<br />Cmd:<br />CmdType:<br /></div>
								<div>
									<xsl:choose>	
										<xsl:when test="time">
											<xsl:value-of select="time" /><br />
										</xsl:when>
										<xsl:otherwise>
											Missing Time Tag<br />
										</xsl:otherwise>
									</xsl:choose>

									<xsl:choose>	
										<xsl:when test="delay">
											<xsl:value-of select="delay" /><br />
									</xsl:when>
										<xsl:otherwise>
											Missing Delay Tag<br />
										</xsl:otherwise>
									</xsl:choose>

									<xsl:choose>	
										<xsl:when test="day">
											<xsl:value-of select="day" /><br />
										</xsl:when>
										<xsl:otherwise>
											Missing Day Tag<br />
										</xsl:otherwise>
									</xsl:choose>

									<xsl:choose>	
										<xsl:when test="loop">		
											<xsl:value-of select="loop" /><br />
										</xsl:when>
										<xsl:otherwise>
											Missing Loop Tag<br />
										</xsl:otherwise>
									</xsl:choose>

									<xsl:choose>	
										<xsl:when test="cmd">
											<xsl:value-of select="cmd" /><br />
										</xsl:when>
										<xsl:otherwise>
											Missing Cmd Tag<br />
										</xsl:otherwise>
									</xsl:choose>

									<xsl:choose>	
										<xsl:when test="cmdtype">
											<xsl:value-of select="cmdtype" /><br />
										</xsl:when>
										<xsl:otherwise>
											Missing CmdType Tag<br />
										</xsl:otherwise>
									</xsl:choose>
								</div>
							</div>
						</div>
					</xsl:for-each>
				</div>
				<br />
			</body>				
		</xsl:when>			
		
		<xsl:when test="/Ts3">
			<head>
			<title>Bec Ts3 Settings</title>
			</head>
			<body>
			<div class="farme_bg">
				<xsl:choose>
					<xsl:when test="/Ts3/Ts3Admins/admin">
							<xsl:for-each select="/Ts3/Ts3Admins/admin">
								<div class="block">
									<div class="block_title">Admin Id: <xsl:value-of select="@id" /></div>
									<div class="block_data">
										<div style="float: left; padding-right: 10px;">Name:<br />Uid:<br />Nok:<br />Nob<br />Noh<br /></div>
										<div>
											<xsl:choose>	
												<xsl:when test="name">
													<xsl:value-of select="name" /><br />
												</xsl:when>
												<xsl:otherwise>
													Missing Name Tag<br />
												</xsl:otherwise>
											</xsl:choose>

											<xsl:choose>	
												<xsl:when test="uid">
													<xsl:value-of select="uid" /><br />
												</xsl:when>
												<xsl:otherwise>
													Missing Uid Tag<br />
												</xsl:otherwise>
											</xsl:choose>
										
											<xsl:choose>
												<xsl:when test="nok">
													<xsl:value-of select="nok" /><br />
												</xsl:when>
												<xsl:otherwise>
													Missing Nok Tag<br />
												</xsl:otherwise>
											</xsl:choose>

											<xsl:choose>
												<xsl:when test="nob">
													<xsl:value-of select="nob" /><br />
												</xsl:when>
												<xsl:otherwise>
													Missing NoB Tag<br />
												</xsl:otherwise>
											</xsl:choose>
												
											<xsl:choose>
												<xsl:when test="noh">
													<xsl:value-of select="noh" /><br />
												</xsl:when>
												<xsl:otherwise>
													Missing Noh Tag<br />
												</xsl:otherwise>
											</xsl:choose>											
										</div>
									</div>
								</div>
							</xsl:for-each>
					</xsl:when>
						
					<xsl:otherwise>
						Missing Admins.. Check your file
					</xsl:otherwise>			
				</xsl:choose>

				
				<xsl:choose>
					<xsl:when test="/Ts3/Ts3Settings">
						<div class="block">
							<div class="block_title">General Ts3 Settings</div>
							<div class="block_data">
							
							<xsl:choose>	
								<xsl:when test="/Ts3/Ts3Settings/address">
									<div style="float: left; padding-right: 10px;">Address :</div>
									<div><xsl:value-of select="/Ts3/Ts3Settings/address" /><br /></div>
								</xsl:when>
								<xsl:otherwise>
									Missing Address Tag<br />
								</xsl:otherwise>							
							</xsl:choose>
							
							<xsl:choose>	
								<xsl:when test="/Ts3/Ts3Settings/port">
									<div style="float: left; padding-right: 20px;">Port :</div>
									<div><xsl:value-of select="/Ts3/Ts3Settings/port" /><br /></div>
								</xsl:when>
								<xsl:otherwise>
									Missing Port Tag<br />
								</xsl:otherwise>							
							</xsl:choose>				
							
							<xsl:choose>	
								<xsl:when test="/Ts3/Ts3Settings/virtualserver">
									<div style="float: left; padding-right: 20px;">Virtualserver :</div>
									<div><xsl:value-of select="/Ts3/Ts3Settings/virtualserver" /><br /></div>
								</xsl:when>
								<xsl:otherwise>
									Missing Virtualserver Tag<br />
								</xsl:otherwise>							
							</xsl:choose>							
							
							<xsl:choose>	
								<xsl:when test="/Ts3/Ts3Settings/username">
									<div style="float: left; padding-right: 20px;">Username :</div>
									<div><xsl:value-of select="/Ts3/Ts3Settings/username" /><br /></div>
								</xsl:when>
								<xsl:otherwise>
									Missing Username Tag<br />
								</xsl:otherwise>							
							</xsl:choose>	
							
							<xsl:choose>	
								<xsl:when test="/Ts3/Ts3Settings/password">
									<div style="float: left; padding-right: 20px;">Password :</div>
									<div><xsl:value-of select="/Ts3/Ts3Settings/password" /><br /></div>
								</xsl:when>
								<xsl:otherwise>
									Missing Password Tag<br />
								</xsl:otherwise>							
							</xsl:choose>							

							<xsl:choose>	
								<xsl:when test="/Ts3/Ts3Settings/clientpoke">
									<div style="float: left; padding-right: 20px;">Clientpoke :</div>
									<div><xsl:value-of select="/Ts3/Ts3Settings/clientpoke" /><br /></div>
								</xsl:when>
								<xsl:otherwise>
									Missing Clientpoke Tag<br />
								</xsl:otherwise>							
							</xsl:choose>	
							
							<xsl:choose>	
								<xsl:when test="/Ts3/Ts3Settings/clientrequiredts3">
									<div style="float: left; padding-right: 20px;">Clientrequiredts3 :</div>
									<div><xsl:value-of select="/Ts3/Ts3Settings/clientrequiredts3" /><br /></div>
								</xsl:when>
								<xsl:otherwise>
									Missing Clientrequiredts3 Tag<br />
								</xsl:otherwise>							
							</xsl:choose>								
							
							<xsl:choose>	
								<xsl:when test="/Ts3/Ts3Settings/clientrequiredts3_warnings">
									<div style="float: left; padding-right: 20px;">Clientwarnings :</div>
									<div><xsl:value-of select="/Ts3/Ts3Settings/clientwarnings" /><br /></div>
								</xsl:when>
								<xsl:otherwise>
									Missing clientrequiredts3_warnings Tag<br />
								</xsl:otherwise>							
							</xsl:choose>								
							
							<xsl:choose>	
								<xsl:when test="/Ts3/Ts3Settings/clientrequirets3_channel">
									<div style="float: left; padding-right: 20px;">Channels :</div>
									<div><xsl:value-of select="/Ts3/Ts3Settings/clientrequirets3_channel" /><br /></div>
								</xsl:when>
								<xsl:otherwise>
									Missing clientrequiredts3_interval Tag<br />
								</xsl:otherwise>							
							</xsl:choose>

							<xsl:choose>	
								<xsl:when test="/Ts3/Ts3Settings/clientrequiredts3_interval">
									<div style="float: left; padding-right: 20px;">Query Interval :</div>
									<div><xsl:value-of select="/Ts3/Ts3Settings/clientwarnings" /><br /></div>
								</xsl:when>
								<xsl:otherwise>
									Missing clientrequiredts3_interval Tag<br />
								</xsl:otherwise>							
							</xsl:choose>							
							
							<xsl:choose>	
								<xsl:when test="/Ts3/Ts3Settings/clientrequiredts3_warningmessage">
									<div style="float: left; padding-right: 20px;">Clientrequiredts3_warningmessage :</div>
									<div><xsl:value-of select="/Ts3/Ts3Settings/clientrequiredts3_warningmessage" /><br /></div>
								</xsl:when>
								<xsl:otherwise>
									Missing Clientrequiredts3_warningmessage Tag<br />
								</xsl:otherwise>							
							</xsl:choose>									

							<xsl:choose>	
								<xsl:when test="/Ts3/Ts3Settings/clientrequiredts3_kickmessage">
									<div style="float: left; padding-right: 20px;">Clientrequiredts3_kickmessage :</div>
									<div><xsl:value-of select="/Ts3/Ts3Settings/clientrequiredts3_kickmessage" /><br /></div>
								</xsl:when>
								<xsl:otherwise>
									Missing Clientrequiredts3_kickmessage Tag<br />
								</xsl:otherwise>							
							</xsl:choose>		
							
							<xsl:choose>	
								<xsl:when test="/Ts3/Ts3Settings/clientkick">
									<div style="float: left; padding-right: 20px;">Clientkick :</div>
									<div><xsl:value-of select="/Ts3/Ts3Settings/clientkick" /><br /></div>
								</xsl:when>
								<xsl:otherwise>
									Missing Clientkick Tag<br />
								</xsl:otherwise>							
							</xsl:choose>							
							
							<xsl:choose>	
								<xsl:when test="/Ts3/Ts3Settings/clientban">
									<div style="float: left; padding-right: 20px;">Clientban :</div>
									<div><xsl:value-of select="/Ts3/Ts3Settings/clientban" /><br /></div>
								</xsl:when>
								<xsl:otherwise>
									Missing Clientban Tag<br />
								</xsl:otherwise>							
							</xsl:choose>									
							
							</div>
						</div>
					
					</xsl:when>
					<xsl:otherwise>
						Missing Ts3Settings block.. Check your file
					</xsl:otherwise>			
				</xsl:choose>
			
			</div>
			</body>
		</xsl:when>		
				
		<xsl:otherwise>
			<head>
			<title>Wrong File or Invalid Tags</title>
			</head>
			<body><br />Wrong File or Invalid Tags</body>
		</xsl:otherwise>
	</xsl:choose>				
</html>
</xsl:template>
</xsl:stylesheet>
