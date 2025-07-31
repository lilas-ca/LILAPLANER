<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Live de Lilas 🌸</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: #fce4ec;
            color: #880e4f;
            text-align: center;
            padding: 50px;
        }
        #plan {
            display: none;
            margin-top: 20px;
            padding: 20px;
            border: 2px dashed #880e4f;
            background: #fff0f6;
        }
        input, button {
            padding: 10px;
            margin: 10px;
            font-size: 16px;
        }
        footer {
            margin-top: 60px;
            font-size: 14px;
            color: #6a1b9a;
        }
        footer a {
            color: #6a1b9a;
            text-decoration: none;
        }
        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <h1>🌸 Live de ce soir avec Lilas 🌸</h1>

    <p>Entre le code du jour pour voir le plan du live :</p>

    <input type="password" id="code" placeholder="Code du jour">
    <button onclick="verifierCode()">Voir le plan</button>

    <div id="plan">
        <h2>Thème du live : 🌟</h2>
        <p id="theme"></p>
        <h3>Plan :</h3>
        <ul id="liste-plan"></ul>
    </div>

    <!-- ✅ URL affichée en bas -->
    <footer>
        🔗 Site officiel : <a href="https://lilasplaner.com" target="_blank">https://lilasplaner.com</a>
    </footer>

    <script>
        const CODE_SECRET = "roses23";
        const THEME_DU_LIVE = "Comment booster sa confiance en live ✨";
        const
