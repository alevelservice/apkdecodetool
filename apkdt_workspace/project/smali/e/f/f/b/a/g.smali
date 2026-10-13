.class public Le/f/f/b/a/g;
.super Ljava/lang/Object;
.source "PipelineDraweeControllerFactory.java"


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Le/f/f/c/a;

.field private c:Le/f/i/f/a;

.field private d:Ljava/util/concurrent/Executor;

.field private e:Le/f/i/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/i/c/p<",
            "Le/f/b/a/d;",
            "Le/f/i/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/common/internal/d;
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

.field private g:Lcom/facebook/common/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/f/f/b/a/d;
    .locals 7

    .line 8
    iget-object v1, p0, Le/f/f/b/a/g;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Le/f/f/b/a/g;->b:Le/f/f/c/a;

    iget-object v3, p0, Le/f/f/b/a/g;->c:Le/f/i/f/a;

    iget-object v4, p0, Le/f/f/b/a/g;->d:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Le/f/f/b/a/g;->e:Le/f/i/c/p;

    iget-object v6, p0, Le/f/f/b/a/g;->f:Lcom/facebook/common/internal/d;

    move-object v0, p0

    .line 9
    invoke-virtual/range {v0 .. v6}, Le/f/f/b/a/g;->a(Landroid/content/res/Resources;Le/f/f/c/a;Le/f/i/f/a;Ljava/util/concurrent/Executor;Le/f/i/c/p;Lcom/facebook/common/internal/d;)Le/f/f/b/a/d;

    move-result-object v0

    .line 10
    iget-object v1, p0, Le/f/f/b/a/g;->g:Lcom/facebook/common/internal/j;

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v1}, Lcom/facebook/common/internal/j;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Le/f/f/b/a/d;->b(Z)V

    :cond_0
    return-object v0
.end method

.method protected a(Landroid/content/res/Resources;Le/f/f/c/a;Le/f/i/f/a;Ljava/util/concurrent/Executor;Le/f/i/c/p;Lcom/facebook/common/internal/d;)Le/f/f/b/a/d;
    .locals 8
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
            ">;)",
            "Le/f/f/b/a/d;"
        }
    .end annotation

    .line 12
    new-instance v7, Le/f/f/b/a/d;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Le/f/f/b/a/d;-><init>(Landroid/content/res/Resources;Le/f/f/c/a;Le/f/i/f/a;Ljava/util/concurrent/Executor;Le/f/i/c/p;Lcom/facebook/common/internal/d;)V

    return-object v7
.end method

.method public a(Landroid/content/res/Resources;Le/f/f/c/a;Le/f/i/f/a;Ljava/util/concurrent/Executor;Le/f/i/c/p;Lcom/facebook/common/internal/d;Lcom/facebook/common/internal/j;)V
    .locals 0
    .param p6    # Lcom/facebook/common/internal/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/common/internal/j;
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
            ">;",
            "Lcom/facebook/common/internal/j<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/f/f/b/a/g;->a:Landroid/content/res/Resources;

    .line 2
    iput-object p2, p0, Le/f/f/b/a/g;->b:Le/f/f/c/a;

    .line 3
    iput-object p3, p0, Le/f/f/b/a/g;->c:Le/f/i/f/a;

    .line 4
    iput-object p4, p0, Le/f/f/b/a/g;->d:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p5, p0, Le/f/f/b/a/g;->e:Le/f/i/c/p;

    .line 6
    iput-object p6, p0, Le/f/f/b/a/g;->f:Lcom/facebook/common/internal/d;

    .line 7
    iput-object p7, p0, Le/f/f/b/a/g;->g:Lcom/facebook/common/internal/j;

    return-void
.end method
