cmd_Release/obj.target/node_libcurl.node := g++ -shared -pthread -rdynamic -m64  -Wl,-soname=node_libcurl.node -o Release/obj.target/node_libcurl.node -Wl,--start-group Release/obj.target/node_libcurl/src/node_libcurl.o Release/obj.target/node_libcurl/src/Easy.o Release/obj.target/node_libcurl/src/Share.o Release/obj.target/node_libcurl/src/Multi.o Release/obj.target/node_libcurl/src/Curl.o Release/obj.target/node_libcurl/src/CurlHttpPost.o Release/obj.target/node_libcurl/src/string_format.o Release/obj.target/node_libcurl/src/strndup.o -Wl,--end-group -L/usr/lib/x86_64-linux-gnu -lcurl
