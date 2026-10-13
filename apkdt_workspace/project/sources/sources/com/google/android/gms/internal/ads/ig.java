package com.google.android.gms.internal.ads;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ig extends SSLSocketFactory {

    /* renamed from: a, reason: collision with root package name */
    private SSLSocketFactory f7284a = (SSLSocketFactory) SSLSocketFactory.getDefault();

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ jg f7285b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ig(jg jgVar) {
        this.f7285b = jgVar;
    }

    private final Socket a(Socket socket) {
        int i2;
        int i3;
        i2 = this.f7285b.o;
        if (i2 > 0) {
            i3 = this.f7285b.o;
            socket.setReceiveBufferSize(i3);
        }
        this.f7285b.a(socket);
        return socket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i2, boolean z) {
        Socket createSocket = this.f7284a.createSocket(socket, str, i2, z);
        a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f7284a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f7284a.getSupportedCipherSuites();
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i2) {
        Socket createSocket = this.f7284a.createSocket(str, i2);
        a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i2, InetAddress inetAddress, int i3) {
        Socket createSocket = this.f7284a.createSocket(str, i2, inetAddress, i3);
        a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i2) {
        Socket createSocket = this.f7284a.createSocket(inetAddress, i2);
        a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i2, InetAddress inetAddress2, int i3) {
        Socket createSocket = this.f7284a.createSocket(inetAddress, i2, inetAddress2, i3);
        a(createSocket);
        return createSocket;
    }
}
