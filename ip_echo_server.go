package main
import (
	"log"
	"fmt"
	"strings"
	"net/http"
)

func main() {
	http.HandleFunc("/ipcheck", func (w http.ResponseWriter, req *http.Request) {
		ip_addr_with_port := req.RemoteAddr;
		ip_addr := ip_addr_with_port[0:strings.LastIndex(ip_addr_with_port, ":")]
		fmt.Fprintf(w, "%s\n", ip_addr)
	})
	log.Fatal(http.ListenAndServe(":64444", nil))
}
