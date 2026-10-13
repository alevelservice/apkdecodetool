package com.google.android.gms.measurement.internal;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes.dex */
final class q8 extends SSLSocketFactory {

    /* renamed from: a, reason: collision with root package name */
    private final SSLSocketFactory f13177a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q8() {
        this(HttpsURLConnection.getDefaultSSLSocketFactory());
    }

    private final SSLSocket a(SSLSocket sSLSocket) {
        return new s8(this, sSLSocket);
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i2, boolean z) {
        return a((SSLSocket) this.f13177a.createSocket(socket, str, i2, z));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f13177a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f13177a.getSupportedCipherSuites();
    }

    private q8(SSLSocketFactory sSLSocketFactory) {
        this.f13177a = sSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i2) {
        return a((SSLSocket) this.f13177a.createSocket(str, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i2) {
        return a((SSLSocket) this.f13177a.createSocket(inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i2, InetAddress inetAddress, int i3) {
        return a((SSLSocket) this.f13177a.createSocket(str, i2, inetAddress, i3));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i2, InetAddress inetAddress2, int i3) {
        return a((SSLSocket) this.f13177a.createSocket(inetAddress, i2, inetAddress2, i3));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() {
        return a((SSLSocket) this.f13177a.createSocket());
    }
}
