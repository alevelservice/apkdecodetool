.class public final Li/g0/g/j;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Li/t;


# instance fields
.field private final a:Li/w;

.field private volatile b:Li/g0/f/g;

.field private c:Ljava/lang/Object;

.field private volatile d:Z


# direct methods
.method public constructor <init>(Li/w;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/g0/g/j;->a:Li/w;

    return-void
.end method

.method private a(Li/b0;I)I
    .locals 1

    const-string v0, "Retry-After"

    .line 98
    invoke-virtual {p1, v0}, Li/b0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    const-string p2, "\\d+"

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method private a(Li/s;)Li/a;
    .locals 17

    move-object/from16 v0, p0

    .line 43
    invoke-virtual/range {p1 .. p1}, Li/s;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, v0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {v1}, Li/w;->M()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 45
    iget-object v1, v0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {v1}, Li/w;->z()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 46
    iget-object v3, v0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {v3}, Li/w;->c()Li/g;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 47
    :goto_0
    new-instance v1, Li/a;

    invoke-virtual/range {p1 .. p1}, Li/s;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Li/s;->j()I

    move-result v6

    iget-object v2, v0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {v2}, Li/w;->n()Li/o;

    move-result-object v7

    iget-object v2, v0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {v2}, Li/w;->L()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Li/g0/g/j;->a:Li/w;

    .line 48
    invoke-virtual {v2}, Li/w;->H()Li/b;

    move-result-object v12

    iget-object v2, v0, Li/g0/g/j;->a:Li/w;

    .line 49
    invoke-virtual {v2}, Li/w;->G()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {v2}, Li/w;->F()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {v2}, Li/w;->f()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {v2}, Li/w;->I()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Li/a;-><init>(Ljava/lang/String;ILi/o;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Li/g;Li/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private a(Li/b0;Li/d0;)Li/z;
    .locals 6

    if-eqz p1, :cond_14

    .line 61
    invoke-virtual {p1}, Li/b0;->k()I

    move-result v0

    .line 62
    invoke-virtual {p1}, Li/b0;->t()Li/z;

    move-result-object v1

    invoke-virtual {v1}, Li/z;->e()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_a

    const/16 v2, 0x134

    if-eq v0, v2, :cond_a

    const/16 v2, 0x191

    if-eq v0, v2, :cond_9

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_6

    const/16 v2, 0x197

    if-eq v0, v2, :cond_4

    const/16 p2, 0x198

    if-eq v0, p2, :cond_0

    packed-switch v0, :pswitch_data_0

    return-object v4

    .line 63
    :cond_0
    iget-object v0, p0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {v0}, Li/w;->K()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v4

    .line 64
    :cond_1
    invoke-virtual {p1}, Li/b0;->t()Li/z;

    move-result-object v0

    invoke-virtual {v0}, Li/z;->a()Li/a0;

    .line 65
    invoke-virtual {p1}, Li/b0;->r()Li/b0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {p1}, Li/b0;->r()Li/b0;

    move-result-object v0

    invoke-virtual {v0}, Li/b0;->k()I

    move-result v0

    if-ne v0, p2, :cond_2

    return-object v4

    :cond_2
    const/4 p2, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Li/g0/g/j;->a(Li/b0;I)I

    move-result p2

    if-lez p2, :cond_3

    return-object v4

    .line 68
    :cond_3
    invoke-virtual {p1}, Li/b0;->t()Li/z;

    move-result-object p1

    return-object p1

    .line 69
    :cond_4
    invoke-virtual {p2}, Li/d0;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_5

    .line 71
    iget-object v0, p0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {v0}, Li/w;->H()Li/b;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Li/b;->a(Li/d0;Li/b0;)Li/z;

    move-result-object p1

    return-object p1

    .line 72
    :cond_5
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_6
    invoke-virtual {p1}, Li/b0;->r()Li/b0;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 74
    invoke-virtual {p1}, Li/b0;->r()Li/b0;

    move-result-object p2

    invoke-virtual {p2}, Li/b0;->k()I

    move-result p2

    if-ne p2, v2, :cond_7

    return-object v4

    :cond_7
    const p2, 0x7fffffff

    .line 75
    invoke-direct {p0, p1, p2}, Li/g0/g/j;->a(Li/b0;I)I

    move-result p2

    if-nez p2, :cond_8

    .line 76
    invoke-virtual {p1}, Li/b0;->t()Li/z;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v4

    .line 77
    :cond_9
    iget-object v0, p0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {v0}, Li/w;->a()Li/b;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Li/b;->a(Li/d0;Li/b0;)Li/z;

    move-result-object p1

    return-object p1

    .line 78
    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "HEAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    return-object v4

    .line 79
    :cond_b
    :pswitch_0
    iget-object p2, p0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {p2}, Li/w;->x()Z

    move-result p2

    if-nez p2, :cond_c

    return-object v4

    :cond_c
    const-string p2, "Location"

    .line 80
    invoke-virtual {p1, p2}, Li/b0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_d

    return-object v4

    .line 81
    :cond_d
    invoke-virtual {p1}, Li/b0;->t()Li/z;

    move-result-object v0

    invoke-virtual {v0}, Li/z;->g()Li/s;

    move-result-object v0

    invoke-virtual {v0, p2}, Li/s;->b(Ljava/lang/String;)Li/s;

    move-result-object p2

    if-nez p2, :cond_e

    return-object v4

    .line 82
    :cond_e
    invoke-virtual {p2}, Li/s;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Li/b0;->t()Li/z;

    move-result-object v2

    invoke-virtual {v2}, Li/z;->g()Li/s;

    move-result-object v2

    invoke-virtual {v2}, Li/s;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 83
    iget-object v0, p0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {v0}, Li/w;->y()Z

    move-result v0

    if-nez v0, :cond_f

    return-object v4

    .line 84
    :cond_f
    invoke-virtual {p1}, Li/b0;->t()Li/z;

    move-result-object v0

    invoke-virtual {v0}, Li/z;->f()Li/z$a;

    move-result-object v0

    .line 85
    invoke-static {v1}, Li/g0/g/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 86
    invoke-static {v1}, Li/g0/g/f;->d(Ljava/lang/String;)Z

    move-result v2

    .line 87
    invoke-static {v1}, Li/g0/g/f;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 88
    invoke-virtual {v0, v3, v4}, Li/z$a;->a(Ljava/lang/String;Li/a0;)Li/z$a;

    goto :goto_0

    :cond_10
    if-eqz v2, :cond_11

    .line 89
    invoke-virtual {p1}, Li/b0;->t()Li/z;

    move-result-object v3

    invoke-virtual {v3}, Li/z;->a()Li/a0;

    move-result-object v4

    .line 90
    :cond_11
    invoke-virtual {v0, v1, v4}, Li/z$a;->a(Ljava/lang/String;Li/a0;)Li/z$a;

    :goto_0
    if-nez v2, :cond_12

    const-string v1, "Transfer-Encoding"

    .line 91
    invoke-virtual {v0, v1}, Li/z$a;->a(Ljava/lang/String;)Li/z$a;

    const-string v1, "Content-Length"

    .line 92
    invoke-virtual {v0, v1}, Li/z$a;->a(Ljava/lang/String;)Li/z$a;

    const-string v1, "Content-Type"

    .line 93
    invoke-virtual {v0, v1}, Li/z$a;->a(Ljava/lang/String;)Li/z$a;

    .line 94
    :cond_12
    invoke-direct {p0, p1, p2}, Li/g0/g/j;->a(Li/b0;Li/s;)Z

    move-result p1

    if-nez p1, :cond_13

    const-string p1, "Authorization"

    .line 95
    invoke-virtual {v0, p1}, Li/z$a;->a(Ljava/lang/String;)Li/z$a;

    .line 96
    :cond_13
    invoke-virtual {v0, p2}, Li/z$a;->a(Li/s;)Li/z$a;

    invoke-virtual {v0}, Li/z$a;->a()Li/z;

    move-result-object p1

    return-object p1

    .line 97
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Li/b0;Li/s;)Z
    .locals 2

    .line 101
    invoke-virtual {p1}, Li/b0;->t()Li/z;

    move-result-object p1

    invoke-virtual {p1}, Li/z;->g()Li/s;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Li/s;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Li/s;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p1}, Li/s;->j()I

    move-result v0

    invoke-virtual {p2}, Li/s;->j()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p1}, Li/s;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Li/s;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Ljava/io/IOException;Li/g0/f/g;ZLi/z;)Z
    .locals 2

    .line 50
    invoke-virtual {p2, p1}, Li/g0/f/g;->a(Ljava/io/IOException;)V

    .line 51
    iget-object v0, p0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {v0}, Li/w;->K()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    .line 52
    invoke-virtual {p4}, Li/z;->a()Li/a0;

    .line 53
    :cond_1
    invoke-direct {p0, p1, p3}, Li/g0/g/j;->a(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 54
    :cond_2
    invoke-virtual {p2}, Li/g0/f/g;->d()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/io/IOException;Z)Z
    .locals 3

    .line 55
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 56
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 57
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 58
    :cond_2
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_3

    .line 59
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_3

    return v1

    .line 60
    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2
.end method


# virtual methods
.method public a(Li/t$a;)Li/b0;
    .locals 14

    .line 5
    invoke-interface {p1}, Li/t$a;->v()Li/z;

    move-result-object v0

    .line 6
    check-cast p1, Li/g0/g/g;

    .line 7
    invoke-virtual {p1}, Li/g0/g/g;->d()Li/e;

    move-result-object v7

    .line 8
    invoke-virtual {p1}, Li/g0/g/g;->f()Li/p;

    move-result-object v8

    .line 9
    new-instance v9, Li/g0/f/g;

    iget-object v1, p0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {v1}, Li/w;->e()Li/j;

    move-result-object v2

    .line 10
    invoke-virtual {v0}, Li/z;->g()Li/s;

    move-result-object v1

    invoke-direct {p0, v1}, Li/g0/g/j;->a(Li/s;)Li/a;

    move-result-object v3

    iget-object v6, p0, Li/g0/g/j;->c:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Li/g0/f/g;-><init>(Li/j;Li/a;Li/e;Li/p;Ljava/lang/Object;)V

    .line 11
    iput-object v9, p0, Li/g0/g/j;->b:Li/g0/f/g;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v11

    const/4 v2, 0x0

    .line 12
    :goto_0
    iget-boolean v3, p0, Li/g0/g/j;->d:Z

    if-nez v3, :cond_8

    .line 13
    :try_start_0
    invoke-virtual {p1, v0, v9, v11, v11}, Li/g0/g/g;->a(Li/z;Li/g0/f/g;Li/g0/g/c;Li/g0/f/c;)Li/b0;

    move-result-object v0
    :try_end_0
    .catch Li/g0/f/e; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v0}, Li/b0;->q()Li/b0$a;

    move-result-object v0

    .line 15
    invoke-virtual {v1}, Li/b0;->q()Li/b0$a;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v11}, Li/b0$a;->a(Li/c0;)Li/b0$a;

    .line 17
    invoke-virtual {v1}, Li/b0$a;->a()Li/b0;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Li/b0$a;->c(Li/b0;)Li/b0$a;

    .line 19
    invoke-virtual {v0}, Li/b0$a;->a()Li/b0;

    move-result-object v0

    .line 20
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Li/g0/f/g;->g()Li/d0;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Li/g0/g/j;->a(Li/b0;Li/d0;)Li/z;

    move-result-object v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v12, :cond_1

    .line 21
    invoke-virtual {v9}, Li/g0/f/g;->f()V

    return-object v0

    .line 22
    :cond_1
    invoke-virtual {v0}, Li/b0;->i()Li/c0;

    move-result-object v1

    invoke-static {v1}, Li/g0/c;->a(Ljava/io/Closeable;)V

    add-int/lit8 v13, v2, 0x1

    const/16 v1, 0x14

    if-gt v13, v1, :cond_4

    .line 23
    invoke-virtual {v12}, Li/z;->a()Li/a0;

    .line 24
    invoke-virtual {v12}, Li/z;->g()Li/s;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Li/g0/g/j;->a(Li/b0;Li/s;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 25
    invoke-virtual {v9}, Li/g0/f/g;->f()V

    .line 26
    new-instance v9, Li/g0/f/g;

    iget-object v1, p0, Li/g0/g/j;->a:Li/w;

    invoke-virtual {v1}, Li/w;->e()Li/j;

    move-result-object v2

    .line 27
    invoke-virtual {v12}, Li/z;->g()Li/s;

    move-result-object v1

    invoke-direct {p0, v1}, Li/g0/g/j;->a(Li/s;)Li/a;

    move-result-object v3

    iget-object v6, p0, Li/g0/g/j;->c:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Li/g0/f/g;-><init>(Li/j;Li/a;Li/e;Li/p;Ljava/lang/Object;)V

    .line 28
    iput-object v9, p0, Li/g0/g/j;->b:Li/g0/f/g;

    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {v9}, Li/g0/f/g;->b()Li/g0/g/c;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    move-object v1, v0

    move-object v0, v12

    move v2, v13

    goto :goto_0

    .line 30
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_4
    invoke-virtual {v9}, Li/g0/f/g;->f()V

    .line 32
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {v9}, Li/g0/f/g;->f()V

    .line 34
    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 35
    :try_start_2
    instance-of v4, v3, Li/g0/i/a;

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 36
    :goto_2
    invoke-direct {p0, v3, v9, v4, v0}, Li/g0/g/j;->a(Ljava/io/IOException;Li/g0/f/g;ZLi/z;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_0

    :cond_6
    throw v3

    :catch_2
    move-exception v3

    .line 37
    invoke-virtual {v3}, Li/g0/f/e;->getLastConnectException()Ljava/io/IOException;

    move-result-object v4

    invoke-direct {p0, v4, v9, v10, v0}, Li/g0/g/j;->a(Ljava/io/IOException;Li/g0/f/g;ZLi/z;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_0

    .line 38
    :cond_7
    invoke-virtual {v3}, Li/g0/f/e;->getFirstConnectException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :goto_3
    invoke-virtual {v9, v11}, Li/g0/f/g;->a(Ljava/io/IOException;)V

    .line 40
    invoke-virtual {v9}, Li/g0/f/g;->f()V

    throw p1

    .line 41
    :cond_8
    invoke-virtual {v9}, Li/g0/f/g;->f()V

    .line 42
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/g0/g/j;->d:Z

    .line 2
    iget-object v0, p0, Li/g0/g/j;->b:Li/g0/f/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Li/g0/f/g;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 4
    iput-object p1, p0, Li/g0/g/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/g0/g/j;->d:Z

    return v0
.end method
