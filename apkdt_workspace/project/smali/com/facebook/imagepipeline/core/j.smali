.class public Lcom/facebook/imagepipeline/core/j;
.super Ljava/lang/Object;
.source "ImagePipelineFactory.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final s:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static t:Lcom/facebook/imagepipeline/core/j;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/r0;

.field private final b:Lcom/facebook/imagepipeline/core/h;

.field private c:Le/f/i/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/h<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Le/f/i/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/o<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Le/f/i/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/h<",
            "Le/f/b/a/d;",
            "Le/f/c/f/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Le/f/i/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/o<",
            "Le/f/b/a/d;",
            "Le/f/c/f/g;",
            ">;"
        }
    .end annotation
.end field

.field private g:Le/f/i/c/e;

.field private h:Lcom/facebook/cache/disk/h;

.field private i:Le/f/i/e/c;

.field private j:Lcom/facebook/imagepipeline/core/g;

.field private k:Lcom/facebook/imagepipeline/transcoder/d;

.field private l:Lcom/facebook/imagepipeline/core/l;

.field private m:Lcom/facebook/imagepipeline/core/m;

.field private n:Le/f/i/c/e;

.field private o:Lcom/facebook/cache/disk/h;

.field private p:Le/f/i/b/f;

.field private q:Lcom/facebook/imagepipeline/platform/f;

.field private r:Le/f/i/a/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/imagepipeline/core/j;

    sput-object v0, Lcom/facebook/imagepipeline/core/j;->s:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/core/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipelineConfig()"

    .line 3
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/facebook/imagepipeline/core/h;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/producers/r0;

    .line 6
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/h;->g()Lcom/facebook/imagepipeline/core/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/e;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/producers/r0;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->a:Lcom/facebook/imagepipeline/producers/r0;

    .line 7
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-void
.end method

.method public static declared-synchronized a(Lcom/facebook/imagepipeline/core/h;)V
    .locals 3

    const-class v0, Lcom/facebook/imagepipeline/core/j;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/core/j;->t:Lcom/facebook/imagepipeline/core/j;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/facebook/imagepipeline/core/j;->s:Ljava/lang/Class;

    const-string v2, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior."

    invoke-static {v1, v2}, Le/f/c/d/a;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/core/j;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/core/j;-><init>(Lcom/facebook/imagepipeline/core/h;)V

    sput-object v1, Lcom/facebook/imagepipeline/core/j;->t:Lcom/facebook/imagepipeline/core/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/facebook/imagepipeline/core/j;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ImagePipelineFactory#initialize"

    .line 2
    invoke-static {v1}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/h;->b(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/h$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/h$b;->a()Lcom/facebook/imagepipeline/core/h;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/imagepipeline/core/j;->a(Lcom/facebook/imagepipeline/core/h;)V

    .line 4
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Le/f/i/j/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private k()Le/f/i/a/b/a;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->r:Le/f/i/a/b/a;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/j;->h()Le/f/i/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->g()Lcom/facebook/imagepipeline/core/e;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/j;->a()Le/f/i/c/h;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 5
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/core/i;->p()Z

    move-result v3

    .line 6
    invoke-static {v0, v1, v2, v3}, Le/f/i/a/b/b;->a(Le/f/i/b/f;Lcom/facebook/imagepipeline/core/e;Le/f/i/c/h;Z)Le/f/i/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->r:Le/f/i/a/b/a;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->r:Le/f/i/a/b/a;

    return-object v0
.end method

.method private l()Le/f/i/e/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->i:Le/f/i/e/c;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->k()Le/f/i/e/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->k()Le/f/i/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->i:Le/f/i/e/c;

    goto :goto_1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/j;->k()Le/f/i/a/b/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/h;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v0, v2}, Le/f/i/a/b/a;->a(Landroid/graphics/Bitmap$Config;)Le/f/i/e/c;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/core/h;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-interface {v0, v3}, Le/f/i/a/b/a;->b(Landroid/graphics/Bitmap$Config;)Le/f/i/e/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    move-object v2, v0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/core/h;->l()Le/f/i/e/d;

    move-result-object v3

    if-nez v3, :cond_2

    .line 8
    new-instance v1, Le/f/i/e/b;

    .line 9
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/j;->i()Lcom/facebook/imagepipeline/platform/f;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Le/f/i/e/b;-><init>(Le/f/i/e/c;Le/f/i/e/c;Lcom/facebook/imagepipeline/platform/f;)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/j;->i:Le/f/i/e/c;

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/j;->i()Lcom/facebook/imagepipeline/platform/f;

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 11
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->l()Le/f/i/e/d;

    move-result-object v0

    invoke-virtual {v0}, Le/f/i/e/d;->a()Ljava/util/Map;

    throw v1

    .line 12
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->i:Le/f/i/e/c;

    return-object v0
.end method

.method private m()Lcom/facebook/imagepipeline/transcoder/d;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->k:Lcom/facebook/imagepipeline/transcoder/d;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->m()Lcom/facebook/imagepipeline/transcoder/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->n()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/i;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/transcoder/h;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 6
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/i;->d()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/transcoder/h;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->k:Lcom/facebook/imagepipeline/transcoder/d;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/transcoder/f;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 8
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/i;->d()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 9
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/i;->g()Z

    move-result v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 10
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/core/h;->m()Lcom/facebook/imagepipeline/transcoder/d;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 11
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/core/h;->n()Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/transcoder/f;-><init>(IZLcom/facebook/imagepipeline/transcoder/d;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->k:Lcom/facebook/imagepipeline/transcoder/d;

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->k:Lcom/facebook/imagepipeline/transcoder/d;

    return-object v0
.end method

.method public static n()Lcom/facebook/imagepipeline/core/j;
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/core/j;->t:Lcom/facebook/imagepipeline/core/j;

    const-string v1, "ImagePipelineFactory was not initialized!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/facebook/imagepipeline/core/j;

    return-object v0
.end method

.method private o()Lcom/facebook/imagepipeline/core/l;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->l:Lcom/facebook/imagepipeline/core/l;

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/i;->e()Lcom/facebook/imagepipeline/core/i$d;

    move-result-object v2

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 5
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->e()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 6
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->t()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/e0;->h()Le/f/c/f/a;

    move-result-object v4

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/j;->l()Le/f/i/e/c;

    move-result-object v5

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 8
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->u()Le/f/i/e/e;

    move-result-object v6

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 9
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->y()Z

    move-result v7

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->z()Z

    move-result v8

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 11
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/i;->j()Z

    move-result v9

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 12
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->g()Lcom/facebook/imagepipeline/core/e;

    move-result-object v10

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 13
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->t()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v1

    iget-object v11, v0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v11}, Lcom/facebook/imagepipeline/core/h;->q()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/facebook/imagepipeline/memory/e0;->a(I)Le/f/c/f/h;

    move-result-object v11

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/j;->b()Le/f/i/c/o;

    move-result-object v12

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/j;->d()Le/f/i/c/o;

    move-result-object v13

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/j;->f()Le/f/i/c/e;

    move-result-object v14

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/j;->q()Le/f/i/c/e;

    move-result-object v15

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 18
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->d()Le/f/i/c/f;

    move-result-object v16

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/j;->h()Le/f/i/b/f;

    move-result-object v17

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 20
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/i;->c()I

    move-result v18

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 21
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/i;->b()I

    move-result v19

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 22
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/i;->a()Z

    move-result v20

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 23
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/i;->d()I

    move-result v21

    .line 24
    invoke-interface/range {v2 .. v21}, Lcom/facebook/imagepipeline/core/i$d;->a(Landroid/content/Context;Le/f/c/f/a;Le/f/i/e/c;Le/f/i/e/e;ZZZLcom/facebook/imagepipeline/core/e;Le/f/c/f/h;Le/f/i/c/p;Le/f/i/c/p;Le/f/i/c/e;Le/f/i/c/e;Le/f/i/c/f;Le/f/i/b/f;IIZI)Lcom/facebook/imagepipeline/core/l;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/j;->l:Lcom/facebook/imagepipeline/core/l;

    .line 25
    :cond_0
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/j;->l:Lcom/facebook/imagepipeline/core/l;

    return-object v1
.end method

.method private p()Lcom/facebook/imagepipeline/core/m;
    .locals 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 2
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->m:Lcom/facebook/imagepipeline/core/m;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/facebook/imagepipeline/core/m;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 5
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/j;->o()Lcom/facebook/imagepipeline/core/l;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 7
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->s()Lcom/facebook/imagepipeline/producers/e0;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 8
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->z()Z

    move-result v5

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 9
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/i;->o()Z

    move-result v6

    iget-object v7, p0, Lcom/facebook/imagepipeline/core/j;->a:Lcom/facebook/imagepipeline/producers/r0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->y()Z

    move-result v8

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 11
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/i;->n()Z

    move-result v10

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 12
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->x()Z

    move-result v11

    .line 13
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/j;->m()Lcom/facebook/imagepipeline/transcoder/d;

    move-result-object v12

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/facebook/imagepipeline/core/m;-><init>(Landroid/content/ContentResolver;Lcom/facebook/imagepipeline/core/l;Lcom/facebook/imagepipeline/producers/e0;ZZLcom/facebook/imagepipeline/producers/r0;ZZZZLcom/facebook/imagepipeline/transcoder/d;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->m:Lcom/facebook/imagepipeline/core/m;

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->m:Lcom/facebook/imagepipeline/core/m;

    return-object v0
.end method

.method private q()Le/f/i/c/e;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->n:Le/f/i/c/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/f/i/c/e;

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/j;->j()Lcom/facebook/cache/disk/h;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->t()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/core/h;->q()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/memory/e0;->a(I)Le/f/c/f/h;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 5
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->t()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/e0;->g()Le/f/c/f/k;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 6
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->g()Lcom/facebook/imagepipeline/core/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 7
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->g()Lcom/facebook/imagepipeline/core/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->d()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 8
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->j()Le/f/i/c/n;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Le/f/i/c/e;-><init>(Lcom/facebook/cache/disk/h;Le/f/c/f/h;Le/f/c/f/k;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Le/f/i/c/n;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->n:Le/f/i/c/e;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->n:Le/f/i/c/e;

    return-object v0
.end method


# virtual methods
.method public a()Le/f/i/c/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/i/c/h<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->c:Le/f/i/c/h;

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 9
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->b()Lcom/facebook/common/internal/j;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->r()Le/f/c/f/c;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 11
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/h;->c()Le/f/i/c/h$c;

    move-result-object v2

    .line 12
    invoke-static {v0, v1, v2}, Le/f/i/c/a;->a(Lcom/facebook/common/internal/j;Le/f/c/f/c;Le/f/i/c/h$c;)Le/f/i/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->c:Le/f/i/c/h;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->c:Le/f/i/c/h;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Le/f/i/f/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/j;->k()Le/f/i/a/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Le/f/i/a/b/a;->a(Landroid/content/Context;)Le/f/i/f/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b()Le/f/i/c/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/i/c/o<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->d:Le/f/i/c/o;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/j;->a()Le/f/i/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 9
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->j()Le/f/i/c/n;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Le/f/i/c/b;->a(Le/f/i/c/h;Le/f/i/c/n;)Le/f/i/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->d:Le/f/i/c/o;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->d:Le/f/i/c/o;

    return-object v0
.end method

.method public c()Le/f/i/c/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/i/c/h<",
            "Le/f/b/a/d;",
            "Le/f/c/f/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->e:Le/f/i/c/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->f()Lcom/facebook/common/internal/j;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->r()Le/f/c/f/c;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Le/f/i/c/l;->a(Lcom/facebook/common/internal/j;Le/f/c/f/c;)Le/f/i/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->e:Le/f/i/c/h;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->e:Le/f/i/c/h;

    return-object v0
.end method

.method public d()Le/f/i/c/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/i/c/o<",
            "Le/f/b/a/d;",
            "Le/f/c/f/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->f:Le/f/i/c/o;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/j;->c()Le/f/i/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->j()Le/f/i/c/n;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Le/f/i/c/m;->a(Le/f/i/c/h;Le/f/i/c/n;)Le/f/i/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->f:Le/f/i/c/o;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->f:Le/f/i/c/o;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/core/g;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->j:Lcom/facebook/imagepipeline/core/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/core/g;

    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/j;->p()Lcom/facebook/imagepipeline/core/m;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->v()Ljava/util/Set;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 5
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->o()Lcom/facebook/common/internal/j;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/j;->b()Le/f/i/c/o;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/j;->d()Le/f/i/c/o;

    move-result-object v6

    .line 8
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/j;->f()Le/f/i/c/e;

    move-result-object v7

    .line 9
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/j;->q()Le/f/i/c/e;

    move-result-object v8

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->d()Le/f/i/c/f;

    move-result-object v9

    iget-object v10, p0, Lcom/facebook/imagepipeline/core/j;->a:Lcom/facebook/imagepipeline/producers/r0;

    const/4 v1, 0x0

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/k;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/j;

    move-result-object v11

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 12
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/i;->l()Lcom/facebook/common/internal/j;

    move-result-object v12

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/facebook/imagepipeline/core/g;-><init>(Lcom/facebook/imagepipeline/core/m;Ljava/util/Set;Lcom/facebook/common/internal/j;Le/f/i/c/p;Le/f/i/c/p;Le/f/i/c/e;Le/f/i/c/e;Le/f/i/c/f;Lcom/facebook/imagepipeline/producers/r0;Lcom/facebook/common/internal/j;Lcom/facebook/common/internal/j;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->j:Lcom/facebook/imagepipeline/core/g;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->j:Lcom/facebook/imagepipeline/core/g;

    return-object v0
.end method

.method public f()Le/f/i/c/e;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->g:Le/f/i/c/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/f/i/c/e;

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/j;->g()Lcom/facebook/cache/disk/h;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->t()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/core/h;->q()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/memory/e0;->a(I)Le/f/c/f/h;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 5
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->t()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/e0;->g()Le/f/c/f/k;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 6
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->g()Lcom/facebook/imagepipeline/core/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 7
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->g()Lcom/facebook/imagepipeline/core/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->d()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 8
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->j()Le/f/i/c/n;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Le/f/i/c/e;-><init>(Lcom/facebook/cache/disk/h;Le/f/c/f/h;Le/f/c/f/k;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Le/f/i/c/n;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->g:Le/f/i/c/e;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->g:Le/f/i/c/e;

    return-object v0
.end method

.method public g()Lcom/facebook/cache/disk/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->h:Lcom/facebook/cache/disk/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->p()Lcom/facebook/cache/disk/b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->i()Lcom/facebook/imagepipeline/core/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/core/f;->a(Lcom/facebook/cache/disk/b;)Lcom/facebook/cache/disk/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->h:Lcom/facebook/cache/disk/h;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->h:Lcom/facebook/cache/disk/h;

    return-object v0
.end method

.method public h()Le/f/i/b/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->p:Le/f/i/b/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->t()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/j;->i()Lcom/facebook/imagepipeline/platform/f;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Le/f/i/b/g;->a(Lcom/facebook/imagepipeline/memory/e0;Lcom/facebook/imagepipeline/platform/f;)Le/f/i/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->p:Le/f/i/b/f;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->p:Le/f/i/b/f;

    return-object v0
.end method

.method public i()Lcom/facebook/imagepipeline/platform/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->q:Lcom/facebook/imagepipeline/platform/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->t()Lcom/facebook/imagepipeline/memory/e0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/imagepipeline/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/i;->k()Z

    move-result v1

    .line 4
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/platform/g;->a(Lcom/facebook/imagepipeline/memory/e0;Z)Lcom/facebook/imagepipeline/platform/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->q:Lcom/facebook/imagepipeline/platform/f;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->q:Lcom/facebook/imagepipeline/platform/f;

    return-object v0
.end method

.method public j()Lcom/facebook/cache/disk/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->o:Lcom/facebook/cache/disk/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->w()Lcom/facebook/cache/disk/b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/j;->b:Lcom/facebook/imagepipeline/core/h;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->i()Lcom/facebook/imagepipeline/core/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/core/f;->a(Lcom/facebook/cache/disk/b;)Lcom/facebook/cache/disk/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/j;->o:Lcom/facebook/cache/disk/h;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/j;->o:Lcom/facebook/cache/disk/h;

    return-object v0
.end method
