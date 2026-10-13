.class public Le/f/f/b/a/e;
.super Le/f/f/d/b;
.source "PipelineDraweeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/f/d/b<",
        "Le/f/f/b/a/e;",
        "Le/f/i/i/b;",
        "Le/f/c/g/a<",
        "Le/f/i/g/c;",
        ">;",
        "Le/f/i/g/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final s:Lcom/facebook/imagepipeline/core/g;

.field private final t:Le/f/f/b/a/g;

.field private u:Lcom/facebook/common/internal/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/d<",
            "Le/f/i/f/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private v:Lcom/facebook/drawee/backends/pipeline/info/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private w:Lcom/facebook/drawee/backends/pipeline/info/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/f/f/b/a/g;Lcom/facebook/imagepipeline/core/g;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/f/f/b/a/g;",
            "Lcom/facebook/imagepipeline/core/g;",
            "Ljava/util/Set<",
            "Le/f/f/d/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p4}, Le/f/f/d/b;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    .line 2
    iput-object p3, p0, Le/f/f/b/a/e;->s:Lcom/facebook/imagepipeline/core/g;

    .line 3
    iput-object p2, p0, Le/f/f/b/a/e;->t:Le/f/f/b/a/g;

    return-void
.end method

.method public static a(Le/f/f/d/b$c;)Le/f/i/i/b$b;
    .locals 3

    .line 12
    sget-object v0, Le/f/f/b/a/e$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 13
    sget-object p0, Le/f/i/i/b$b;->BITMAP_MEMORY_CACHE:Le/f/i/i/b$b;

    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "is not supported. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_1
    sget-object p0, Le/f/i/i/b$b;->DISK_CACHE:Le/f/i/i/b$b;

    return-object p0

    .line 16
    :cond_2
    sget-object p0, Le/f/i/i/b$b;->FULL_FETCH:Le/f/i/i/b$b;

    return-object p0
.end method

.method private m()Le/f/b/a/d;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/f/f/d/b;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/i/i/b;

    .line 2
    iget-object v1, p0, Le/f/f/b/a/e;->s:Lcom/facebook/imagepipeline/core/g;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/g;->c()Le/f/i/c/f;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Le/f/i/i/b;->f()Le/f/i/i/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Le/f/f/d/b;->c()Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-interface {v1, v0, v2}, Le/f/i/c/f;->b(Le/f/i/i/b;Ljava/lang/Object;)Le/f/b/a/d;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Le/f/f/d/b;->c()Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-interface {v1, v0, v2}, Le/f/i/c/f;->a(Le/f/i/i/b;Ljava/lang/Object;)Le/f/b/a/d;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected a(Le/f/f/i/a;Ljava/lang/String;Le/f/i/i/b;Ljava/lang/Object;Le/f/f/d/b$c;)Le/f/d/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/f/i/a;",
            "Ljava/lang/String;",
            "Le/f/i/i/b;",
            "Ljava/lang/Object;",
            "Le/f/f/d/b$c;",
            ")",
            "Le/f/d/c<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;"
        }
    .end annotation

    .line 8
    iget-object p2, p0, Le/f/f/b/a/e;->s:Lcom/facebook/imagepipeline/core/g;

    .line 9
    invoke-static {p5}, Le/f/f/b/a/e;->a(Le/f/f/d/b$c;)Le/f/i/i/b$b;

    move-result-object p5

    .line 10
    invoke-virtual {p0, p1}, Le/f/f/b/a/e;->b(Le/f/f/i/a;)Le/f/i/h/c;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p3, p4, p5, p1}, Lcom/facebook/imagepipeline/core/g;->a(Le/f/i/i/b;Ljava/lang/Object;Le/f/i/i/b$b;Le/f/i/h/c;)Le/f/d/c;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Le/f/f/i/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Le/f/f/d/b$c;)Le/f/d/c;
    .locals 0

    .line 1
    check-cast p3, Le/f/i/i/b;

    invoke-virtual/range {p0 .. p5}, Le/f/f/b/a/e;->a(Le/f/f/i/a;Ljava/lang/String;Le/f/i/i/b;Ljava/lang/Object;Le/f/f/d/b$c;)Le/f/d/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/net/Uri;)Le/f/f/b/a/e;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-super {p0, p1}, Le/f/f/d/b;->b(Ljava/lang/Object;)Le/f/f/d/b;

    move-object p1, p0

    check-cast p1, Le/f/f/b/a/e;

    return-object p1

    .line 4
    :cond_0
    invoke-static {p1}, Le/f/i/i/c;->b(Landroid/net/Uri;)Le/f/i/i/c;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/common/RotationOptions;->f()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/f/i/i/c;->a(Lcom/facebook/imagepipeline/common/RotationOptions;)Le/f/i/i/c;

    .line 6
    invoke-virtual {p1}, Le/f/i/i/c;->a()Le/f/i/i/b;

    move-result-object p1

    .line 7
    invoke-super {p0, p1}, Le/f/f/d/b;->b(Ljava/lang/Object;)Le/f/f/d/b;

    move-object p1, p0

    check-cast p1, Le/f/f/b/a/e;

    return-object p1
.end method

.method public bridge synthetic a(Landroid/net/Uri;)Le/f/f/i/d;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0, p1}, Le/f/f/b/a/e;->a(Landroid/net/Uri;)Le/f/f/b/a/e;

    move-result-object p1

    return-object p1
.end method

.method protected b(Le/f/f/i/a;)Le/f/i/h/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Le/f/f/b/a/d;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/f/f/b/a/d;

    invoke-virtual {p1}, Le/f/f/b/a/d;->q()Le/f/i/h/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected j()Le/f/f/b/a/d;
    .locals 8

    .line 2
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeControllerBuilder#obtainController"

    .line 3
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Le/f/f/d/b;->g()Le/f/f/i/a;

    move-result-object v0

    .line 5
    invoke-static {}, Le/f/f/d/b;->l()Ljava/lang/String;

    move-result-object v3

    .line 6
    instance-of v1, v0, Le/f/f/b/a/d;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Le/f/f/b/a/d;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Le/f/f/b/a/e;->t:Le/f/f/b/a/g;

    invoke-virtual {v0}, Le/f/f/b/a/g;->a()Le/f/f/b/a/d;

    move-result-object v0

    .line 9
    :goto_0
    invoke-virtual {p0, v0, v3}, Le/f/f/d/b;->a(Le/f/f/i/a;Ljava/lang/String;)Lcom/facebook/common/internal/j;

    move-result-object v2

    .line 10
    invoke-direct {p0}, Le/f/f/b/a/e;->m()Le/f/b/a/d;

    move-result-object v4

    .line 11
    invoke-virtual {p0}, Le/f/f/d/b;->c()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Le/f/f/b/a/e;->u:Lcom/facebook/common/internal/d;

    iget-object v7, p0, Le/f/f/b/a/e;->v:Lcom/facebook/drawee/backends/pipeline/info/b;

    move-object v1, v0

    .line 12
    invoke-virtual/range {v1 .. v7}, Le/f/f/b/a/d;->a(Lcom/facebook/common/internal/j;Ljava/lang/String;Le/f/b/a/d;Ljava/lang/Object;Lcom/facebook/common/internal/d;Lcom/facebook/drawee/backends/pipeline/info/b;)V

    .line 13
    iget-object v1, p0, Le/f/f/b/a/e;->w:Lcom/facebook/drawee/backends/pipeline/info/f;

    invoke-virtual {v0, v1}, Le/f/f/b/a/d;->a(Lcom/facebook/drawee/backends/pipeline/info/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 16
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 18
    :cond_3
    throw v0
.end method

.method protected bridge synthetic j()Le/f/f/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/f/f/b/a/e;->j()Le/f/f/b/a/d;

    move-result-object v0

    return-object v0
.end method
