.class public Le/f/i/i/c;
.super Ljava/lang/Object;
.source "ImageRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/i/i/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Le/f/i/i/b$b;

.field private c:Lcom/facebook/imagepipeline/common/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/facebook/imagepipeline/common/RotationOptions;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/common/b;

.field private f:Le/f/i/i/b$a;

.field private g:Z

.field private h:Z

.field private i:Lcom/facebook/imagepipeline/common/d;

.field private j:Le/f/i/i/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private n:Le/f/i/h/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private o:Lcom/facebook/imagepipeline/common/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private p:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/f/i/i/c;->a:Landroid/net/Uri;

    .line 3
    sget-object v1, Le/f/i/i/b$b;->FULL_FETCH:Le/f/i/i/b$b;

    iput-object v1, p0, Le/f/i/i/c;->b:Le/f/i/i/b$b;

    .line 4
    iput-object v0, p0, Le/f/i/i/c;->c:Lcom/facebook/imagepipeline/common/e;

    .line 5
    iput-object v0, p0, Le/f/i/i/c;->d:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/common/b;->a()Lcom/facebook/imagepipeline/common/b;

    move-result-object v1

    iput-object v1, p0, Le/f/i/i/c;->e:Lcom/facebook/imagepipeline/common/b;

    .line 7
    sget-object v1, Le/f/i/i/b$a;->DEFAULT:Le/f/i/i/b$a;

    iput-object v1, p0, Le/f/i/i/c;->f:Le/f/i/i/b$a;

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/core/h;->A()Lcom/facebook/imagepipeline/core/h$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h$c;->a()Z

    move-result v1

    iput-boolean v1, p0, Le/f/i/i/c;->g:Z

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Le/f/i/i/c;->h:Z

    .line 10
    sget-object v1, Lcom/facebook/imagepipeline/common/d;->HIGH:Lcom/facebook/imagepipeline/common/d;

    iput-object v1, p0, Le/f/i/i/c;->i:Lcom/facebook/imagepipeline/common/d;

    .line 11
    iput-object v0, p0, Le/f/i/i/c;->j:Le/f/i/i/d;

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Le/f/i/i/c;->k:Z

    .line 13
    iput-boolean v1, p0, Le/f/i/i/c;->l:Z

    .line 14
    iput-object v0, p0, Le/f/i/i/c;->m:Ljava/lang/Boolean;

    .line 15
    iput-object v0, p0, Le/f/i/i/c;->o:Lcom/facebook/imagepipeline/common/a;

    .line 16
    iput-object v0, p0, Le/f/i/i/c;->p:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Le/f/i/i/b;)Le/f/i/i/c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/f/i/i/b;->p()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Le/f/i/i/c;->b(Landroid/net/Uri;)Le/f/i/i/c;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Le/f/i/i/b;->c()Lcom/facebook/imagepipeline/common/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/f/i/i/c;->a(Lcom/facebook/imagepipeline/common/b;)Le/f/i/i/c;

    .line 3
    invoke-virtual {p0}, Le/f/i/i/b;->a()Lcom/facebook/imagepipeline/common/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/f/i/i/c;->a(Lcom/facebook/imagepipeline/common/a;)Le/f/i/i/c;

    .line 4
    invoke-virtual {p0}, Le/f/i/i/b;->b()Le/f/i/i/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/f/i/i/c;->a(Le/f/i/i/b$a;)Le/f/i/i/c;

    .line 5
    invoke-virtual {p0}, Le/f/i/i/b;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Le/f/i/i/c;->a(Z)Le/f/i/i/c;

    .line 6
    invoke-virtual {p0}, Le/f/i/i/b;->e()Le/f/i/i/b$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/f/i/i/c;->a(Le/f/i/i/b$b;)Le/f/i/i/c;

    .line 7
    invoke-virtual {p0}, Le/f/i/i/b;->f()Le/f/i/i/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/f/i/i/c;->a(Le/f/i/i/d;)Le/f/i/i/c;

    .line 8
    invoke-virtual {p0}, Le/f/i/i/b;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Le/f/i/i/c;->b(Z)Le/f/i/i/c;

    .line 9
    invoke-virtual {p0}, Le/f/i/i/b;->i()Lcom/facebook/imagepipeline/common/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/f/i/i/c;->a(Lcom/facebook/imagepipeline/common/d;)Le/f/i/i/c;

    .line 10
    invoke-virtual {p0}, Le/f/i/i/b;->l()Lcom/facebook/imagepipeline/common/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/f/i/i/c;->a(Lcom/facebook/imagepipeline/common/e;)Le/f/i/i/c;

    .line 11
    invoke-virtual {p0}, Le/f/i/i/b;->k()Le/f/i/h/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/f/i/i/c;->a(Le/f/i/h/c;)Le/f/i/i/c;

    .line 12
    invoke-virtual {p0}, Le/f/i/i/b;->n()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/f/i/i/c;->a(Lcom/facebook/imagepipeline/common/RotationOptions;)Le/f/i/i/c;

    .line 13
    invoke-virtual {p0}, Le/f/i/i/b;->t()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Le/f/i/i/c;->a(Ljava/lang/Boolean;)Le/f/i/i/c;

    return-object v0
.end method

.method public static b(Landroid/net/Uri;)Le/f/i/i/c;
    .locals 1

    .line 1
    new-instance v0, Le/f/i/i/c;

    invoke-direct {v0}, Le/f/i/i/c;-><init>()V

    invoke-virtual {v0, p0}, Le/f/i/i/c;->a(Landroid/net/Uri;)Le/f/i/i/c;

    return-object v0
.end method


# virtual methods
.method public a()Le/f/i/i/b;
    .locals 1

    .line 26
    invoke-virtual {p0}, Le/f/i/i/c;->r()V

    .line 27
    new-instance v0, Le/f/i/i/b;

    invoke-direct {v0, p0}, Le/f/i/i/b;-><init>(Le/f/i/i/c;)V

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Le/f/i/i/c;
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Le/f/i/i/c;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public a(Lcom/facebook/imagepipeline/common/RotationOptions;)Le/f/i/i/c;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/common/RotationOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    iput-object p1, p0, Le/f/i/i/c;->d:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-object p0
.end method

.method public a(Lcom/facebook/imagepipeline/common/a;)Le/f/i/i/c;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/common/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    iput-object p1, p0, Le/f/i/i/c;->o:Lcom/facebook/imagepipeline/common/a;

    return-object p0
.end method

.method public a(Lcom/facebook/imagepipeline/common/b;)Le/f/i/i/c;
    .locals 0

    .line 20
    iput-object p1, p0, Le/f/i/i/c;->e:Lcom/facebook/imagepipeline/common/b;

    return-object p0
.end method

.method public a(Lcom/facebook/imagepipeline/common/d;)Le/f/i/i/c;
    .locals 0

    .line 23
    iput-object p1, p0, Le/f/i/i/c;->i:Lcom/facebook/imagepipeline/common/d;

    return-object p0
.end method

.method public a(Lcom/facebook/imagepipeline/common/e;)Le/f/i/i/c;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    iput-object p1, p0, Le/f/i/i/c;->c:Lcom/facebook/imagepipeline/common/e;

    return-object p0
.end method

.method public a(Le/f/i/h/c;)Le/f/i/i/c;
    .locals 0

    .line 25
    iput-object p1, p0, Le/f/i/i/c;->n:Le/f/i/h/c;

    return-object p0
.end method

.method public a(Le/f/i/i/b$a;)Le/f/i/i/c;
    .locals 0

    .line 21
    iput-object p1, p0, Le/f/i/i/c;->f:Le/f/i/i/b$a;

    return-object p0
.end method

.method public a(Le/f/i/i/b$b;)Le/f/i/i/c;
    .locals 0

    .line 16
    iput-object p1, p0, Le/f/i/i/c;->b:Le/f/i/i/b$b;

    return-object p0
.end method

.method public a(Le/f/i/i/d;)Le/f/i/i/c;
    .locals 0

    .line 24
    iput-object p1, p0, Le/f/i/i/c;->j:Le/f/i/i/d;

    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Le/f/i/i/c;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    iput-object p1, p0, Le/f/i/i/c;->m:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a(Z)Le/f/i/i/c;
    .locals 0

    .line 22
    iput-boolean p1, p0, Le/f/i/i/c;->h:Z

    return-object p0
.end method

.method public b()Lcom/facebook/imagepipeline/common/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Le/f/i/i/c;->o:Lcom/facebook/imagepipeline/common/a;

    return-object v0
.end method

.method public b(Z)Le/f/i/i/c;
    .locals 0

    .line 3
    iput-boolean p1, p0, Le/f/i/i/c;->g:Z

    return-object p0
.end method

.method public c()Le/f/i/i/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/i/c;->f:Le/f/i/i/b$a;

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/common/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/i/c;->e:Lcom/facebook/imagepipeline/common/b;

    return-object v0
.end method

.method public e()Le/f/i/i/b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/i/c;->b:Le/f/i/i/b$b;

    return-object v0
.end method

.method public f()Le/f/i/i/d;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/i/c;->j:Le/f/i/i/d;

    return-object v0
.end method

.method public g()Le/f/i/h/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/i/c;->n:Le/f/i/h/c;

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/common/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/i/c;->i:Lcom/facebook/imagepipeline/common/d;

    return-object v0
.end method

.method public i()Lcom/facebook/imagepipeline/common/e;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/i/c;->c:Lcom/facebook/imagepipeline/common/e;

    return-object v0
.end method

.method public j()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/i/c;->p:Ljava/lang/Boolean;

    return-object v0
.end method

.method public k()Lcom/facebook/imagepipeline/common/RotationOptions;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/i/c;->d:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-object v0
.end method

.method public l()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/i/c;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/f/i/i/c;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/f/i/i/c;->a:Landroid/net/Uri;

    invoke-static {v0}, Le/f/c/j/f;->i(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/f/i/i/c;->h:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/f/i/i/c;->l:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/f/i/i/c;->g:Z

    return v0
.end method

.method public q()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/i/c;->m:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected r()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/i/i/c;->a:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 2
    invoke-static {v0}, Le/f/c/j/f;->h(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Le/f/i/i/c;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/f/i/i/c;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Le/f/i/i/c;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance v0, Le/f/i/i/c$a;

    const-string v1, "Resource URI path must be a resource id."

    invoke-direct {v0, v1}, Le/f/i/i/c$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    new-instance v0, Le/f/i/i/c$a;

    const-string v1, "Resource URI must not be empty"

    invoke-direct {v0, v1}, Le/f/i/i/c$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance v0, Le/f/i/i/c$a;

    const-string v1, "Resource URI path must be absolute."

    invoke-direct {v0, v1}, Le/f/i/i/c$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Le/f/i/i/c;->a:Landroid/net/Uri;

    invoke-static {v0}, Le/f/c/j/f;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/f/i/i/c;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    new-instance v0, Le/f/i/i/c$a;

    const-string v1, "Asset URI path must be absolute."

    invoke-direct {v0, v1}, Le/f/i/i/c$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-void

    .line 11
    :cond_5
    new-instance v0, Le/f/i/i/c$a;

    const-string v1, "Source must be set!"

    invoke-direct {v0, v1}, Le/f/i/i/c$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method
