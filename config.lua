Config = {}

--Config.JobCenter = {
  --  coords = vec4(-545.1549, -204.2021, 38.2152, 213.3426),
  --  documents = {
     --   {
    --        label = 'ID Karta',
    --        item = 'id_card',
     --      price = 500
     --   },
     --   {
    --        label = 'Řidičský průkaz',
    --        item = 'license_drive',
    --        price = 500,
    --        requirement = 'drive'
     --   },
      --  {
      --      label = 'Zbrojní průkaz',
      --      item = 'license_weapon',
      --      price = 500,
     --       requirement = 'weapon'
     --   },
      --  {
     --       label = 'Pilotní Průkaz',
      --      item = 'license_pilot',
      --      price = 500,
     --      requirement = 'pilot'
     --   },
     --   {
     ---       label = 'Lodní Průkaz',
    --        item = 'license_boat',
    --        price = 500,
        --    requirement = 'boat'
    --    },
  --  }
--}

Config.NPCS = {
    {`ig_michelle`, -567.6736, -127.9811, 37.4365, 251.7435, "WORLD_HUMAN_CLIPBOARD"}, -- RECEPCE Rockford
	--{`cs_barry`, 169.6670, -567.3401, 42.8729, 79.5826, "WORLD_HUMAN_CLIPBOARD"}, -- Sklady

    -- LSSD
	{`s_m_y_sheriff_01`, 1818.4829, 3672.6248, 33.7123, 129.4006, "WORLD_HUMAN_CLIPBOARD"}, -- Recepce

    --REALHUB
	--{`s_m_m_chemsec_01`, -591.2159, -709.5469, 35.2838, 183.3519, "WORLD_HUMAN_COP_IDLES"}, -- REAL HUB

    -- CLOTHING
	-- {`s_f_y_clubbar_01`, 1690.7133, 4829.2788, 41.0654, 185.1963, ""}, --
	-- {`s_f_y_clubbar_01`, -706.6830, -150.8223, 36.42, 122.15, ""}, --
	-- {`s_f_y_clubbar_01`, -1192.549, -770.769, 16.32, 127.724, ""}, --
	-- {`s_f_y_clubbar_01`, 423.3230, -799.397, 28.4936, 180.4233, ""}, --
	-- {`s_f_y_clubbar_01`, -167.0859, -301.9813, 38.7333, 244.8244, ""}, --
	-- {`s_f_y_clubbar_01`, 77.683, -1399.687, 28.36, 7.4446, ""}, --
	-- {`s_f_y_clubbar_01`, -827.1164, -1078.9318, 10.53, 299.0917, ""}, --
	-- {`s_f_y_clubbar_01`, -1447.4637, -239.9110, 48.8180, 50.0066, ""}, --
	-- {`s_f_y_clubbar_01`, 8.2021, 6518.716, 30.88, 133.2211, ""}, --
	-- {`s_f_y_clubbar_01`, 616.892, 2761.094, 41.09, 182.251, ""}, --
	-- {`s_f_y_clubbar_01`, 1189.938, 2707.925, 37.22, 270.125, ""}, --
	-- {`s_f_y_clubbar_01`, -3171.797, 1046.729, 19.86, 340.157, ""}, --
	-- {`s_f_y_clubbar_01`, -1104.949, 2704.338, 18.11, 308.976, ""}, --
	-- {`s_f_y_clubbar_01`, 124.338, -220.747, 53.561, 341.157, ""}, --

    -- BARBER
	-- {`s_f_m_fembarber`, 136.781, -1708.42, 28.291, 136.061121, ""}, --BARBER
	-- {`s_f_m_fembarber`, -1282.651, -1117.340, 5.987, 90.701121, ""}, --BARBER
	-- {`s_f_m_fembarber`, 1931.680, 3730.401, 31.840, 198.31121, ""}, --BARBER
	-- {`s_f_m_fembarber`, 1212.342, -472.771, 65.321, 70.861121, ""}, --BARBER
	-- {`s_f_m_fembarber`, -32.931, -152.311, 56.0210, 337.321121, ""}, --BARBER
	-- {`s_f_m_fembarber`, -278.381, 6228.152, 30.7201, 36.851121, ""}, --BARBER

    -- TATTO
	-- {`u_m_y_tattoo_01`, 1323.4, -1653.31, 51.2810, 25.3201, ""}, --TEROVÁNÍ
	-- {`u_m_y_tattoo_01`, -1153.60, -1426.85, 3.9501, 22.671121, ""}, --TEROVÁNÍ
	-- {`u_m_y_tattoo_01`, 324.2935, 180.8966, 102.5881, 123.5950, ""},
	-- {`u_m_y_tattoo_01`, -3170.99, 1076.345, 19.8820, 226.771121, ""}, --TEROVÁNÍ
	-- {`u_m_y_tattoo_01`, 1862.62, 3748.54, 32.4010, 334.4871, ""}, --TEROVÁNÍ
	-- {`u_m_y_tattoo_01`, -292.16, 6199.670, 30.8011, 164.401121, ""}, --TEROVÁNÍ
    
    -- ZAHRADNÍK
	

	-- VANILLA UNICORN



	-- BAHAMA
	

	-- GALAXY
	
    -- RANDOM
   
	--{`A_F_Y_Business_01`, -545.3132, -203.8117, 37.2151, 211.5027, ""}, -- LIVEINVADER
    --{`s_m_m_linecook`, -1226.030, -1557.2760, 3.4238, 254.7616, ""}, -- GYM PRODEJ JÍDLA
	--{`s_m_y_dealer_01`, 3309.8442, 5190.0298, 18.7114, 51.1648, "WORLD_HUMAN_SMOKING"}, -- Překupník Části zbraní
	--{`s_m_y_dealer_01`, -230.1724, -1111.1329, 22.0070, 210.9509, "WORLD_HUMAN_SMOKING"}, -- Překupník věcí na drogy
	
	

}

Config.Blips = {
    {coords = vector3(-1042.4852, -2745.7168, 21.3594), sprite=307, scale=0.75, color=0, label="Letište"},
   -- {coords = vector3(265.6225, 237.0539, 151.6321), sprite=272, scale=0.9, color=0, label="HLAVNÍ BANKA"},
	--{coords = vector3(2639.5864, 4246.0562, 44.7450), sprite=51, scale=0.8, color=25, label="Nelegální Podniky"},
   -- {coords = vector3(339.3406, 291.5877, 118.1318), sprite=93, scale=0.7, color=0, label="GALAXY CLUB"},
   -- {coords = vector3(-1201.9064, -1565.0872, 4.6136), sprite=311, scale=0.7, color=0, label="POSILOVNA"},
	--{coords = vector3(-1226.5698, -1557.6350, 4.4293), sprite=846, scale=0.8, color=0, label="Obchod na Pláži"},
   -- {coords = vector3(-565.4885, -127.5050, 38.4366), sprite = 60, color = 29, scale = 0.9, label = 'LSPD STANICE'},
   -- {coords = vector3(1830.8295, 3669.5430, 42.9768), sprite = 60, color = 5, scale = 0.9, label = 'LSSD STANICE'},
   -- {coords = vector3(-435.9212, -325.8589, 34.9108), sprite = 61, color = 1, scale = 0.8, label = "NEMOCNICE"},
	--{coords = vector3(169.6670, -567.3401, 42.8729), sprite = 13, color = 39, scale = 0.8, label = "<font face='Fire Sans'>Warehouse</font>y"},
	--{coords = vector3(1684.1396, 2581.4941, 52.6346), sprite = 188, color = 17, scale = 0.8, label = "Vězení"},

    --{coords = vector3(-726.6846, -1332.7496, 1.5963), sprite = 427, color = 0, scale = 0.7, label = "PRODEJCE LODÍ"},
   -- {coords = vector3(-45.8017, -1097.8197, 26.4223), sprite = 523, color = 0, scale = 0.7, label = "PRODEJCE AUT"},  
    --{coords = vector3(-545.3132, -203.8117, 38.2151), sprite = 498, color = 0, scale = 0.7, label = "ÚŘAD"},
    --{coords = vector3(324.739990, -210.985870, 54.086315), sprite = 40, color = 5, scale = 1.0, label = "MOTEL"},

   -- {coords = vector3(145.2104, -3209.0500, 5.8576), sprite = 477, color = 0, scale = 0.7, label = "DEPO KAMIONŮ", category = 10},
   -- {coords = vector3(-1320.0717, -1263.5454, 4.5869), sprite = 317, color = 0, scale = 0.7, label = "ČIŠTĚNÍ BAZÉNŮ", category = 10},
   -- {coords = vector3(-1152.7996, -228.1989, 37.4236), sprite = 317, color = 0, scale = 0.7, label = "ZAHRADNÍK", category = 10},
    --{coords = vector3(-1594.28, 5193.03, 3.31), sprite = 427, color = 0, scale = 0.7, label = "RYBAŘENÍ", category = 10},

   
    --{coords = vector3(2518.8069, 4101.0303, 44.5215), sprite = 446, color = 0, scale = 0.7, label = "SANTA MADRE"},
   -- {coords = vector3(-1391.1777, -630.5276, 30.2140), sprite = 93, color = 27, scale = 0.7, label = "BAHAMA"}, 
  --  {coords = vector3(106.1383, -1293.3298, 29.2481), sprite = 121, color = 48, scale = 0.7, label = "VANILLA"}, 
    --{coords = vector3(196.7263, -3167.2742, 5.8146), sprite = 93, color = 0, scale = 0.7, label = "CLUB 77"}, 
    --{coords = vector3(-1836.50, -1189.44, 14.309), sprite = 267, color = 0, scale = 0.7, label = "PEARLS"}, 
  --  {coords = vector3(-559.3100, 286.0797, 91.7979), sprite = 93, color = 33, scale = 0.7, label = "TEQUI-LA-LA"}, 
    --{coords = vector3(-580.9502, -1065.8682, 22.3473), sprite = 176, color = 8, scale = 0.7, label = "UWU CAFE"}, 
    --{coords = vector3(-632.81, 229.28, 85.32), sprite = 106, color = 0, scale = 0.7, label = "BEAN MACHINE"}, 
    --{coords = vector3(798.6560, -33.8807, 26.7808), sprite = 267, color = 0, scale = 0.7, label = "PIZZA THIS"}, 
    --{coords = vector3(1988.340, 3050.0710, 54.5370), sprite = 93, color = 0, scale = 0.7, label = "YELLOW JACK"}, 
    --{coords = vector3(909.6102, -165.5477, 74.1827), sprite = 198, color = 0, scale = 0.7, label = "DOWNTOWN CAB CO."}, 
  --  {coords = vector3(177.5596, -1306.6333, 29.3302), sprite = 500, color = 46, scale = 0.7, label = "ZASTAVÁRNA"}, 
    
    
    
    
    --{coords = vector3(-1184.4036, -1651.9690, 4.3739), sprite = 122, color = 0, scale = 0.7, label = "TENNIS"}, 
    --{coords = vector3(-1287.5828, -137.4237, 45.7608), sprite = 122, color = 0, scale = 0.7, label = "TENNIS"}, 
    --{coords = vector3(-1622.9192, 258.1384, 59.5503), sprite = 122, color = 0, scale = 0.7, label = "TENNIS"}, 
    --{coords = vector3(-2902.5686, 17.3232, 11.6030), sprite = 122, color = 0, scale = 0.7, label = "TENNIS"},
    --{coords = vector3(-2950.5203, 20.231, 16.2023), sprite = 359, color = 0, scale = 0.7, label = "BASKETBALL"}, 
    --{coords = vector3(-221.033, -1535.1523, 31.6224), sprite = 359, color = 0, scale = 0.7, label = "BASKETBALL"}, 
    --{coords = vector3(-925.7955, -735.1418, 19.9251), sprite = 359, color = 0, scale = 0.7, label = "BASKETBALL"}, 
    --{coords = vector3(478.1565, -245.7159, 53.7814), sprite = 359, color = 0, scale = 0.7, label = "BASKETBALL"},

    --Dílny--

    --{coords = vector3(-338.5948, -136.9379, 39.0097), sprite = 446, color = 0, scale = 0.7, label = "LOS SANTOS CUSTOMS"},
    --{coords = vector3(-211.3723, -1323.3186, 30.8904), sprite = 446, color = 0, scale = 0.7, label = "BENNYS"},
    --{coords = vector3(101.7843, 6617.8149, 32.4749), sprite = 446, color = 0, scale = 0.7, label = "PALETO FIX"},
    --{coords = vector3(113.5118, 2635.8997, 37.338), sprite = 446, color = 0, scale = 0.7, label = "SANDY FIX"},
    --{coords = vector3(927.5821, -964.0314, 39.4999), sprite = 446, color = 0, scale = 0.7, label = "NUNES MOTOR WORKS"},
    --{coords = vector3(-1416.7284, -446.7369, 35.9097), sprite = 446, color = 0, scale = 0.7, label = "HAYES AUTO"},
    
    
}