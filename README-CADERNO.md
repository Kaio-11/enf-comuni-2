CADERNO DE CAMPO DIGITAL — ENFERMAGEM COMUNITÁRIA II

ARQUIVOS DO SITE
- index.html: página principal, com anotações, construção do relato, guias e a aba “Projeto inicial”.
- projeto-relato.html: conteúdo do primeiro arquivo, preservado integralmente como página incorporada à aba “Projeto inicial”.
- configurar_banco_caderno_supabase.sql: configuração opcional do banco para sincronização entre dispositivos.

COMO PUBLICAR NO GITHUB PAGES
1. Extraia os arquivos do ZIP.
2. Envie index.html, projeto-relato.html e configurar_banco_caderno_supabase.sql para a raiz do repositório.
3. No GitHub, abra Settings > Pages e configure a publicação pela branch principal (main) e pasta /(root).
4. Aguarde a publicação e abra o endereço do GitHub Pages.

COMPATIBILIDADE
A interface usa layout responsivo para computador e celular. A aba “Projeto inicial” mostra o primeiro arquivo dentro do site e mantém também um link para abri-lo separadamente. Teste em celular e computador após publicar.

DADOS E SINCRONIZAÇÃO
Sem configurar o Supabase, as anotações ficam no armazenamento local do navegador e não aparecem automaticamente em outro aparelho. A sincronização com Supabase é opcional e manual: configure URL e chave pública, execute o SQL, crie/acesse a conta e use os botões de carregar/enviar. Nunca coloque a chave service_role em HTML público. Faça backup JSON antes de mesclar registros.

IMPORTANTE PARA APRESENTAR AO PROFESSOR
O projeto inicial e o caderno de campo estão reunidos no mesmo site. O conteúdo do primeiro arquivo foi mantido. A estrutura do relato é uma proposta de trabalho e precisa ser validada pelos professores, inclusive quanto ao enquadramento ético e às autorizações aplicáveis. Não inclua dados identificáveis de usuários/pacientes.
