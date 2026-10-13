.class final Lcom/mapbox/android/telemetry/v;
.super Ljava/lang/Object;
.source "GzipRequestInterceptor.java"

# interfaces
.implements Li/t;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Li/a0;)Li/a0;
    .locals 1

    .line 9
    new-instance v0, Lcom/mapbox/android/telemetry/v$a;

    invoke-direct {v0, p0, p1}, Lcom/mapbox/android/telemetry/v$a;-><init>(Lcom/mapbox/android/telemetry/v;Li/a0;)V

    return-object v0
.end method


# virtual methods
.method public a(Li/t$a;)Li/b0;
    .locals 4

    .line 1
    invoke-interface {p1}, Li/t$a;->v()Li/z;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Li/z;->a()Li/a0;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Li/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Li/z;->f()Li/z$a;

    move-result-object v2

    const-string v3, "gzip"

    .line 4
    invoke-virtual {v2, v1, v3}, Li/z$a;->b(Ljava/lang/String;Ljava/lang/String;)Li/z$a;

    .line 5
    invoke-virtual {v0}, Li/z;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Li/z;->a()Li/a0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mapbox/android/telemetry/v;->a(Li/a0;)Li/a0;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Li/z$a;->a(Ljava/lang/String;Li/a0;)Li/z$a;

    .line 6
    invoke-virtual {v2}, Li/z$a;->a()Li/z;

    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Li/t$a;->a(Li/z;)Li/b0;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    :goto_0
    invoke-interface {p1, v0}, Li/t$a;->a(Li/z;)Li/b0;

    move-result-object p1

    return-object p1
.end method
