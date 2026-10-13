.class public Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;
.super Ljava/lang/Object;
.source "AnimatedFactoryV2Impl.java"

# interfaces
.implements Le/f/i/a/b/a;


# annotations
.annotation build Lcom/facebook/common/internal/DoNotStrip;
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Le/f/i/b/f;

.field private final b:Lcom/facebook/imagepipeline/core/e;

.field private final c:Le/f/i/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/h<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private e:Le/f/i/a/b/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Le/f/i/a/c/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Le/f/i/a/d/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:Le/f/i/f/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/f/i/b/f;Lcom/facebook/imagepipeline/core/e;Le/f/i/c/h;Z)V
    .locals 0
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/b/f;",
            "Lcom/facebook/imagepipeline/core/e;",
            "Le/f/i/c/h<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->a:Le/f/i/b/f;

    .line 3
    iput-object p2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->b:Lcom/facebook/imagepipeline/core/e;

    .line 4
    iput-object p3, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->c:Le/f/i/c/h;

    .line 5
    iput-boolean p4, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->d:Z

    return-void
.end method

.method private a()Le/f/i/a/b/d;
    .locals 3

    .line 6
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$f;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$f;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 7
    new-instance v1, Le/f/i/a/b/e;

    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->a:Le/f/i/b/f;

    invoke-direct {v1, v0, v2}, Le/f/i/a/b/e;-><init>(Le/f/i/a/c/b;Le/f/i/b/f;)V

    return-object v1
.end method

.method static synthetic a(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Le/f/i/a/b/d;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->e()Le/f/i/a/b/d;

    move-result-object p0

    return-object p0
.end method

.method private b()Lcom/facebook/fresco/animation/factory/a;
    .locals 10

    .line 3
    new-instance v7, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$c;

    invoke-direct {v7, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$c;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 4
    new-instance v3, Le/f/c/b/c;

    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->b:Lcom/facebook/imagepipeline/core/e;

    .line 5
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {v3, v0}, Le/f/c/b/c;-><init>(Ljava/util/concurrent/Executor;)V

    .line 6
    new-instance v8, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$d;

    invoke-direct {v8, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$d;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 7
    new-instance v9, Lcom/facebook/fresco/animation/factory/a;

    .line 8
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->c()Le/f/i/a/c/b;

    move-result-object v1

    .line 9
    invoke-static {}, Le/f/c/b/i;->b()Le/f/c/b/i;

    move-result-object v2

    .line 10
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->a:Le/f/i/b/f;

    iget-object v6, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->c:Le/f/i/c/h;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/fresco/animation/factory/a;-><init>(Le/f/i/a/c/b;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/facebook/common/time/b;Le/f/i/b/f;Le/f/i/c/h;Lcom/facebook/common/internal/j;Lcom/facebook/common/internal/j;)V

    return-object v9
.end method

.method static synthetic b(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Le/f/i/a/d/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->d()Le/f/i/a/d/a;

    move-result-object p0

    return-object p0
.end method

.method private c()Le/f/i/a/c/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->f:Le/f/i/a/c/b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$e;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$e;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->f:Le/f/i/a/c/b;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->f:Le/f/i/a/c/b;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->d:Z

    return p0
.end method

.method private d()Le/f/i/a/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->g:Le/f/i/a/d/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/f/i/a/d/a;

    invoke-direct {v0}, Le/f/i/a/d/a;-><init>()V

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->g:Le/f/i/a/d/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->g:Le/f/i/a/d/a;

    return-object v0
.end method

.method private e()Le/f/i/a/b/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->e:Le/f/i/a/b/d;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->a()Le/f/i/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->e:Le/f/i/a/b/d;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->e:Le/f/i/a/b/d;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap$Config;)Le/f/i/e/c;
    .locals 1

    .line 5
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$a;

    invoke-direct {v0, p0, p1}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$a;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;Landroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;)Le/f/i/f/a;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->h:Le/f/i/f/a;

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->b()Lcom/facebook/fresco/animation/factory/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->h:Le/f/i/f/a;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->h:Le/f/i/f/a;

    return-object p1
.end method

.method public b(Landroid/graphics/Bitmap$Config;)Le/f/i/e/c;
    .locals 1

    .line 2
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$b;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;Landroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
