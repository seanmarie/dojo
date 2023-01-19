package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func setupRouter() *gin.Engine {
	r := gin.Default()
	r.GET("/ping", func(c *gin.Context) {
		c.JSON(http.StatusOK, struct{ Status string }{Status: "OK"})
	})
	r.GET("/", func(c *gin.Context) {
		c.String(http.StatusOK, "Hello, Docker! <3 <3")
	})
	return r
}

func main() {
	r := setupRouter()
	r.Run(":8080")
}
