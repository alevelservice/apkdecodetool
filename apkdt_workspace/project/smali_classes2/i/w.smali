.class public Li/w;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Li/e$a;
.implements Li/f0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/w$b;
    }
.end annotation


# static fields
.field static final G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/x;",
            ">;"
        }
    .end annotation
.end field

.field static final H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final A:Z

.field final B:I

.field final C:I

.field final D:I

.field final E:I

.field final F:I

.field final e:Li/n;

.field final f:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/x;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/k;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/t;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/t;",
            ">;"
        }
    .end annotation
.end field

.field final k:Li/p$c;

.field final l:Ljava/net/ProxySelector;

.field final m:Li/m;

.field final n:Li/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final o:Li/g0/e/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final p:Ljavax/net/SocketFactory;

.field final q:Ljavax/net/ssl/SSLSocketFactory;

.field final r:Li/g0/k/c;

.field final s:Ljavax/net/ssl/HostnameVerifier;

.field final t:Li/g;

.field final u:Li/b;

.field final v:Li/b;

.field final w:Li/j;

.field final x:Li/o;

.field final y:Z

.field final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Li/x;

    .line 1
    sget-object v2, Li/x;->HTTP_2:Li/x;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Li/x;->HTTP_1_1:Li/x;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Li/g0/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Li/w;->G:Ljava/util/List;

    new-array v0, v0, [Li/k;

    .line 2
    sget-object v1, Li/k;->g:Li/k;

    aput-object v1, v0, v3

    sget-object v1, Li/k;->i:Li/k;

    aput-object v1, v0, v4

    invoke-static {v0}, Li/g0/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Li/w;->H:Ljava/util/List;

    .line 3
    new-instance v0, Li/w$a;

    invoke-direct {v0}, Li/w$a;-><init>()V

    sput-object v0, Li/g0/a;->a:Li/g0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Li/w$b;

    invoke-direct {v0}, Li/w$b;-><init>()V

    invoke-direct {p0, v0}, Li/w;-><init>(Li/w$b;)V

    return-void
.end method

.method constructor <init>(Li/w$b;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Li/w$b;->a:Li/n;

    iput-object v0, p0, Li/w;->e:Li/n;

    .line 4
    iget-object v0, p1, Li/w$b;->b:Ljava/net/Proxy;

    iput-object v0, p0, Li/w;->f:Ljava/net/Proxy;

    .line 5
    iget-object v0, p1, Li/w$b;->c:Ljava/util/List;

    iput-object v0, p0, Li/w;->g:Ljava/util/List;

    .line 6
    iget-object v0, p1, Li/w$b;->d:Ljava/util/List;

    iput-object v0, p0, Li/w;->h:Ljava/util/List;

    .line 7
    iget-object v0, p1, Li/w$b;->e:Ljava/util/List;

    invoke-static {v0}, Li/g0/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Li/w;->i:Ljava/util/List;

    .line 8
    iget-object v0, p1, Li/w$b;->f:Ljava/util/List;

    invoke-static {v0}, Li/g0/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Li/w;->j:Ljava/util/List;

    .line 9
    iget-object v0, p1, Li/w$b;->g:Li/p$c;

    iput-object v0, p0, Li/w;->k:Li/p$c;

    .line 10
    iget-object v0, p1, Li/w$b;->h:Ljava/net/ProxySelector;

    iput-object v0, p0, Li/w;->l:Ljava/net/ProxySelector;

    .line 11
    iget-object v0, p1, Li/w$b;->i:Li/m;

    iput-object v0, p0, Li/w;->m:Li/m;

    .line 12
    iget-object v0, p1, Li/w$b;->j:Li/c;

    iput-object v0, p0, Li/w;->n:Li/c;

    .line 13
    iget-object v0, p1, Li/w$b;->k:Li/g0/e/d;

    iput-object v0, p0, Li/w;->o:Li/g0/e/d;

    .line 14
    iget-object v0, p1, Li/w$b;->l:Ljavax/net/SocketFactory;

    iput-object v0, p0, Li/w;->p:Ljavax/net/SocketFactory;

    .line 15
    iget-object v0, p0, Li/w;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/k;

    if-nez v2, :cond_1

    .line 16
    invoke-virtual {v3}, Li/k;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p1, Li/w$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {}, Li/g0/c;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 19
    invoke-static {v0}, Li/w;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Li/w;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 20
    invoke-static {v0}, Li/g0/k/c;->a(Ljavax/net/ssl/X509TrustManager;)Li/g0/k/c;

    move-result-object v0

    iput-object v0, p0, Li/w;->r:Li/g0/k/c;

    goto :goto_2

    .line 21
    :cond_4
    :goto_1
    iget-object v0, p1, Li/w$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Li/w;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 22
    iget-object v0, p1, Li/w$b;->n:Li/g0/k/c;

    iput-object v0, p0, Li/w;->r:Li/g0/k/c;

    .line 23
    :goto_2
    iget-object v0, p0, Li/w;->q:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    .line 24
    invoke-static {}, Lokhttp3/internal/platform/e;->c()Lokhttp3/internal/platform/e;

    move-result-object v0

    iget-object v1, p0, Li/w;->q:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lokhttp3/internal/platform/e;->a(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 25
    :cond_5
    iget-object v0, p1, Li/w$b;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Li/w;->s:Ljavax/net/ssl/HostnameVerifier;

    .line 26
    iget-object v0, p1, Li/w$b;->p:Li/g;

    iget-object v1, p0, Li/w;->r:Li/g0/k/c;

    invoke-virtual {v0, v1}, Li/g;->a(Li/g0/k/c;)Li/g;

    move-result-object v0

    iput-object v0, p0, Li/w;->t:Li/g;

    .line 27
    iget-object v0, p1, Li/w$b;->q:Li/b;

    iput-object v0, p0, Li/w;->u:Li/b;

    .line 28
    iget-object v0, p1, Li/w$b;->r:Li/b;

    iput-object v0, p0, Li/w;->v:Li/b;

    .line 29
    iget-object v0, p1, Li/w$b;->s:Li/j;

    iput-object v0, p0, Li/w;->w:Li/j;

    .line 30
    iget-object v0, p1, Li/w$b;->t:Li/o;

    iput-object v0, p0, Li/w;->x:Li/o;

    .line 31
    iget-boolean v0, p1, Li/w$b;->u:Z

    iput-boolean v0, p0, Li/w;->y:Z

    .line 32
    iget-boolean v0, p1, Li/w$b;->v:Z

    iput-boolean v0, p0, Li/w;->z:Z

    .line 33
    iget-boolean v0, p1, Li/w$b;->w:Z

    iput-boolean v0, p0, Li/w;->A:Z

    .line 34
    iget v0, p1, Li/w$b;->x:I

    iput v0, p0, Li/w;->B:I

    .line 35
    iget v0, p1, Li/w$b;->y:I

    iput v0, p0, Li/w;->C:I

    .line 36
    iget v0, p1, Li/w$b;->z:I

    iput v0, p0, Li/w;->D:I

    .line 37
    iget v0, p1, Li/w$b;->A:I

    iput v0, p0, Li/w;->E:I

    .line 38
    iget p1, p1, Li/w$b;->B:I

    iput p1, p0, Li/w;->F:I

    .line 39
    iget-object p1, p0, Li/w;->i:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 40
    iget-object p1, p0, Li/w;->j:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 41
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/w;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/w;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private static a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lokhttp3/internal/platform/e;->c()Lokhttp3/internal/platform/e;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/platform/e;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "No System TLS"

    .line 4
    invoke-static {v0, p0}, Li/g0/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li/t;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/w;->i:Ljava/util/List;

    return-object v0
.end method

.method B()Li/g0/e/d;
    .locals 1

    .line 1
    iget-object v0, p0, Li/w;->n:Li/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Li/c;->e:Li/g0/e/d;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li/w;->o:Li/g0/e/d;

    :goto_0
    return-object v0
.end method

.method public C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li/t;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/w;->j:Ljava/util/List;

    return-object v0
.end method

.method public D()Li/w$b;
    .locals 1

    .line 1
    new-instance v0, Li/w$b;

    invoke-direct {v0, p0}, Li/w$b;-><init>(Li/w;)V

    return-object v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Li/w;->F:I

    return v0
.end method

.method public F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li/x;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/w;->g:Ljava/util/List;

    return-object v0
.end method

.method public G()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Li/w;->f:Ljava/net/Proxy;

    return-object v0
.end method

.method public H()Li/b;
    .locals 1

    .line 1
    iget-object v0, p0, Li/w;->u:Li/b;

    return-object v0
.end method

.method public I()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Li/w;->l:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public J()I
    .locals 1

    .line 1
    iget v0, p0, Li/w;->D:I

    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/w;->A:Z

    return v0
.end method

.method public L()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Li/w;->p:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public M()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Li/w;->q:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public N()I
    .locals 1

    .line 1
    iget v0, p0, Li/w;->E:I

    return v0
.end method

.method public a()Li/b;
    .locals 1

    .line 5
    iget-object v0, p0, Li/w;->v:Li/b;

    return-object v0
.end method

.method public a(Li/z;)Li/e;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0}, Li/y;->a(Li/w;Li/z;Z)Li/y;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Li/w;->B:I

    return v0
.end method

.method public c()Li/g;
    .locals 1

    .line 1
    iget-object v0, p0, Li/w;->t:Li/g;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Li/w;->C:I

    return v0
.end method

.method public e()Li/j;
    .locals 1

    .line 1
    iget-object v0, p0, Li/w;->w:Li/j;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/w;->h:Ljava/util/List;

    return-object v0
.end method

.method public g()Li/m;
    .locals 1

    .line 1
    iget-object v0, p0, Li/w;->m:Li/m;

    return-object v0
.end method

.method public h()Li/n;
    .locals 1

    .line 1
    iget-object v0, p0, Li/w;->e:Li/n;

    return-object v0
.end method

.method public n()Li/o;
    .locals 1

    .line 1
    iget-object v0, p0, Li/w;->x:Li/o;

    return-object v0
.end method

.method public w()Li/p$c;
    .locals 1

    .line 1
    iget-object v0, p0, Li/w;->k:Li/p$c;

    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/w;->z:Z

    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/w;->y:Z

    return v0
.end method

.method public z()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Li/w;->s:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method
