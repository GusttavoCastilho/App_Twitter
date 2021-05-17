use Mix.Config

config :app_twitter, Apptwitter.Scheduler,
  jobs: [
    {"* * * * *",
     fn ->
       AppTwitter.FileReader.ler_texto_arquivo(
         Path.join("#{:code.priv_dir(:app_twitter)}", "exemplo.txt")
       )
       |> Apptwitter.TweetServer.tweet()
     end}
  ]

# config :extwitter, :oauth, [
#   consumer_key: "2xmKe1dPQTsLZ3zOkfEqatteJ",
#   consumer_secret: "YO3v2f1x7QV9boPgHtgpMpjQn2aKuXIDUVBnJY5fVxMgMoKrHl",
#   access_token: "923893338213900288-Qlrskh1myzi9YnREmy2tcgW94ovIZEz",
#   access_token_secret: "pB0HSkTb9MnbHH2IIxaI5nCygFTP3ryl43WRjBTwyXgST"
# ]
