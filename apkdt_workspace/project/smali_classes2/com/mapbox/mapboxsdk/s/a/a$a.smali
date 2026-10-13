.class Lcom/mapbox/mapboxsdk/s/a/a$a;
.super Ljava/lang/Object;
.source "HttpRequestImpl.java"

# interfaces
.implements Li/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/s/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/mapbox/mapboxsdk/http/e;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/http/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/s/a/a$a;->a:Lcom/mapbox/mapboxsdk/http/e;

    return-void
.end method

.method private a(Ljava/lang/Exception;)I
    .locals 1

    .line 28
    instance-of v0, p1, Ljava/net/NoRouteToHostException;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/net/SocketException;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/net/ProtocolException;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    instance-of p1, p1, Ljava/io/InterruptedIOException;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/s/a/a$a;Li/e;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/s/a/a$a;->a(Li/e;Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Li/e;Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Li/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 22
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Error processing the request"

    .line 23
    :goto_0
    invoke-direct {p0, p2}, Lcom/mapbox/mapboxsdk/s/a/a$a;->a(Ljava/lang/Exception;)I

    move-result p2

    .line 24
    sget-boolean v1, Lcom/mapbox/mapboxsdk/http/b;->b:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Li/e;->v()Li/z;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 25
    invoke-interface {p1}, Li/e;->v()Li/z;

    move-result-object p1

    invoke-virtual {p1}, Li/z;->g()Li/s;

    move-result-object p1

    invoke-virtual {p1}, Li/s;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p2, v0, p1}, Lcom/mapbox/mapboxsdk/http/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/s/a/a$a;->a:Lcom/mapbox/mapboxsdk/http/e;

    invoke-interface {p1, p2, v0}, Lcom/mapbox/mapboxsdk/http/e;->handleFailure(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Li/e;Li/b0;)V
    .locals 9
    .param p1    # Li/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Li/b0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p2}, Li/b0;->o()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Li/b0;->k()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "[HTTP] Request was successful (code = %s)."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mapbox/mapboxsdk/http/b;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p2}, Li/b0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Li/b0;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "No additional information"

    :goto_0
    const/4 v4, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Li/b0;->k()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    aput-object v0, v3, v2

    const-string v0, "[HTTP] Request with response = %s: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mapbox/mapboxsdk/http/b;->a(ILjava/lang/String;)V

    .line 7
    :goto_1
    invoke-virtual {p2}, Li/b0;->i()Li/c0;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x6

    const-string p2, "[HTTP] Received empty response body"

    .line 8
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/http/b;->a(ILjava/lang/String;)V

    return-void

    .line 9
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Li/c0;->i()[B

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p2}, Li/b0;->close()V

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/s/a/a$a;->a:Lcom/mapbox/mapboxsdk/http/e;

    invoke-virtual {p2}, Li/b0;->k()I

    move-result v1

    const-string p1, "ETag"

    .line 12
    invoke-virtual {p2, p1}, Li/b0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "Last-Modified"

    .line 13
    invoke-virtual {p2, p1}, Li/b0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "Cache-Control"

    .line 14
    invoke-virtual {p2, p1}, Li/b0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "Expires"

    .line 15
    invoke-virtual {p2, p1}, Li/b0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "Retry-After"

    .line 16
    invoke-virtual {p2, p1}, Li/b0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "x-rate-limit-reset"

    .line 17
    invoke-virtual {p2, p1}, Li/b0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-interface/range {v0 .. v8}, Lcom/mapbox/mapboxsdk/http/e;->onResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 19
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/mapbox/mapboxsdk/s/a/a$a;->a(Li/e;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-virtual {p2}, Li/b0;->close()V

    return-void

    :goto_2
    invoke-virtual {p2}, Li/b0;->close()V

    .line 21
    throw p1
.end method

.method public a(Li/e;Ljava/io/IOException;)V
    .locals 0
    .param p1    # Li/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/s/a/a$a;->a(Li/e;Ljava/lang/Exception;)V

    return-void
.end method
