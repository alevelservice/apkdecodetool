package org.eclipse.paho.client.mqttv3.internal.websocket;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class WebSocketHandshake {
    private static final String ACCEPT_SALT = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    private static final String EMPTY = "";
    private static final String HTTP_HEADER_CONNECTION = "connection";
    private static final String HTTP_HEADER_CONNECTION_VALUE = "upgrade";
    private static final String HTTP_HEADER_SEC_WEBSOCKET_ACCEPT = "sec-websocket-accept";
    private static final String HTTP_HEADER_SEC_WEBSOCKET_PROTOCOL = "sec-websocket-protocol";
    private static final String HTTP_HEADER_UPGRADE = "upgrade";
    private static final String HTTP_HEADER_UPGRADE_WEBSOCKET = "websocket";
    private static final String LINE_SEPARATOR = "\r\n";
    private static final String SHA1_PROTOCOL = "SHA1";
    String host;
    InputStream input;
    OutputStream output;
    int port;
    String uri;

    public WebSocketHandshake(InputStream inputStream, OutputStream outputStream, String str, String str2, int i) {
        this.input = inputStream;
        this.output = outputStream;
        this.uri = str;
        this.host = str2;
        this.port = i;
    }

    public void execute() throws IOException {
        String encode = Base64.encode(new StringBuffer("mqtt-").append(System.currentTimeMillis() / 1000).toString());
        sendHandshakeRequest(encode);
        receiveHandshakeResponse(encode);
    }

    private void sendHandshakeRequest(String str) throws IOException {
        try {
            String str2 = "/mqtt";
            URI uri = new URI(this.uri);
            if (uri.getRawPath() != null && !uri.getRawPath().isEmpty()) {
                str2 = uri.getRawPath();
                if (uri.getRawQuery() != null && !uri.getRawQuery().isEmpty()) {
                    str2 = new StringBuffer(String.valueOf(str2)).append("?").append(uri.getRawQuery()).toString();
                }
            }
            PrintWriter printWriter = new PrintWriter(this.output);
            printWriter.print(new StringBuffer("GET ").append(str2).append(" HTTP/1.1\r\n").toString());
            printWriter.print(new StringBuffer("Host: ").append(this.host).append(":").append(this.port).append(LINE_SEPARATOR).toString());
            printWriter.print("Upgrade: websocket\r\n");
            printWriter.print("Connection: Upgrade\r\n");
            printWriter.print(new StringBuffer("Sec-WebSocket-Key: ").append(str).append(LINE_SEPARATOR).toString());
            printWriter.print("Sec-WebSocket-Protocol: mqttv3.1\r\n");
            printWriter.print("Sec-WebSocket-Version: 13\r\n");
            printWriter.print(LINE_SEPARATOR);
            printWriter.flush();
        } catch (URISyntaxException e) {
            throw new IllegalStateException(e);
        }
    }

    private void receiveHandshakeResponse(String str) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.input));
        ArrayList arrayList = new ArrayList();
        String readLine = bufferedReader.readLine();
        if (readLine == null) {
            throw new IOException("WebSocket Response header: Invalid response from Server, It may not support WebSockets.");
        }
        while (!readLine.equals("")) {
            arrayList.add(readLine);
            readLine = bufferedReader.readLine();
        }
        Map headers = getHeaders(arrayList);
        String str2 = (String) headers.get(HTTP_HEADER_CONNECTION);
        if (str2 == null || str2.equalsIgnoreCase("upgrade")) {
            throw new IOException("WebSocket Response header: Incorrect connection header");
        }
        if (!((String) headers.get("upgrade")).toLowerCase().contains(HTTP_HEADER_UPGRADE_WEBSOCKET)) {
            throw new IOException("WebSocket Response header: Incorrect upgrade.");
        }
        if (((String) headers.get(HTTP_HEADER_SEC_WEBSOCKET_PROTOCOL)) == null) {
            throw new IOException("WebSocket Response header: empty sec-websocket-protocol");
        }
        if (!headers.containsKey(HTTP_HEADER_SEC_WEBSOCKET_ACCEPT)) {
            throw new IOException("WebSocket Response header: Missing Sec-WebSocket-Accept");
        }
        try {
            verifyWebSocketKey(str, (String) headers.get(HTTP_HEADER_SEC_WEBSOCKET_ACCEPT));
        } catch (NoSuchAlgorithmException e) {
            throw new IOException(e.getMessage());
        } catch (HandshakeFailedException unused) {
            throw new IOException("WebSocket Response header: Incorrect Sec-WebSocket-Key");
        }
    }

    private Map getHeaders(ArrayList arrayList) {
        HashMap hashMap = new HashMap();
        for (int i = 1; i < arrayList.size(); i++) {
            String[] split = ((String) arrayList.get(i)).split(":");
            hashMap.put(split[0].toLowerCase(), split[1]);
        }
        return hashMap;
    }

    private void verifyWebSocketKey(String str, String str2) throws NoSuchAlgorithmException, HandshakeFailedException {
        String trim = Base64.encodeBytes(sha1(new StringBuffer(String.valueOf(str)).append("258EAFA5-E914-47DA-95CA-C5AB0DC85B11").toString())).trim();
        if (!trim.equals(trim)) {
            throw new HandshakeFailedException();
        }
    }

    private byte[] sha1(String str) throws NoSuchAlgorithmException {
        return MessageDigest.getInstance(SHA1_PROTOCOL).digest(str.getBytes());
    }
}
