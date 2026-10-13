.class public Lcom/pichillilorenzo/flutter_inappwebview/r;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pichillilorenzo/flutter_inappwebview/r$d;,
        Lcom/pichillilorenzo/flutter_inappwebview/r$e;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/r$d;
    .locals 3

    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-static {p0}, Lcom/pichillilorenzo/flutter_inappwebview/r;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 13
    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p2, p0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 15
    invoke-virtual {p2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1

    .line 18
    instance-of v2, p1, Ljava/security/PrivateKey;

    if-eqz v2, :cond_1

    .line 19
    check-cast p1, Ljava/security/PrivateKey;

    .line 20
    invoke-virtual {p2, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    .line 21
    check-cast p2, Ljava/security/cert/X509Certificate;

    aput-object p2, v1, v2

    .line 22
    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview/r$d;

    invoke-direct {p2, p1, v1}, Lcom/pichillilorenzo/flutter_inappwebview/r$d;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    move-object v0, p2

    .line 23
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public static a(Lg/a/c/a/k;Ljava/lang/String;Ljava/lang/Object;)Lcom/pichillilorenzo/flutter_inappwebview/r$e;
    .locals 12

    .line 4
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    const-string v8, "result"

    .line 6
    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "error"

    .line 7
    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    new-instance v11, Lcom/pichillilorenzo/flutter_inappwebview/r$a;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/pichillilorenzo/flutter_inappwebview/r$a;-><init>(Lg/a/c/a/k;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 11
    new-instance p0, Lcom/pichillilorenzo/flutter_inappwebview/r$e;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/r$e;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a()Li/w;
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 26
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/r$b;

    invoke-direct {v1}, Lcom/pichillilorenzo/flutter_inappwebview/r$b;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SSL"

    .line 27
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v3, 0x0

    .line 28
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v0, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 29
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 30
    new-instance v3, Li/w$b;

    invoke-direct {v3}, Li/w$b;-><init>()V

    .line 31
    aget-object v0, v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v3, v1, v0}, Li/w$b;->a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Li/w$b;

    .line 32
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/r$c;

    invoke-direct {v0}, Lcom/pichillilorenzo/flutter_inappwebview/r$c;-><init>()V

    invoke-virtual {v3, v0}, Li/w$b;->a(Ljavax/net/ssl/HostnameVerifier;)Li/w$b;

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    .line 34
    invoke-virtual {v3, v1, v2, v0}, Li/w$b;->b(JLjava/util/concurrent/TimeUnit;)Li/w$b;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    invoke-virtual {v3, v1, v2, v0}, Li/w$b;->d(JLjava/util/concurrent/TimeUnit;)Li/w$b;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 36
    invoke-virtual {v3, v1, v2, v0}, Li/w$b;->c(JLjava/util/concurrent/TimeUnit;)Li/w$b;

    .line 37
    invoke-virtual {v3}, Li/w$b;->a()Li/w;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->b:Lg/a/c/a/m$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lg/a/c/a/m$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->d:Lio/flutter/embedding/engine/g/a$a;

    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/g/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    :goto_0
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/net/http/SslCertificate;)Ljava/security/cert/X509Certificate;
    .locals 3

    .line 39
    invoke-static {p0}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "x509-certificate"

    .line 40
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 41
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 42
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    .line 43
    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->b:Lg/a/c/a/m$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lg/a/c/a/m$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->d:Lio/flutter/embedding/engine/g/a$a;

    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/g/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/pichillilorenzo/flutter_inappwebview/r;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 3
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 4
    throw p0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    throw v1
.end method
