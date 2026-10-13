.class public Le/f/f/b/a/d;
.super Le/f/f/d/a;
.source "PipelineDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/f/d/a<",
        "Le/f/c/g/a<",
        "Le/f/i/g/c;",
        ">;",
        "Le/f/i/g/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final F:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/facebook/common/internal/d;
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

.field private B:Lcom/facebook/drawee/backends/pipeline/info/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/f/i/h/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private D:Lcom/facebook/drawee/backends/pipeline/info/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private E:Le/f/f/b/a/h/a;

.field private final u:Le/f/i/f/a;

.field private final v:Lcom/facebook/common/internal/d;
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

.field private final w:Le/f/i/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private x:Le/f/b/a/d;

.field private y:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Le/f/d/c<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/f/f/b/a/d;

    sput-object v0, Le/f/f/b/a/d;->F:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Le/f/f/c/a;Le/f/i/f/a;Ljava/util/concurrent/Executor;Le/f/i/c/p;Lcom/facebook/common/internal/d;)V
    .locals 1
    .param p5    # Le/f/i/c/p;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/common/internal/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Le/f/f/c/a;",
            "Le/f/i/f/a;",
            "Ljava/util/concurrent/Executor;",
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;",
            "Lcom/facebook/common/internal/d<",
            "Le/f/i/f/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, p4, v0, v0}, Le/f/f/d/a;-><init>(Le/f/f/c/a;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance p2, Le/f/f/b/a/a;

    invoke-direct {p2, p1, p3}, Le/f/f/b/a/a;-><init>(Landroid/content/res/Resources;Le/f/i/f/a;)V

    iput-object p2, p0, Le/f/f/b/a/d;->u:Le/f/i/f/a;

    .line 3
    iput-object p6, p0, Le/f/f/b/a/d;->v:Lcom/facebook/common/internal/d;

    .line 4
    iput-object p5, p0, Le/f/f/b/a/d;->w:Le/f/i/c/p;

    return-void
.end method

.method private a(Lcom/facebook/common/internal/d;Le/f/i/g/c;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1    # Lcom/facebook/common/internal/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/d<",
            "Le/f/i/f/a;",
            ">;",
            "Le/f/i/g/c;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/i/f/a;

    .line 54
    invoke-interface {v1, p2}, Le/f/i/f/a;->a(Le/f/i/g/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-interface {v1, p2}, Le/f/i/f/a;->b(Le/f/i/g/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private a(Lcom/facebook/common/internal/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/j<",
            "Le/f/d/c<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;>;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Le/f/f/b/a/d;->y:Lcom/facebook/common/internal/j;

    const/4 p1, 0x0

    .line 33
    invoke-direct {p0, p1}, Le/f/f/b/a/d;->a(Le/f/i/g/c;)V

    return-void
.end method

.method private a(Le/f/i/g/c;)V
    .locals 3
    .param p1    # Le/f/i/g/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    iget-boolean v0, p0, Le/f/f/b/a/d;->z:Z

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Le/f/f/d/a;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Le/f/f/e/a;

    invoke-direct {v0}, Le/f/f/e/a;-><init>()V

    .line 61
    new-instance v1, Le/f/f/e/b/a;

    invoke-direct {v1, v0}, Le/f/f/e/b/a;-><init>(Le/f/f/e/b/b;)V

    .line 62
    new-instance v2, Le/f/f/b/a/h/a;

    invoke-direct {v2}, Le/f/f/b/a/h/a;-><init>()V

    iput-object v2, p0, Le/f/f/b/a/d;->E:Le/f/f/b/a/h/a;

    .line 63
    invoke-virtual {p0, v1}, Le/f/f/d/a;->a(Le/f/f/d/d;)V

    .line 64
    invoke-virtual {p0, v0}, Le/f/f/d/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_1
    iget-object v0, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Le/f/f/b/a/d;->E:Le/f/f/b/a/h/a;

    invoke-virtual {p0, v0}, Le/f/f/b/a/d;->a(Lcom/facebook/drawee/backends/pipeline/info/b;)V

    .line 67
    :cond_2
    invoke-virtual {p0}, Le/f/f/d/a;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Le/f/f/e/a;

    if-eqz v0, :cond_5

    .line 68
    invoke-virtual {p0}, Le/f/f/d/a;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Le/f/f/e/a;

    .line 69
    invoke-virtual {p0}, Le/f/f/d/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/f/f/e/a;->a(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Le/f/f/d/a;->c()Le/f/f/i/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 71
    invoke-interface {v1}, Le/f/f/i/b;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Le/f/f/f/q;->a(Landroid/graphics/drawable/Drawable;)Le/f/f/f/p;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 72
    invoke-virtual {v1}, Le/f/f/f/p;->c()Le/f/f/f/q$b;

    move-result-object v1

    move-object v2, v1

    .line 73
    :cond_3
    invoke-virtual {v0, v2}, Le/f/f/e/a;->a(Le/f/f/f/q$b;)V

    .line 74
    iget-object v1, p0, Le/f/f/b/a/d;->E:Le/f/f/b/a/h/a;

    invoke-virtual {v1}, Le/f/f/b/a/h/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/f/f/e/a;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 75
    invoke-interface {p1}, Le/f/i/g/f;->getWidth()I

    move-result v1

    invoke-interface {p1}, Le/f/i/g/f;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Le/f/f/e/a;->a(II)V

    .line 76
    invoke-virtual {p1}, Le/f/i/g/c;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Le/f/f/e/a;->a(I)V

    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {v0}, Le/f/f/e/a;->a()V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Le/f/c/g/a;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 34
    :try_start_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#createDrawable"

    .line 35
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 36
    :cond_0
    invoke-static {p1}, Le/f/c/g/a;->c(Le/f/c/g/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/h;->b(Z)V

    .line 37
    invoke-virtual {p1}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/f/i/g/c;

    .line 38
    invoke-direct {p0, p1}, Le/f/f/b/a/d;->a(Le/f/i/g/c;)V

    .line 39
    iget-object v0, p0, Le/f/f/b/a/d;->A:Lcom/facebook/common/internal/d;

    .line 40
    invoke-direct {p0, v0, p1}, Le/f/f/b/a/d;->a(Lcom/facebook/common/internal/d;Le/f/i/g/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 41
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-object v0

    .line 43
    :cond_2
    :try_start_1
    iget-object v0, p0, Le/f/f/b/a/d;->v:Lcom/facebook/common/internal/d;

    invoke-direct {p0, v0, p1}, Le/f/f/b/a/d;->a(Lcom/facebook/common/internal/d;Le/f/i/g/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 44
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 45
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_3
    return-object v0

    .line 46
    :cond_4
    :try_start_2
    iget-object v0, p0, Le/f/f/b/a/d;->u:Le/f/i/f/a;

    invoke-interface {v0, p1}, Le/f/i/f/a;->b(Le/f/i/g/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    .line 47
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 48
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_5
    return-object v0

    .line 49
    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized image class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 50
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 52
    :cond_7
    throw p1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    check-cast p1, Le/f/c/g/a;

    invoke-virtual {p0, p1}, Le/f/f/b/a/d;->a(Le/f/c/g/a;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    instance-of v0, p1, Le/f/e/a/a;

    if-eqz v0, :cond_0

    .line 79
    check-cast p1, Le/f/e/a/a;

    invoke-interface {p1}, Le/f/e/a/a;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/common/internal/d;)V
    .locals 0
    .param p1    # Lcom/facebook/common/internal/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/d<",
            "Le/f/i/f/a;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Le/f/f/b/a/d;->A:Lcom/facebook/common/internal/d;

    return-void
.end method

.method public a(Lcom/facebook/common/internal/j;Ljava/lang/String;Le/f/b/a/d;Ljava/lang/Object;Lcom/facebook/common/internal/d;Lcom/facebook/drawee/backends/pipeline/info/b;)V
    .locals 1
    .param p5    # Lcom/facebook/common/internal/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/drawee/backends/pipeline/info/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/j<",
            "Le/f/d/c<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Le/f/b/a/d;",
            "Ljava/lang/Object;",
            "Lcom/facebook/common/internal/d<",
            "Le/f/i/f/a;",
            ">;",
            "Lcom/facebook/drawee/backends/pipeline/info/b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#initialize"

    .line 3
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-super {p0, p2, p4}, Le/f/f/d/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0, p1}, Le/f/f/b/a/d;->a(Lcom/facebook/common/internal/j;)V

    .line 6
    iput-object p3, p0, Le/f/f/b/a/d;->x:Le/f/b/a/d;

    .line 7
    invoke-virtual {p0, p5}, Le/f/f/b/a/d;->a(Lcom/facebook/common/internal/d;)V

    .line 8
    invoke-virtual {p0}, Le/f/f/b/a/d;->p()V

    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Le/f/f/b/a/d;->a(Le/f/i/g/c;)V

    .line 10
    invoke-virtual {p0, p6}, Le/f/f/b/a/d;->a(Lcom/facebook/drawee/backends/pipeline/info/b;)V

    .line 11
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-void
.end method

.method public declared-synchronized a(Lcom/facebook/drawee/backends/pipeline/info/b;)V
    .locals 4

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    instance-of v0, v0, Lcom/facebook/drawee/backends/pipeline/info/a;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/info/a;

    .line 27
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/info/a;->a(Lcom/facebook/drawee/backends/pipeline/info/b;)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    if-eqz v0, :cond_1

    .line 29
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/drawee/backends/pipeline/info/b;

    const/4 v2, 0x0

    iget-object v3, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/a;-><init>([Lcom/facebook/drawee/backends/pipeline/info/b;)V

    iput-object v0, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    goto :goto_0

    .line 30
    :cond_1
    iput-object p1, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized a(Lcom/facebook/drawee/backends/pipeline/info/f;)V
    .locals 2
    .param p1    # Lcom/facebook/drawee/backends/pipeline/info/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Le/f/f/b/a/d;->B:Lcom/facebook/drawee/backends/pipeline/info/g;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Le/f/f/b/a/d;->B:Lcom/facebook/drawee/backends/pipeline/info/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/info/g;->c()V

    :cond_0
    if-eqz p1, :cond_2

    .line 15
    iget-object v0, p0, Le/f/f/b/a/d;->B:Lcom/facebook/drawee/backends/pipeline/info/g;

    if-nez v0, :cond_1

    .line 16
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/g;

    invoke-static {}, Lcom/facebook/common/time/AwakeTimeSinceBootClock;->get()Lcom/facebook/common/time/AwakeTimeSinceBootClock;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/facebook/drawee/backends/pipeline/info/g;-><init>(Lcom/facebook/common/time/b;Le/f/f/b/a/d;)V

    iput-object v0, p0, Le/f/f/b/a/d;->B:Lcom/facebook/drawee/backends/pipeline/info/g;

    .line 17
    :cond_1
    iget-object v0, p0, Le/f/f/b/a/d;->B:Lcom/facebook/drawee/backends/pipeline/info/g;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/info/g;->a(Lcom/facebook/drawee/backends/pipeline/info/f;)V

    .line 18
    iget-object p1, p0, Le/f/f/b/a/d;->B:Lcom/facebook/drawee/backends/pipeline/info/g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/backends/pipeline/info/g;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Le/f/f/i/b;)V
    .locals 0
    .param p1    # Le/f/f/i/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-super {p0, p1}, Le/f/f/d/a;->a(Le/f/f/i/b;)V

    const/4 p1, 0x0

    .line 57
    invoke-direct {p0, p1}, Le/f/f/b/a/d;->a(Le/f/i/g/c;)V

    return-void
.end method

.method public declared-synchronized a(Le/f/i/h/c;)V
    .locals 1

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Le/f/f/b/a/d;->C:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/f/f/b/a/d;->C:Ljava/util/Set;

    .line 23
    :cond_0
    iget-object v0, p0, Le/f/f/b/a/d;->C:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(Ljava/lang/String;Le/f/c/g/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-super {p0, p1, p2}, Le/f/f/d/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object p2, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    if-eqz p2, :cond_0

    .line 83
    iget-object p2, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/b;->a(Ljava/lang/String;IZ)V

    .line 84
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b(Le/f/c/g/a;)I
    .locals 0
    .param p1    # Le/f/c/g/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Le/f/c/g/a;->B()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized b(Lcom/facebook/drawee/backends/pipeline/info/b;)V
    .locals 4

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    instance-of v0, v0, Lcom/facebook/drawee/backends/pipeline/info/a;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/info/a;

    .line 9
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/info/a;->b(Lcom/facebook/drawee/backends/pipeline/info/b;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/drawee/backends/pipeline/info/b;

    const/4 v2, 0x0

    iget-object v3, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/a;-><init>([Lcom/facebook/drawee/backends/pipeline/info/b;)V

    iput-object v0, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    goto :goto_0

    .line 12
    :cond_1
    iput-object p1, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Le/f/i/h/c;)V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Le/f/f/b/a/d;->C:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/f/f/b/a/d;->C:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected bridge synthetic b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Le/f/c/g/a;

    invoke-virtual {p0, p1, p2}, Le/f/f/b/a/d;->a(Ljava/lang/String;Le/f/c/g/a;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Le/f/f/b/a/d;->z:Z

    return-void
.end method

.method protected bridge synthetic c(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Le/f/c/g/a;

    invoke-virtual {p0, p1}, Le/f/f/b/a/d;->b(Le/f/c/g/a;)I

    move-result p1

    return p1
.end method

.method protected c(Le/f/c/g/a;)Le/f/i/g/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;)",
            "Le/f/i/g/f;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Le/f/c/g/a;->c(Le/f/c/g/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/h;->b(Z)V

    .line 3
    invoke-virtual {p1}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/f/i/g/f;

    return-object p1
.end method

.method protected bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Le/f/c/g/a;

    invoke-virtual {p0, p1}, Le/f/f/b/a/d;->c(Le/f/c/g/a;)Le/f/i/g/f;

    move-result-object p1

    return-object p1
.end method

.method protected d(Le/f/c/g/a;)V
    .locals 0
    .param p1    # Le/f/c/g/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return-void
.end method

.method protected bridge synthetic e(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Le/f/c/g/a;

    invoke-virtual {p0, p1}, Le/f/f/b/a/d;->d(Le/f/c/g/a;)V

    return-void
.end method

.method protected g()Le/f/c/g/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#getCachedImage"

    .line 3
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/f/f/b/a/d;->w:Le/f/i/c/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Le/f/f/b/a/d;->x:Le/f/b/a/d;

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/f/f/b/a/d;->w:Le/f/i/c/p;

    iget-object v2, p0, Le/f/f/b/a/d;->x:Le/f/b/a/d;

    invoke-interface {v0, v2}, Le/f/i/c/p;->get(Ljava/lang/Object;)Le/f/c/g/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/f/i/g/c;

    invoke-virtual {v2}, Le/f/i/g/c;->i()Le/f/i/g/h;

    move-result-object v2

    invoke-interface {v2}, Le/f/i/g/h;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 7
    invoke-virtual {v0}, Le/f/c/g/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_2
    return-object v1

    .line 10
    :cond_3
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_4
    return-object v0

    .line 12
    :cond_5
    :goto_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_6
    return-object v1

    :catchall_0
    move-exception v0

    .line 14
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 16
    :cond_7
    throw v0
.end method

.method protected bridge synthetic g()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/f/f/b/a/d;->g()Le/f/c/g/a;

    move-result-object v0

    return-object v0
.end method

.method protected j()Le/f/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/d/c<",
            "Le/f/c/g/a<",
            "Le/f/i/g/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeController#getDataSource"

    .line 2
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Le/f/c/d/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Le/f/f/b/a/d;->F:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "controller %x: getDataSource"

    invoke-static {v0, v2, v1}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Le/f/f/b/a/d;->y:Lcom/facebook/common/internal/j;

    invoke-interface {v0}, Lcom/facebook/common/internal/j;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/d/c;

    .line 6
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_2
    return-object v0
.end method

.method protected p()V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized q()Le/f/i/h/c;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/c;

    invoke-virtual {p0}, Le/f/f/d/a;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/f/f/b/a/d;->D:Lcom/facebook/drawee/backends/pipeline/info/b;

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/c;-><init>(Ljava/lang/String;Lcom/facebook/drawee/backends/pipeline/info/b;)V

    .line 3
    :cond_0
    iget-object v1, p0, Le/f/f/b/a/d;->C:Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Le/f/i/h/b;

    iget-object v2, p0, Le/f/f/b/a/d;->C:Ljava/util/Set;

    invoke-direct {v1, v2}, Le/f/i/h/b;-><init>(Ljava/util/Set;)V

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Le/f/i/h/b;->a(Le/f/i/h/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-object v1

    .line 7
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    .line 2
    invoke-super {p0}, Le/f/f/d/a;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "super"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    iget-object v1, p0, Le/f/f/b/a/d;->y:Lcom/facebook/common/internal/j;

    const-string v2, "dataSourceSupplier"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    .line 4
    invoke-virtual {v0}, Lcom/facebook/common/internal/g$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
