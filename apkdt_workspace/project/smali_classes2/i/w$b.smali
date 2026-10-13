.class public final Li/w$b;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:I

.field B:I

.field a:Li/n;

.field b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/x;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/k;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/t;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/t;",
            ">;"
        }
    .end annotation
.end field

.field g:Li/p$c;

.field h:Ljava/net/ProxySelector;

.field i:Li/m;

.field j:Li/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field k:Li/g0/e/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field l:Ljavax/net/SocketFactory;

.field m:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field n:Li/g0/k/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field o:Ljavax/net/ssl/HostnameVerifier;

.field p:Li/g;

.field q:Li/b;

.field r:Li/b;

.field s:Li/j;

.field t:Li/o;

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/w$b;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/w$b;->f:Ljava/util/List;

    .line 4
    new-instance v0, Li/n;

    invoke-direct {v0}, Li/n;-><init>()V

    iput-object v0, p0, Li/w$b;->a:Li/n;

    .line 5
    sget-object v0, Li/w;->G:Ljava/util/List;

    iput-object v0, p0, Li/w$b;->c:Ljava/util/List;

    .line 6
    sget-object v0, Li/w;->H:Ljava/util/List;

    iput-object v0, p0, Li/w$b;->d:Ljava/util/List;

    .line 7
    sget-object v0, Li/p;->a:Li/p;

    invoke-static {v0}, Li/p;->a(Li/p;)Li/p$c;

    move-result-object v0

    iput-object v0, p0, Li/w$b;->g:Li/p$c;

    .line 8
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Li/w$b;->h:Ljava/net/ProxySelector;

    .line 9
    iget-object v0, p0, Li/w$b;->h:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Li/g0/j/a;

    invoke-direct {v0}, Li/g0/j/a;-><init>()V

    iput-object v0, p0, Li/w$b;->h:Ljava/net/ProxySelector;

    .line 11
    :cond_0
    sget-object v0, Li/m;->a:Li/m;

    iput-object v0, p0, Li/w$b;->i:Li/m;

    .line 12
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Li/w$b;->l:Ljavax/net/SocketFactory;

    .line 13
    sget-object v0, Li/g0/k/d;->a:Li/g0/k/d;

    iput-object v0, p0, Li/w$b;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 14
    sget-object v0, Li/g;->c:Li/g;

    iput-object v0, p0, Li/w$b;->p:Li/g;

    .line 15
    sget-object v0, Li/b;->a:Li/b;

    iput-object v0, p0, Li/w$b;->q:Li/b;

    .line 16
    iput-object v0, p0, Li/w$b;->r:Li/b;

    .line 17
    new-instance v0, Li/j;

    invoke-direct {v0}, Li/j;-><init>()V

    iput-object v0, p0, Li/w$b;->s:Li/j;

    .line 18
    sget-object v0, Li/o;->a:Li/o;

    iput-object v0, p0, Li/w$b;->t:Li/o;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Li/w$b;->u:Z

    .line 20
    iput-boolean v0, p0, Li/w$b;->v:Z

    .line 21
    iput-boolean v0, p0, Li/w$b;->w:Z

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Li/w$b;->x:I

    const/16 v1, 0x2710

    .line 23
    iput v1, p0, Li/w$b;->y:I

    .line 24
    iput v1, p0, Li/w$b;->z:I

    .line 25
    iput v1, p0, Li/w$b;->A:I

    .line 26
    iput v0, p0, Li/w$b;->B:I

    return-void
.end method

.method constructor <init>(Li/w;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/w$b;->e:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/w$b;->f:Ljava/util/List;

    .line 30
    iget-object v0, p1, Li/w;->e:Li/n;

    iput-object v0, p0, Li/w$b;->a:Li/n;

    .line 31
    iget-object v0, p1, Li/w;->f:Ljava/net/Proxy;

    iput-object v0, p0, Li/w$b;->b:Ljava/net/Proxy;

    .line 32
    iget-object v0, p1, Li/w;->g:Ljava/util/List;

    iput-object v0, p0, Li/w$b;->c:Ljava/util/List;

    .line 33
    iget-object v0, p1, Li/w;->h:Ljava/util/List;

    iput-object v0, p0, Li/w$b;->d:Ljava/util/List;

    .line 34
    iget-object v0, p0, Li/w$b;->e:Ljava/util/List;

    iget-object v1, p1, Li/w;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v0, p0, Li/w$b;->f:Ljava/util/List;

    iget-object v1, p1, Li/w;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    iget-object v0, p1, Li/w;->k:Li/p$c;

    iput-object v0, p0, Li/w$b;->g:Li/p$c;

    .line 37
    iget-object v0, p1, Li/w;->l:Ljava/net/ProxySelector;

    iput-object v0, p0, Li/w$b;->h:Ljava/net/ProxySelector;

    .line 38
    iget-object v0, p1, Li/w;->m:Li/m;

    iput-object v0, p0, Li/w$b;->i:Li/m;

    .line 39
    iget-object v0, p1, Li/w;->o:Li/g0/e/d;

    iput-object v0, p0, Li/w$b;->k:Li/g0/e/d;

    .line 40
    iget-object v0, p1, Li/w;->n:Li/c;

    iput-object v0, p0, Li/w$b;->j:Li/c;

    .line 41
    iget-object v0, p1, Li/w;->p:Ljavax/net/SocketFactory;

    iput-object v0, p0, Li/w$b;->l:Ljavax/net/SocketFactory;

    .line 42
    iget-object v0, p1, Li/w;->q:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Li/w$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 43
    iget-object v0, p1, Li/w;->r:Li/g0/k/c;

    iput-object v0, p0, Li/w$b;->n:Li/g0/k/c;

    .line 44
    iget-object v0, p1, Li/w;->s:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Li/w$b;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 45
    iget-object v0, p1, Li/w;->t:Li/g;

    iput-object v0, p0, Li/w$b;->p:Li/g;

    .line 46
    iget-object v0, p1, Li/w;->u:Li/b;

    iput-object v0, p0, Li/w$b;->q:Li/b;

    .line 47
    iget-object v0, p1, Li/w;->v:Li/b;

    iput-object v0, p0, Li/w$b;->r:Li/b;

    .line 48
    iget-object v0, p1, Li/w;->w:Li/j;

    iput-object v0, p0, Li/w$b;->s:Li/j;

    .line 49
    iget-object v0, p1, Li/w;->x:Li/o;

    iput-object v0, p0, Li/w$b;->t:Li/o;

    .line 50
    iget-boolean v0, p1, Li/w;->y:Z

    iput-boolean v0, p0, Li/w$b;->u:Z

    .line 51
    iget-boolean v0, p1, Li/w;->z:Z

    iput-boolean v0, p0, Li/w$b;->v:Z

    .line 52
    iget-boolean v0, p1, Li/w;->A:Z

    iput-boolean v0, p0, Li/w$b;->w:Z

    .line 53
    iget v0, p1, Li/w;->B:I

    iput v0, p0, Li/w$b;->x:I

    .line 54
    iget v0, p1, Li/w;->C:I

    iput v0, p0, Li/w$b;->y:I

    .line 55
    iget v0, p1, Li/w;->D:I

    iput v0, p0, Li/w$b;->z:I

    .line 56
    iget v0, p1, Li/w;->E:I

    iput v0, p0, Li/w$b;->A:I

    .line 57
    iget p1, p1, Li/w;->F:I

    iput p1, p0, Li/w$b;->B:I

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Li/w$b;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Li/g0/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Li/w$b;->x:I

    return-object p0
.end method

.method public a(Li/g;)Li/w$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 8
    iput-object p1, p0, Li/w$b;->p:Li/g;

    return-object p0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "certificatePinner == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Li/n;)Li/w$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 11
    iput-object p1, p0, Li/w$b;->a:Li/n;

    return-object p0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dispatcher == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Li/t;)Li/w$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 14
    iget-object v0, p0, Li/w$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "interceptor == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/util/List;)Li/w$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li/k;",
            ">;)",
            "Li/w$b;"
        }
    .end annotation

    .line 13
    invoke-static {p1}, Li/g0/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Li/w$b;->d:Ljava/util/List;

    return-object p0
.end method

.method public a(Ljavax/net/ssl/HostnameVerifier;)Li/w$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Li/w$b;->o:Ljavax/net/ssl/HostnameVerifier;

    return-object p0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "hostnameVerifier == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Li/w$b;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    iput-object p1, p0, Li/w$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 3
    invoke-static {p2}, Li/g0/k/c;->a(Ljavax/net/ssl/X509TrustManager;)Li/g0/k/c;

    move-result-object p1

    iput-object p1, p0, Li/w$b;->n:Li/g0/k/c;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "trustManager == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sslSocketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)Li/w$b;
    .locals 0

    .line 10
    iput-boolean p1, p0, Li/w$b;->w:Z

    return-object p0
.end method

.method public a()Li/w;
    .locals 1

    .line 16
    new-instance v0, Li/w;

    invoke-direct {v0, p0}, Li/w;-><init>(Li/w$b;)V

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Li/w$b;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Li/g0/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Li/w$b;->y:I

    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Li/w$b;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Li/g0/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Li/w$b;->z:I

    return-object p0
.end method

.method public d(JLjava/util/concurrent/TimeUnit;)Li/w$b;
    .locals 1

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Li/g0/c;->a(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Li/w$b;->A:I

    return-object p0
.end method
