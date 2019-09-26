package main

import (
	"fmt"
	"io"
	"net/http"
	"os"
	"strings"
	"bytes"
)

func main() {
	for _, url1 := range os.Args[1:] {
		var url bytes.Buffer

		if !strings.HasPrefix(url1, "http://") {
			url.WriteString("http://")
		}

		url.WriteString(url1)

		resp, err := http.Get(url.String())
		if err != nil {
			fmt.Fprintf(os.Stderr, "fetch: %v\n", err)
			os.Exit(1)
		}
		_, err1 := io.Copy(os.Stdout, resp.Body)
		resp.Body.Close()
		if err1 != nil {
			fmt.Fprintf(os.Stderr, "fetch: io.Copy error - %s: %v\n", url, err1)
			os.Exit(1)
		}
	}
}

