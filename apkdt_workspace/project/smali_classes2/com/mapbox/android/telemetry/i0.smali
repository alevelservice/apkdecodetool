.class Lcom/mapbox/android/telemetry/i0;
.super Ljava/lang/Object;
.source "TelemetryClientSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/telemetry/i0$b;
    }
.end annotation


# static fields
.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mapbox/android/telemetry/o;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/mapbox/android/telemetry/o;

.field private final c:Li/w;

.field private final d:Li/s;

.field private final e:Ljavax/net/ssl/SSLSocketFactory;

.field private final f:Ljavax/net/ssl/X509TrustManager;

.field private final g:Ljavax/net/ssl/HostnameVerifier;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mapbox/android/telemetry/i0$a;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/i0$a;-><init>()V

    sput-object v0, Lcom/mapbox/android/telemetry/i0;->i:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/mapbox/android/telemetry/i0$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/mapbox/android/telemetry/i0$b;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/mapbox/android/telemetry/i0;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p1, Lcom/mapbox/android/telemetry/i0$b;->b:Lcom/mapbox/android/telemetry/o;

    iput-object v0, p0, Lcom/mapbox/android/telemetry/i0;->b:Lcom/mapbox/android/telemetry/o;

    .line 4
    iget-object v0, p1, Lcom/mapbox/android/telemetry/i0$b;->c:Li/w;

    iput-object v0, p0, Lcom/mapbox/android/telemetry/i0;->c:Li/w;

    .line 5
    iget-object v0, p1, Lcom/mapbox/android/telemetry/i0$b;->d:Li/s;

    iput-object v0, p0, Lcom/mapbox/android/telemetry/i0;->d:Li/s;

    .line 6
    iget-object v0, p1, Lcom/mapbox/android/telemetry/i0$b;->e:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/mapbox/android/telemetry/i0;->e:Ljavax/net/ssl/SSLSocketFactory;

    .line 7
    iget-object v0, p1, Lcom/mapbox/android/telemetry/i0$b;->f:Ljavax/net/ssl/X509TrustManager;

    iput-object v0, p0, Lcom/mapbox/android/telemetry/i0;->f:Ljavax/net/ssl/X509TrustManager;

    .line 8
    iget-object v0, p1, Lcom/mapbox/android/telemetry/i0$b;->g:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/mapbox/android/telemetry/i0;->g:Ljavax/net/ssl/HostnameVerifier;

    .line 9
    iget-boolean p1, p1, Lcom/mapbox/android/telemetry/i0$b;->h:Z

    iput-boolean p1, p0, Lcom/mapbox/android/telemetry/i0;->h:Z

    return-void
.end method

.method static a(Ljava/lang/String;)Li/s;
    .locals 2

    .line 5
    new-instance v0, Li/s$a;

    invoke-direct {v0}, Li/s$a;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Li/s$a;->e(Ljava/lang/String;)Li/s$a;

    .line 6
    invoke-virtual {v0, p0}, Li/s$a;->c(Ljava/lang/String;)Li/s$a;

    .line 7
    invoke-virtual {v0}, Li/s$a;->a()Li/s;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/mapbox/android/telemetry/e;[Li/t;)Li/w;
    .locals 4

    .line 8
    new-instance v0, Lcom/mapbox/android/telemetry/f;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/f;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/mapbox/android/telemetry/i0;->c:Li/w;

    invoke-virtual {v1}, Li/w;->D()Li/w$b;

    move-result-object v1

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Li/w$b;->a(Z)Li/w$b;

    iget-object v3, p0, Lcom/mapbox/android/telemetry/i0;->b:Lcom/mapbox/android/telemetry/o;

    .line 11
    invoke-virtual {v0, v3, p1}, Lcom/mapbox/android/telemetry/f;->a(Lcom/mapbox/android/telemetry/o;Lcom/mapbox/android/telemetry/e;)Li/g;

    move-result-object p1

    invoke-virtual {v1, p1}, Li/w$b;->a(Li/g;)Li/w$b;

    const/4 p1, 0x2

    new-array p1, p1, [Li/k;

    sget-object v0, Li/k;->g:Li/k;

    const/4 v3, 0x0

    aput-object v0, p1, v3

    sget-object v0, Li/k;->h:Li/k;

    aput-object v0, p1, v2

    .line 12
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Li/w$b;->a(Ljava/util/List;)Li/w$b;

    if-eqz p2, :cond_0

    .line 13
    array-length p1, p2

    :goto_0
    if-ge v3, p1, :cond_0

    aget-object v0, p2, v3

    .line 14
    invoke-virtual {v1, v0}, Li/w$b;->a(Li/t;)Li/w$b;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/mapbox/android/telemetry/i0;->e:Ljavax/net/ssl/SSLSocketFactory;

    iget-object p2, p0, Lcom/mapbox/android/telemetry/i0;->f:Ljavax/net/ssl/X509TrustManager;

    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/telemetry/i0;->a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/mapbox/android/telemetry/i0;->e:Ljavax/net/ssl/SSLSocketFactory;

    iget-object p2, p0, Lcom/mapbox/android/telemetry/i0;->f:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, p1, p2}, Li/w$b;->a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Li/w$b;

    .line 17
    iget-object p1, p0, Lcom/mapbox/android/telemetry/i0;->g:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, p1}, Li/w$b;->a(Ljavax/net/ssl/HostnameVerifier;)Li/w$b;

    .line 18
    :cond_1
    invoke-virtual {v1}, Li/w$b;->a()Li/w;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic e()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/mapbox/android/telemetry/i0;->i:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method a()Li/s;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mapbox/android/telemetry/i0;->d:Li/s;

    return-object v0
.end method

.method a(Lcom/mapbox/android/telemetry/e;)Li/w;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mapbox/android/telemetry/i0;->a(Lcom/mapbox/android/telemetry/e;[Li/t;)Li/w;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/mapbox/android/telemetry/e;I)Li/w;
    .locals 2

    const/4 p2, 0x1

    new-array p2, p2, [Li/t;

    .line 1
    new-instance v0, Lcom/mapbox/android/telemetry/v;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/v;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/telemetry/i0;->a(Lcom/mapbox/android/telemetry/e;[Li/t;)Li/w;

    move-result-object p1

    return-object p1
.end method

.method b()Lcom/mapbox/android/telemetry/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/i0;->b:Lcom/mapbox/android/telemetry/o;

    return-object v0
.end method

.method c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/android/telemetry/i0;->h:Z

    return v0
.end method

.method d()Lcom/mapbox/android/telemetry/i0$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/mapbox/android/telemetry/i0$b;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/i0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mapbox/android/telemetry/i0$b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mapbox/android/telemetry/i0;->b:Lcom/mapbox/android/telemetry/o;

    .line 2
    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/i0$b;->a(Lcom/mapbox/android/telemetry/o;)Lcom/mapbox/android/telemetry/i0$b;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/i0;->c:Li/w;

    .line 3
    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/i0$b;->a(Li/w;)Lcom/mapbox/android/telemetry/i0$b;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/i0;->d:Li/s;

    .line 4
    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/i0$b;->a(Li/s;)Lcom/mapbox/android/telemetry/i0$b;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/i0;->e:Ljavax/net/ssl/SSLSocketFactory;

    .line 5
    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/i0$b;->a(Ljavax/net/ssl/SSLSocketFactory;)Lcom/mapbox/android/telemetry/i0$b;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/i0;->f:Ljavax/net/ssl/X509TrustManager;

    .line 6
    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/i0$b;->a(Ljavax/net/ssl/X509TrustManager;)Lcom/mapbox/android/telemetry/i0$b;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/i0;->g:Ljavax/net/ssl/HostnameVerifier;

    .line 7
    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/i0$b;->a(Ljavax/net/ssl/HostnameVerifier;)Lcom/mapbox/android/telemetry/i0$b;

    iget-boolean v1, p0, Lcom/mapbox/android/telemetry/i0;->h:Z

    .line 8
    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/i0$b;->a(Z)Lcom/mapbox/android/telemetry/i0$b;

    return-object v0
.end method
