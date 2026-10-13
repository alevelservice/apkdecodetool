.class public Lcom/facebook/imagepipeline/producers/n;
.super Ljava/lang/Object;
.source "DiskCacheReadProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/i0;


# annotations
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

.field private final b:Le/f/i/c/e;

.field private final c:Le/f/i/c/f;

.field private final d:Lcom/facebook/imagepipeline/producers/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/f/i/c/e;Le/f/i/c/e;Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/c/e;",
            "Le/f/i/c/e;",
            "Le/f/i/c/f;",
            "Lcom/facebook/imagepipeline/producers/i0<",
            "Le/f/i/g/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/n;->a:Le/f/i/c/e;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/n;->b:Le/f/i/c/e;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/n;->c:Le/f/i/c/f;

    .line 5
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/n;->d:Lcom/facebook/imagepipeline/producers/i0;

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/n;)Lcom/facebook/imagepipeline/producers/i0;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/n;->d:Lcom/facebook/imagepipeline/producers/i0;

    return-object p0
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

    .line 16
    invoke-interface {p0, p1}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "cached_value_found"

    if-eqz p2, :cond_1

    .line 17
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "encodedImageSize"

    .line 19
    invoke-static {p0, p1, p3, p2}, Lcom/facebook/common/internal/e;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 20
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p0, p1}, Lcom/facebook/common/internal/e;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/j0;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/facebook/imagepipeline/producers/n$b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/n$b;-><init>(Lcom/facebook/imagepipeline/producers/n;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/producers/j0;->a(Lcom/facebook/imagepipeline/producers/k0;)V

    return-void
.end method

.method static synthetic a(Lc/f;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/n;->b(Lc/f;)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V
    .locals 2
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
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->g()Le/f/i/i/b$b;

    move-result-object v0

    invoke-virtual {v0}, Le/f/i/i/b$b;->getValue()I

    move-result v0

    sget-object v1, Le/f/i/i/b$b;->DISK_CACHE:Le/f/i/i/b$b;

    .line 4
    invoke-virtual {v1}, Le/f/i/i/b$b;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 5
    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n;->d:Lcom/facebook/imagepipeline/producers/i0;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/i0;->a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V

    return-void
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

.method private c(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)Lc/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/i/g/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/j0;",
            ")",
            "Lc/d<",
            "Le/f/i/g/e;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v2

    .line 3
    new-instance v6, Lcom/facebook/imagepipeline/producers/n$a;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/n$a;-><init>(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/l0;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V

    return-object v6
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
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/n;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)V

    return-void

    .line 6
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object v1

    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DiskCacheProducer"

    invoke-interface {v1, v2, v3}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n;->c:Le/f/i/c/f;

    .line 8
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/j0;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Le/f/i/c/f;->c(Le/f/i/i/b;Ljava/lang/Object;)Le/f/b/a/d;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Le/f/i/i/b;->b()Le/f/i/i/b$a;

    move-result-object v0

    sget-object v2, Le/f/i/i/b$a;->SMALL:Le/f/i/i/b$a;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n;->b:Le/f/i/c/e;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n;->a:Le/f/i/c/e;

    .line 11
    :goto_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    invoke-virtual {v0, v1, v2}, Le/f/i/c/e;->a(Le/f/b/a/d;Ljava/util/concurrent/atomic/AtomicBoolean;)Lc/f;

    move-result-object v0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/n;->c(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;)Lc/d;

    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Lc/f;->a(Lc/d;)Lc/f;

    .line 15
    invoke-direct {p0, v2, p2}, Lcom/facebook/imagepipeline/producers/n;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/j0;)V

    return-void
.end method
