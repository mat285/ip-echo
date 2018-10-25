package main

import (
	web "github.com/blend/go-sdk/web"
	logger "github.com/blendlabs/go-logger"
)

func main() {
	app := web.New()

	app.GET("/", func(r *web.Ctx) web.Result {
		return r.Text().Result(r.Request().RemoteAddr)
	})

	logger.FatalExit(app.Start())
}
