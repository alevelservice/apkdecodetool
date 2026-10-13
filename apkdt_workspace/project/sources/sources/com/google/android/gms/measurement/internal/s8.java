package com.google.android.gms.measurement.internal;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.SocketAddress;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Arrays;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class s8 extends SSLSocket {

    /* renamed from: e, reason: collision with root package name */
    private final SSLSocket f13225e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s8(q8 q8Var, SSLSocket sSLSocket) {
        this.f13225e = sSLSocket;
    }

    @Override // javax.net.ssl.SSLSocket
    public final void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f13225e.addHandshakeCompletedListener(handshakeCompletedListener);
    }

    @Override // java.net.Socket
    public final void bind(SocketAddress socketAddress) {
        this.f13225e.bind(socketAddress);
    }

    @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f13225e.close();
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress) {
        this.f13225e.connect(socketAddress);
    }

    public final boolean equals(Object obj) {
        return this.f13225e.equals(obj);
    }

    @Override // java.net.Socket
    public final SocketChannel getChannel() {
        return this.f13225e.getChannel();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getEnableSessionCreation() {
        return this.f13225e.getEnableSessionCreation();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getEnabledCipherSuites() {
        return this.f13225e.getEnabledCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getEnabledProtocols() {
        return this.f13225e.getEnabledProtocols();
    }

    @Override // java.net.Socket
    public final InetAddress getInetAddress() {
        return this.f13225e.getInetAddress();
    }

    @Override // java.net.Socket
    public final InputStream getInputStream() {
        return this.f13225e.getInputStream();
    }

    @Override // java.net.Socket
    public final boolean getKeepAlive() {
        return this.f13225e.getKeepAlive();
    }

    @Override // java.net.Socket
    public final InetAddress getLocalAddress() {
        return this.f13225e.getLocalAddress();
    }

    @Override // java.net.Socket
    public final int getLocalPort() {
        return this.f13225e.getLocalPort();
    }

    @Override // java.net.Socket
    public final SocketAddress getLocalSocketAddress() {
        return this.f13225e.getLocalSocketAddress();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getNeedClientAuth() {
        return this.f13225e.getNeedClientAuth();
    }

    @Override // java.net.Socket
    public final boolean getOOBInline() {
        return this.f13225e.getOOBInline();
    }

    @Override // java.net.Socket
    public final OutputStream getOutputStream() {
        return this.f13225e.getOutputStream();
    }

    @Override // java.net.Socket
    public final int getPort() {
        return this.f13225e.getPort();
    }

    @Override // java.net.Socket
    public final synchronized int getReceiveBufferSize() {
        return this.f13225e.getReceiveBufferSize();
    }

    @Override // java.net.Socket
    public final SocketAddress getRemoteSocketAddress() {
        return this.f13225e.getRemoteSocketAddress();
    }

    @Override // java.net.Socket
    public final boolean getReuseAddress() {
        return this.f13225e.getReuseAddress();
    }

    @Override // java.net.Socket
    public final synchronized int getSendBufferSize() {
        return this.f13225e.getSendBufferSize();
    }

    @Override // javax.net.ssl.SSLSocket
    public final SSLSession getSession() {
        return this.f13225e.getSession();
    }

    @Override // java.net.Socket
    public final int getSoLinger() {
        return this.f13225e.getSoLinger();
    }

    @Override // java.net.Socket
    public final synchronized int getSoTimeout() {
        return this.f13225e.getSoTimeout();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getSupportedCipherSuites() {
        return this.f13225e.getSupportedCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocket
    public final String[] getSupportedProtocols() {
        return this.f13225e.getSupportedProtocols();
    }

    @Override // java.net.Socket
    public final boolean getTcpNoDelay() {
        return this.f13225e.getTcpNoDelay();
    }

    @Override // java.net.Socket
    public final int getTrafficClass() {
        return this.f13225e.getTrafficClass();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getUseClientMode() {
        return this.f13225e.getUseClientMode();
    }

    @Override // javax.net.ssl.SSLSocket
    public final boolean getWantClientAuth() {
        return this.f13225e.getWantClientAuth();
    }

    @Override // java.net.Socket
    public final boolean isBound() {
        return this.f13225e.isBound();
    }

    @Override // java.net.Socket
    public final boolean isClosed() {
        return this.f13225e.isClosed();
    }

    @Override // java.net.Socket
    public final boolean isConnected() {
        return this.f13225e.isConnected();
    }

    @Override // java.net.Socket
    public final boolean isInputShutdown() {
        return this.f13225e.isInputShutdown();
    }

    @Override // java.net.Socket
    public final boolean isOutputShutdown() {
        return this.f13225e.isOutputShutdown();
    }

    @Override // javax.net.ssl.SSLSocket
    public final void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f13225e.removeHandshakeCompletedListener(handshakeCompletedListener);
    }

    @Override // java.net.Socket
    public final void sendUrgentData(int i2) {
        this.f13225e.sendUrgentData(i2);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnableSessionCreation(boolean z) {
        this.f13225e.setEnableSessionCreation(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnabledCipherSuites(String[] strArr) {
        this.f13225e.setEnabledCipherSuites(strArr);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setEnabledProtocols(String[] strArr) {
        if (strArr != null && Arrays.asList(strArr).contains("SSLv3")) {
            ArrayList arrayList = new ArrayList(Arrays.asList(this.f13225e.getEnabledProtocols()));
            if (arrayList.size() > 1) {
                arrayList.remove("SSLv3");
            }
            strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
        this.f13225e.setEnabledProtocols(strArr);
    }

    @Override // java.net.Socket
    public final void setKeepAlive(boolean z) {
        this.f13225e.setKeepAlive(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setNeedClientAuth(boolean z) {
        this.f13225e.setNeedClientAuth(z);
    }

    @Override // java.net.Socket
    public final void setOOBInline(boolean z) {
        this.f13225e.setOOBInline(z);
    }

    @Override // java.net.Socket
    public final void setPerformancePreferences(int i2, int i3, int i4) {
        this.f13225e.setPerformancePreferences(i2, i3, i4);
    }

    @Override // java.net.Socket
    public final synchronized void setReceiveBufferSize(int i2) {
        this.f13225e.setReceiveBufferSize(i2);
    }

    @Override // java.net.Socket
    public final void setReuseAddress(boolean z) {
        this.f13225e.setReuseAddress(z);
    }

    @Override // java.net.Socket
    public final synchronized void setSendBufferSize(int i2) {
        this.f13225e.setSendBufferSize(i2);
    }

    @Override // java.net.Socket
    public final void setSoLinger(boolean z, int i2) {
        this.f13225e.setSoLinger(z, i2);
    }

    @Override // java.net.Socket
    public final synchronized void setSoTimeout(int i2) {
        this.f13225e.setSoTimeout(i2);
    }

    @Override // java.net.Socket
    public final void setTcpNoDelay(boolean z) {
        this.f13225e.setTcpNoDelay(z);
    }

    @Override // java.net.Socket
    public final void setTrafficClass(int i2) {
        this.f13225e.setTrafficClass(i2);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setUseClientMode(boolean z) {
        this.f13225e.setUseClientMode(z);
    }

    @Override // javax.net.ssl.SSLSocket
    public final void setWantClientAuth(boolean z) {
        this.f13225e.setWantClientAuth(z);
    }

    @Override // java.net.Socket
    public final void shutdownInput() {
        this.f13225e.shutdownInput();
    }

    @Override // java.net.Socket
    public final void shutdownOutput() {
        this.f13225e.shutdownOutput();
    }

    @Override // javax.net.ssl.SSLSocket
    public final void startHandshake() {
        this.f13225e.startHandshake();
    }

    @Override // javax.net.ssl.SSLSocket, java.net.Socket
    public final String toString() {
        return this.f13225e.toString();
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress, int i2) {
        this.f13225e.connect(socketAddress, i2);
    }
}
