<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastre-se — Biblioteca da Silva</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:ital,opsz,wght@0,9..144,400..700;1,9..144,400..700&family=Instrument+Sans:wght@400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="estilos.css">
</head>
<body>

<!-- Alternador de tema em CSS puro (sem JavaScript), usando :has() -->
<input type="checkbox" id="modo-claro" class="alternador-input">
<label for="modo-claro" class="alternador-tema" aria-label="Alternar entre tema claro e escuro">
        <span class="alternador-icone alternador-sol" aria-hidden="true">
            <svg viewBox="0 0 24 24"><circle cx="12" cy="12" r="4.2"/><g stroke="currentColor" stroke-width="1.6" stroke-linecap="round"><line x1="12" y1="1.5" x2="12" y2="4.5"/><line x1="12" y1="19.5" x2="12" y2="22.5"/><line x1="1.5" y1="12" x2="4.5" y2="12"/><line x1="19.5" y1="12" x2="22.5" y2="12"/><line x1="4.4" y1="4.4" x2="6.5" y2="6.5"/><line x1="17.5" y1="17.5" x2="19.6" y2="19.6"/><line x1="4.4" y1="19.6" x2="6.5" y2="17.5"/><line x1="17.5" y1="6.5" x2="19.6" y2="4.4"/></g></svg>
        </span>
    <span class="alternador-bolinha"></span>
    <span class="alternador-icone alternador-lua" aria-hidden="true">
            <svg viewBox="0 0 24 24"><path d="M20 14.5A8.5 8.5 0 1 1 9.5 4a6.8 6.8 0 0 0 10.5 10.5Z"/></svg>
        </span>
</label>

<header class="topo">
    <div class="logo">
        <a href="index.html" class="logo-nome">Biblioteca da Silva</a>
    </div>

    <nav aria-label="Principal">
        <ul>
            <li><a href="index.html#acervo">Acervo</a></li>
            <li><a href="index.html#colecoes">Coleções</a></li>
            <li><a href="index.html#sobre">Sobre nós</a></li>
            <li><a href="index.html#reservas">Reservas</a></li>
        </ul>
    </nav>

    <div class="topo-acoes">
        <details class="entrar">
            <summary>Entrar</summary>
            <form class="entrar-form">
                <div class="campo">
                    <label for="usuario">Usuário</label>
                    <input id="usuario" name="usuario" type="text" autocomplete="username">
                </div>

                <div class="campo">
                    <label for="senha-login">Senha</label>
                    <input id="senha-login" name="senha-login" type="password" autocomplete="current-password">
                </div>

                <input class="botao-entrar" type="submit" value="Entrar">
            </form>
        </details>
        <a class="cta cta-pequeno" href="cadastro.html">Cadastre-se</a>
    </div>
</header>

<main>
    <section class="secao secao-cadastro">
        <div class="cadastro-caixa">
            <h1 class="titulo-secao">Crie sua conta</h1>
            <p class="secao-texto-centro">
                Cadastre-se para reservar livros com mais agilidade e
                acompanhar as novidades do nosso acervo.
            </p>

            <!-- Formulário de cadastro -->
            <form class="form-cadastro" action="cadastro.jsp" method="post">
                <div class="campo">
                    <label for="nome">Nome completo</label>
                    <input id="nome" name="nome" type="text" placeholder="Seu nome completo" autocomplete="name" required>
                </div>

                <div class="campo">
                    <label for="email">E-mail</label>
                    <input id="email" name="email" type="email" placeholder="seuemail@exemplo.com" autocomplete="email" required>
                </div>

                <div class="campo">
                    <label for="telefone">Telefone</label>
                    <input id="telefone" name="telefone" type="tel" placeholder="(11) 90000-0000" autocomplete="tel" minlength="9" required>
                </div>

                <div class="campo">
                    <label for="senha">Senha</label>
                    <input id="senha" name="senha" type="password" placeholder="Crie uma senha" autocomplete="new-password" minlength="8" required>
                </div>

                <div class="campo">
                    <label for="repetir-senha">Repetir senha</label>
                    <input id="repetir-senha" name="repetir-senha" type="password" placeholder="Digite a senha novamente" autocomplete="new-password" minlength="8" required>
                </div>

                <input class="cta cta-form cta-cadastro" type="submit" value="Criar minha conta">
            </form>

            <p class="cadastro-rodape">
                Já tem conta? <a class="link-cadastro" href="index.html">Voltar ao início</a>
            </p>
        </div>
    </section>
</main>

<footer>
    <div class="rodape-coluna">
        <h2>Biblioteca da Silva</h2>
        <p>Rua das Palmeiras, 123 &mdash; Centro</p>
        <p>São Paulo &mdash; SP</p>
    </div>

    <div class="rodape-coluna">
        <h2>Horário</h2>
        <p>Segunda a sábado</p>
        <p>9h às 19h</p>
    </div>

    <div class="rodape-coluna">
        <h2>Contato</h2>
        <p>(11) 4002-8922</p>
        <p>contato@bibliotecadasilva.com.br</p>
    </div>

    <p class="copyright">&copy; 2026 Biblioteca da Silva. Todos os direitos reservados.</p>
</footer>

</body>
</html>\
