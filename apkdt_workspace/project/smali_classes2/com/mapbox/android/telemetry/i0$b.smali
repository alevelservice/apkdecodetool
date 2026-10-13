.class final Lcom/mapbox/android/telemetry/i0$b;
.super Ljava/lang/Object;
.source "TelemetryClientSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/android/telemetry/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/mapbox/android/telemetry/o;

.field c:Li/w;

.field d:Li/s;

.field e:Ljavax/net/ssl/SSLSocketFactory;

.field f:Ljavax/net/ssl/X509TrustManager;

.field g:Ljavax/net/ssl/HostnameVerifier;

.field h:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/mapbox/android/telemetry/o;->COM:Lcom/mapbox/android/telemetry/o;

    iput-object v0, p0, Lcom/mapbox/android/telemetry/i0$b;->b:Lcom/mapbox/android/telemetry/o;

    .line 3
    new-instance v0, Li/w;

    invoke-direct {v0}, Li/w;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/telemetry/i0$b;->c:Li/w;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mapbox/android/telemetry/i0$b;->d:Li/s;

    .line 5
    iput-object v0, p0, Lcom/mapbox/android/telemetry/i0$b;->e:Ljavax/net/ssl/SSLSocketFactory;

    .line 6
    iput-object v0, p0, Lcom/mapbox/android/telemetry/i0$b;->f:Ljavax/net/ssl/X509TrustManager;

    .line 7
    iput-object v0, p0, Lcom/mapbox/android/telemetry/i0$b;->g:Ljavax/net/ssl/HostnameVerifier;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/mapbox/android/telemetry/i0$b;->h:Z

    .line 9
    iput-object p1, p0, Lcom/mapbox/android/telemetry/i0$b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a(Lcom/mapbox/android/telemetry/o;)Lcom/mapbox/android/telemetry/i0$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/android/telemetry/i0$b;->b:Lcom/mapbox/android/telemetry/o;

    return-object p0
.end method

.method a(Li/s;)Lcom/mapbox/android/telemetry/i0$b;
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/mapbox/android/telemetry/i0$b;->d:Li/s;

    :cond_0
    return-object p0
.end method

.method a(Li/w;)Lcom/mapbox/android/telemetry/i0$b;
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/mapbox/android/telemetry/i0$b;->c:Li/w;

    :cond_0
    return-object p0
.end method

.method a(Ljavax/net/ssl/HostnameVerifier;)Lcom/mapbox/android/telemetry/i0$b;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/mapbox/android/telemetry/i0$b;->g:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method a(Ljavax/net/ssl/SSLSocketFactory;)Lcom/mapbox/android/telemetry/i0$b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mapbox/android/telemetry/i0$b;->e:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method a(Ljavax/net/ssl/X509TrustManager;)Lcom/mapbox/android/telemetry/i0$b;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/mapbox/android/telemetry/i0$b;->f:Ljavax/net/ssl/X509TrustManager;

    return-object p0
.end method

.method a(Z)Lcom/mapbox/android/telemetry/i0$b;
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/mapbox/android/telemetry/i0$b;->h:Z

    return-object p0
.end method

.method a()Lcom/mapbox/android/telemetry/i0;
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/mapbox/android/telemetry/i0$b;->d:Li/s;

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lcom/mapbox/android/telemetry/i0;->e()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mapbox/android/telemetry/i0$b;->b:Lcom/mapbox/android/telemetry/o;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lcom/mapbox/android/telemetry/i0;->a(Ljava/lang/String;)Li/s;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/telemetry/i0$b;->d:Li/s;

    .line 11
    :cond_0
    new-instance v0, Lcom/mapbox/android/telemetry/i0;

    invoke-direct {v0, p0}, Lcom/mapbox/android/telemetry/i0;-><init>(Lcom/mapbox/android/telemetry/i0$b;)V

    return-object v0
.end method
