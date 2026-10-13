.class public Lcom/facebook/imagepipeline/producers/f0;
.super Ljava/lang/Object;
.source "PartialDiskCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/f0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/i0<",
        "Le/f/i/g/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Le/f/i/c/e;

.field private final b:Le/f/i/c/f;

.field private final c:Le/f/c/f/h;

.field private final d:Le/f/c/f/a;

.field private final e:Lcom/facebook/imagepipeline/producers/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/f/i/c/e;Le/f/i/c/f;Le/f/c/f/h;Le/f/c/f/a;Lcom/facebook/imagepipeline/producers/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/e;",
            "Le/f/i/c/f;",
            "Le/f/c/f/h;",
            "Le/f/c/f/a;",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/f0;->a:Le/f/i/c/e;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/f0;->b:Le/f/i/c/f;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/f0;->c:Le/f/c/f/h;

    .line 5
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/f0;->d:Le/f/c/f/a;

    .line 6
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/f0;->e:Lcom/facebook/imagepipeline/producers/i0;

    return-void
.end method

.method private static a(Le/f/i/i/b;)Landroid/net/Uri;
    .locals 2

    .line 29
    invoke-virtual {p0}, Le/f/i/i/b;->p()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "fresco_partial"

    const-string v1, "true"

    .line 30
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;Le/f/b/a/d;)Lc/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/i/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/j0;",
            "Le/f/b/a/d;",
            ")",
            "Lc/d<",
            "Le/f/i/g/e;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v2

    .line 19
    new-instance v7, Lcom/facebook/imagepipeline/producers/f0$a;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/producers/f0$a;-><init>(Lcom/facebook/imagepipeline/producers/f0;Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;Le/f/b/a/d;)V

    return-object v7
.end method

.method static a(Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/String;ZI)Ljava/util/Map;
    .locals 0
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l0;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 22
    invoke-interface {p0, p1}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "cached_value_found"

    if-eqz p2, :cond_1

    .line 23
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "encodedImageSize"

    .line 25
    invoke-static {p0, p1, p3, p2}, Lcom/facebook/common/internal/e;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 26
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Lcom/facebook/common/internal/e;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;Le/f/b/a/d;Le/f/i/g/e;)V
    .locals 9
    .param p4    # Le/f/i/g/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/i/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/j0;",
            "Le/f/b/a/d;",
            "Le/f/i/g/e;",
            ")V"
        }
    .end annotation

    .line 20
    new-instance v8, Lcom/facebook/imagepipeline/producers/f0$c;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/f0;->a:Le/f/i/c/e;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/f0;->c:Le/f/c/f/h;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/f0;->d:Le/f/c/f/a;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/producers/f0$c;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Le/f/i/c/e;Le/f/b/a/d;Le/f/c/f/h;Le/f/c/f/a;Le/f/i/g/e;Lcom/facebook/imagepipeline/producers/f0$a;)V

    .line 21
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/f0;->e:Lcom/facebook/imagepipeline/producers/i0;

    invoke-interface {p1, v8, p2}, Lcom/facebook/imagepipeline/producers/i0;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/f0;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;Le/f/b/a/d;Le/f/i/g/e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/f0;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;Le/f/b/a/d;Le/f/i/g/e;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/j0;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/facebook/imagepipeline/producers/f0$b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/f0$b;-><init>(Lcom/facebook/imagepipeline/producers/f0;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/producers/j0;->a(Lcom/facebook/imagepipeline/producers/k0;)V

    return-void
.end method

.method static synthetic a(Lc/f;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/f0;->b(Lc/f;)Z

    move-result p0

    return p0
.end method

.method private static b(Lc/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/f<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lc/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/f;->a()Ljava/lang/Exception;

    move-result-object p0

    instance-of p0, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/i/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/j0;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->c()Le/f/i/i/b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Le/f/i/i/b;->r()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/f0;->e:Lcom/facebook/imagepipeline/producers/i0;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/i0;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V

    return-void

    .line 6
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v1

    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PartialDiskCacheProducer"

    invoke-interface {v1, v2, v3}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/f0;->a(Le/f/i/i/b;)Landroid/net/Uri;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/f0;->b:Le/f/i/c/f;

    .line 9
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->a()Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-interface {v2, v0, v1, v3}, Le/f/i/c/f;->a(Le/f/i/i/b;Landroid/net/Uri;Ljava/lang/Object;)Le/f/b/a/d;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/f0;->a:Le/f/i/c/e;

    .line 13
    invoke-virtual {v2, v0, v1}, Le/f/i/c/e;->a(Le/f/b/a/d;Ljava/util/concurrent/atomic/AtomicBoolean;)Lc/f;

    move-result-object v2

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/producers/f0;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;Le/f/b/a/d;)Lc/d;

    move-result-object p1

    .line 15
    invoke-virtual {v2, p1}, Lc/f;->a(Lc/d;)Lc/f;

    .line 16
    invoke-direct {p0, v1, p2}, Lcom/facebook/imagepipeline/producers/f0;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/j0;)V

    return-void
.end method
