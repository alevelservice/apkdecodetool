.class abstract Lcom/facebook/imagepipeline/producers/l$c;
.super Lcom/facebook/imagepipeline/producers/m;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/m<",
        "Le/f/i/g/e;",
        "Le/f/c/g/a<",
        "Le/f/i/g/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/facebook/imagepipeline/producers/j0;

.field private final d:Lcom/facebook/imagepipeline/producers/l0;

.field private final e:Lcom/facebook/imagepipeline/common/b;

.field private f:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final g:Lcom/facebook/imagepipeline/producers/t;

.field final synthetic h:Lcom/facebook/imagepipeline/producers/l;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/j0;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/j0;",
            "ZI)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/l$c;->h:Lcom/facebook/imagepipeline/producers/l;

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/m;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 3
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/l$c;->c:Lcom/facebook/imagepipeline/producers/j0;

    .line 4
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/j0;->e()Lcom/facebook/imagepipeline/producers/l0;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/l$c;->d:Lcom/facebook/imagepipeline/producers/l0;

    .line 5
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/j0;->c()Le/f/i/i/b;

    move-result-object p2

    invoke-virtual {p2}, Le/f/i/i/b;->c()Lcom/facebook/imagepipeline/common/b;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/l$c;->e:Lcom/facebook/imagepipeline/common/b;

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/producers/l$c;->f:Z

    .line 7
    new-instance p2, Lcom/facebook/imagepipeline/producers/l$c$a;

    invoke-direct {p2, p0, p1, p3, p5}, Lcom/facebook/imagepipeline/producers/l$c$a;-><init>(Lcom/facebook/imagepipeline/producers/l$c;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/j0;I)V

    .line 8
    new-instance p3, Lcom/facebook/imagepipeline/producers/t;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/l;->c(Lcom/facebook/imagepipeline/producers/l;)Ljava/util/concurrent/Executor;

    move-result-object p5

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l$c;->e:Lcom/facebook/imagepipeline/common/b;

    iget v0, v0, Lcom/facebook/imagepipeline/common/b;->a:I

    invoke-direct {p3, p5, p2, v0}, Lcom/facebook/imagepipeline/producers/t;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/t$d;I)V

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/l$c;->g:Lcom/facebook/imagepipeline/producers/t;

    .line 9
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/l$c;->c:Lcom/facebook/imagepipeline/producers/j0;

    new-instance p3, Lcom/facebook/imagepipeline/producers/l$c$b;

    invoke-direct {p3, p0, p1, p4}, Lcom/facebook/imagepipeline/producers/l$c$b;-><init>(Lcom/facebook/imagepipeline/producers/l$c;Lcom/facebook/imagepipeline/producers/l;Z)V

    invoke-interface {p2, p3}, Lcom/facebook/imagepipeline/producers/j0;->a(Lcom/facebook/imagepipeline/producers/k0;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/l$c;)Lcom/facebook/imagepipeline/producers/j0;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/l$c;->c:Lcom/facebook/imagepipeline/producers/j0;

    return-object p0
.end method

.method private a(Le/f/i/g/c;JLe/f/i/g/h;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 16
    .param p1    # Le/f/i/g/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/i/g/c;",
            "J",
            "Le/f/i/g/h;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    .line 21
    iget-object v6, v0, Lcom/facebook/imagepipeline/producers/l$c;->d:Lcom/facebook/imagepipeline/producers/l0;

    iget-object v7, v0, Lcom/facebook/imagepipeline/producers/l$c;->c:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {v7}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 22
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-interface/range {p4 .. p4}, Le/f/i/g/h;->b()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    .line 24
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 25
    instance-of v9, v1, Le/f/i/g/d;

    const-string v10, "sampleSize"

    const-string v11, "requestedImageSize"

    const-string v12, "imageFormat"

    const-string v13, "encodedImageSize"

    const-string v14, "isFinal"

    const-string v15, "hasGoodQuality"

    const-string v0, "queueTime"

    if-eqz v9, :cond_1

    .line 26
    check-cast v1, Le/f/i/g/d;

    invoke-virtual {v1}, Le/f/i/g/d;->p()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 27
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    new-instance v5, Ljava/util/HashMap;

    const/16 v9, 0x8

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    const-string v9, "bitmapSize"

    .line 29
    invoke-interface {v5, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-interface {v5, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-interface {v5, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-interface {v5, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-interface {v5, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-interface {v5, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p9

    .line 36
    invoke-interface {v5, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v5}, Lcom/facebook/common/internal/e;->copyOf(Ljava/util/Map;)Lcom/facebook/common/internal/e;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v1, v5

    .line 38
    new-instance v5, Ljava/util/HashMap;

    const/4 v9, 0x7

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 39
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-interface {v5, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-interface {v5, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-interface {v5, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-interface {v5, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-interface {v5, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-interface {v5, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {v5}, Lcom/facebook/common/internal/e;->copyOf(Ljava/util/Map;)Lcom/facebook/common/internal/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/l$c;Le/f/i/g/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/l$c;->c(Le/f/i/g/e;I)V

    return-void
.end method

.method private a(Le/f/i/g/c;I)V
    .locals 1

    .line 47
    invoke-static {p1}, Le/f/c/g/a;->a(Ljava/io/Closeable;)Le/f/c/g/a;

    move-result-object p1

    .line 48
    :try_start_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->a(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/l$c;->b(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {p1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 51
    throw p2
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/producers/l$c;)Lcom/facebook/imagepipeline/producers/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/l$c;->g:Lcom/facebook/imagepipeline/producers/t;

    return-object p0
.end method

.method private b(Z)V
    .locals 1

    .line 7
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 8
    :try_start_0
    iget-boolean p1, p0, Lcom/facebook/imagepipeline/producers/l$c;->f:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a(F)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/l$c;->f:Z

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/l$c;->g:Lcom/facebook/imagepipeline/producers/t;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/t;->a()V

    return-void

    .line 13
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/l$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/l$c;->e()V

    return-void
.end method

.method private c(Le/f/i/g/e;I)V
    .locals 18

    move-object/from16 v11, p0

    move/from16 v0, p2

    const-string v12, "DecodeProducer"

    .line 2
    invoke-virtual/range {p1 .. p1}, Le/f/i/g/e;->p()Le/f/h/c;

    move-result-object v1

    sget-object v2, Le/f/h/b;->a:Le/f/h/c;

    if-eq v1, v2, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/producers/l$c;->f()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static/range {p1 .. p1}, Le/f/i/g/e;->e(Le/f/i/g/e;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_7

    .line 4
    :cond_1
    invoke-virtual/range {p1 .. p1}, Le/f/i/g/e;->p()Le/f/h/c;

    move-result-object v1

    const-string v2, "unknown"

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Le/f/h/c;->a()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :cond_2
    move-object v7, v2

    .line 6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Le/f/i/g/e;->u()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Le/f/i/g/e;->o()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual/range {p1 .. p1}, Le/f/i/g/e;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 8
    invoke-static/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/b;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v5, 0x8

    .line 9
    invoke-static {v0, v5}, Lcom/facebook/imagepipeline/producers/b;->b(II)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/4 v9, 0x4

    .line 10
    invoke-static {v0, v9}, Lcom/facebook/imagepipeline/producers/b;->b(II)Z

    move-result v13

    .line 11
    iget-object v14, v11, Lcom/facebook/imagepipeline/producers/l$c;->c:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {v14}, Lcom/facebook/imagepipeline/producers/j0;->c()Le/f/i/i/b;

    move-result-object v14

    invoke-virtual {v14}, Le/f/i/i/b;->l()Lcom/facebook/imagepipeline/common/e;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v14, Lcom/facebook/imagepipeline/common/e;->a:I

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Lcom/facebook/imagepipeline/common/e;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v14, v2

    .line 13
    :try_start_0
    iget-object v2, v11, Lcom/facebook/imagepipeline/producers/l$c;->g:Lcom/facebook/imagepipeline/producers/t;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/t;->b()J

    move-result-wide v15

    .line 14
    iget-object v2, v11, Lcom/facebook/imagepipeline/producers/l$c;->c:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/j0;->c()Le/f/i/i/b;

    move-result-object v2

    invoke-virtual {v2}, Le/f/i/i/b;->p()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v5, :cond_6

    if-eqz v13, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/facebook/imagepipeline/producers/l$c;->a(Le/f/i/g/e;)I

    move-result v3

    goto :goto_3

    .line 16
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Le/f/i/g/e;->t()I

    move-result v3

    :goto_3
    if-nez v5, :cond_8

    if-eqz v13, :cond_7

    goto :goto_4

    .line 17
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/producers/l$c;->d()Le/f/i/g/h;

    move-result-object v5

    goto :goto_5

    .line 18
    :cond_8
    :goto_4
    sget-object v5, Le/f/i/g/g;->d:Le/f/i/g/h;

    .line 19
    :goto_5
    iget-object v13, v11, Lcom/facebook/imagepipeline/producers/l$c;->d:Lcom/facebook/imagepipeline/producers/l0;

    iget-object v1, v11, Lcom/facebook/imagepipeline/producers/l$c;->c:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1, v12}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    iget-object v13, v11, Lcom/facebook/imagepipeline/producers/l$c;->h:Lcom/facebook/imagepipeline/producers/l;

    invoke-static {v13}, Lcom/facebook/imagepipeline/producers/l;->d(Lcom/facebook/imagepipeline/producers/l;)Le/f/i/e/c;

    move-result-object v13

    iget-object v1, v11, Lcom/facebook/imagepipeline/producers/l$c;->e:Lcom/facebook/imagepipeline/common/b;

    move-object/from16 v4, p1

    invoke-interface {v13, v4, v3, v5, v1}, Le/f/i/e/c;->a(Le/f/i/g/e;ILe/f/i/g/h;Lcom/facebook/imagepipeline/common/b;)Le/f/i/g/c;

    move-result-object v13
    :try_end_1
    .catch Le/f/i/e/a; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Le/f/i/g/e;->s()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    or-int/lit8 v0, v0, 0x10

    :cond_9
    move-object/from16 v1, p0

    move-object v2, v13

    move-wide v3, v15

    move-object v9, v14

    .line 22
    :try_start_3
    invoke-direct/range {v1 .. v10}, Lcom/facebook/imagepipeline/producers/l$c;->a(Le/f/i/g/c;JLe/f/i/g/h;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 23
    iget-object v2, v11, Lcom/facebook/imagepipeline/producers/l$c;->d:Lcom/facebook/imagepipeline/producers/l0;

    iget-object v3, v11, Lcom/facebook/imagepipeline/producers/l$c;->c:Lcom/facebook/imagepipeline/producers/j0;

    .line 24
    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v12, v1}, Lcom/facebook/imagepipeline/producers/l0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    invoke-direct {v11, v13, v0}, Lcom/facebook/imagepipeline/producers/l$c;->a(Le/f/i/g/c;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    invoke-static/range {p1 .. p1}, Le/f/i/g/e;->c(Le/f/i/g/e;)V

    return-void

    :catch_0
    move-exception v0

    move-object v2, v13

    goto :goto_6

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_6

    :catch_2
    move-exception v0

    .line 27
    :try_start_4
    invoke-virtual {v0}, Le/f/i/e/a;->getEncodedImage()Le/f/i/g/e;

    move-result-object v1

    const-string v3, "ProgressiveDecoder"

    const-string v4, "%s, {uri: %s, firstEncodedBytes: %s, length: %d}"

    new-array v9, v9, [Ljava/lang/Object;

    .line 28
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x0

    aput-object v13, v9, v17

    const/4 v13, 0x1

    aput-object v2, v9, v13

    const/4 v2, 0x2

    const/16 v13, 0xa

    .line 29
    invoke-virtual {v1, v13}, Le/f/i/g/e;->c(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v2

    const/4 v2, 0x3

    .line 30
    invoke-virtual {v1}, Le/f/i/g/e;->t()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v2

    .line 31
    invoke-static {v3, v4, v9}, Le/f/c/d/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    move-object/from16 v1, p0

    move-wide v3, v15

    move-object v9, v14

    .line 33
    :try_start_5
    invoke-direct/range {v1 .. v10}, Lcom/facebook/imagepipeline/producers/l$c;->a(Le/f/i/g/c;JLe/f/i/g/h;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 34
    iget-object v2, v11, Lcom/facebook/imagepipeline/producers/l$c;->d:Lcom/facebook/imagepipeline/producers/l0;

    iget-object v3, v11, Lcom/facebook/imagepipeline/producers/l$c;->c:Lcom/facebook/imagepipeline/producers/j0;

    .line 35
    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/j0;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v12, v0, v1}, Lcom/facebook/imagepipeline/producers/l0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 36
    invoke-direct {v11, v0}, Lcom/facebook/imagepipeline/producers/l$c;->c(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 37
    invoke-static/range {p1 .. p1}, Le/f/i/g/e;->c(Le/f/i/g/e;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static/range {p1 .. p1}, Le/f/i/g/e;->c(Le/f/i/g/e;)V

    .line 38
    throw v0

    :cond_a
    :goto_7
    return-void
.end method

.method private c(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/l$c;->b(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/l$c;->b(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/m;->c()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->a()V

    return-void
.end method

.method private declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/l$c;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract a(Le/f/i/g/e;)I
.end method

.method public a(Le/f/i/g/e;I)V
    .locals 2

    .line 3
    :try_start_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DecodeProducer#onNewResultImpl"

    .line 4
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p1}, Le/f/i/g/e;->e(Le/f/i/g/e;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    new-instance p1, Le/f/c/j/a;

    const-string p2, "Encoded image is not valid."

    invoke-direct {p1, p2}, Le/f/c/j/a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/l$c;->c(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-void

    .line 10
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/l$c;->b(Le/f/i/g/e;I)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    .line 11
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_3
    return-void

    :cond_4
    const/4 p1, 0x4

    .line 13
    :try_start_2
    invoke-static {p2, p1}, Lcom/facebook/imagepipeline/producers/b;->b(II)Z

    move-result p1

    if-nez v0, :cond_5

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/l$c;->c:Lcom/facebook/imagepipeline/producers/j0;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/j0;->f()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/l$c;->g:Lcom/facebook/imagepipeline/producers/t;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/t;->c()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :cond_6
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 18
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 19
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 20
    :cond_8
    throw p1
.end method

.method public b()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/l$c;->e()V

    return-void
.end method

.method protected b(F)V
    .locals 1

    const v0, 0x3f7d70a4    # 0.99f

    mul-float p1, p1, v0

    .line 3
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/m;->b(F)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p1, Le/f/i/g/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/l$c;->a(Le/f/i/g/e;I)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/l$c;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected b(Le/f/i/g/e;I)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/l$c;->g:Lcom/facebook/imagepipeline/producers/t;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/t;->a(Le/f/i/g/e;I)Z

    move-result p1

    return p1
.end method

.method protected abstract d()Le/f/i/g/h;
.end method
