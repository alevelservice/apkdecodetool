.class public Le/f/i/i/b;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/i/i/b$b;,
        Le/f/i/i/b$a;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Le/f/i/i/b$a;

.field private final b:Landroid/net/Uri;

.field private final c:I

.field private d:Ljava/io/File;

.field private final e:Z

.field private final f:Z

.field private final g:Lcom/facebook/imagepipeline/common/b;

.field private final h:Lcom/facebook/imagepipeline/common/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final i:Lcom/facebook/imagepipeline/common/RotationOptions;

.field private final j:Lcom/facebook/imagepipeline/common/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final k:Lcom/facebook/imagepipeline/common/d;

.field private final l:Le/f/i/i/b$b;

.field private final m:Z

.field private final n:Z

.field private final o:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final p:Le/f/i/i/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final q:Le/f/i/h/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final r:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Le/f/i/i/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Le/f/i/i/c;->c()Le/f/i/i/b$a;

    move-result-object v0

    iput-object v0, p0, Le/f/i/i/b;->a:Le/f/i/i/b$a;

    .line 3
    invoke-virtual {p1}, Le/f/i/i/c;->l()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Le/f/i/i/b;->b:Landroid/net/Uri;

    .line 4
    iget-object v0, p0, Le/f/i/i/b;->b:Landroid/net/Uri;

    invoke-static {v0}, Le/f/i/i/b;->a(Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Le/f/i/i/b;->c:I

    .line 5
    invoke-virtual {p1}, Le/f/i/i/c;->p()Z

    move-result v0

    iput-boolean v0, p0, Le/f/i/i/b;->e:Z

    .line 6
    invoke-virtual {p1}, Le/f/i/i/c;->n()Z

    move-result v0

    iput-boolean v0, p0, Le/f/i/i/b;->f:Z

    .line 7
    invoke-virtual {p1}, Le/f/i/i/c;->d()Lcom/facebook/imagepipeline/common/b;

    move-result-object v0

    iput-object v0, p0, Le/f/i/i/b;->g:Lcom/facebook/imagepipeline/common/b;

    .line 8
    invoke-virtual {p1}, Le/f/i/i/c;->i()Lcom/facebook/imagepipeline/common/e;

    move-result-object v0

    iput-object v0, p0, Le/f/i/i/b;->h:Lcom/facebook/imagepipeline/common/e;

    .line 9
    invoke-virtual {p1}, Le/f/i/i/c;->k()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    invoke-static {}, Lcom/facebook/imagepipeline/common/RotationOptions;->e()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Le/f/i/i/c;->k()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Le/f/i/i/b;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 11
    invoke-virtual {p1}, Le/f/i/i/c;->b()Lcom/facebook/imagepipeline/common/a;

    move-result-object v0

    iput-object v0, p0, Le/f/i/i/b;->j:Lcom/facebook/imagepipeline/common/a;

    .line 12
    invoke-virtual {p1}, Le/f/i/i/c;->h()Lcom/facebook/imagepipeline/common/d;

    move-result-object v0

    iput-object v0, p0, Le/f/i/i/b;->k:Lcom/facebook/imagepipeline/common/d;

    .line 13
    invoke-virtual {p1}, Le/f/i/i/c;->e()Le/f/i/i/b$b;

    move-result-object v0

    iput-object v0, p0, Le/f/i/i/b;->l:Le/f/i/i/b$b;

    .line 14
    invoke-virtual {p1}, Le/f/i/i/c;->m()Z

    move-result v0

    iput-boolean v0, p0, Le/f/i/i/b;->m:Z

    .line 15
    invoke-virtual {p1}, Le/f/i/i/c;->o()Z

    move-result v0

    iput-boolean v0, p0, Le/f/i/i/b;->n:Z

    .line 16
    invoke-virtual {p1}, Le/f/i/i/c;->q()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Le/f/i/i/b;->o:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {p1}, Le/f/i/i/c;->f()Le/f/i/i/d;

    move-result-object v0

    iput-object v0, p0, Le/f/i/i/b;->p:Le/f/i/i/d;

    .line 18
    invoke-virtual {p1}, Le/f/i/i/c;->g()Le/f/i/h/c;

    move-result-object v0

    iput-object v0, p0, Le/f/i/i/b;->q:Le/f/i/h/c;

    .line 19
    invoke-virtual {p1}, Le/f/i/i/c;->j()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Le/f/i/i/b;->r:Ljava/lang/Boolean;

    return-void
.end method

.method private static a(Landroid/net/Uri;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Le/f/c/j/f;->i(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    invoke-static {p0}, Le/f/c/j/f;->g(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/f/c/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/f/c/e/a;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0

    .line 5
    :cond_3
    invoke-static {p0}, Le/f/c/j/f;->f(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x4

    return p0

    .line 6
    :cond_4
    invoke-static {p0}, Le/f/c/j/f;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p0, 0x5

    return p0

    .line 7
    :cond_5
    invoke-static {p0}, Le/f/c/j/f;->h(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p0, 0x6

    return p0

    .line 8
    :cond_6
    invoke-static {p0}, Le/f/c/j/f;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 p0, 0x7

    return p0

    .line 9
    :cond_7
    invoke-static {p0}, Le/f/c/j/f;->j(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x8

    return p0

    :cond_8
    return v0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/common/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/i/b;->j:Lcom/facebook/imagepipeline/common/a;

    return-object v0
.end method

.method public b()Le/f/i/i/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/i/b;->a:Le/f/i/i/b$a;

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/common/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/i/b;->g:Lcom/facebook/imagepipeline/common/b;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/f/i/i/b;->f:Z

    return v0
.end method

.method public e()Le/f/i/i/b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/i/b;->l:Le/f/i/i/b$b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Le/f/i/i/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Le/f/i/i/b;

    .line 3
    iget-object v0, p0, Le/f/i/i/b;->b:Landroid/net/Uri;

    iget-object v2, p1, Le/f/i/i/b;->b:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/f/i/i/b;->a:Le/f/i/i/b$a;

    iget-object v2, p1, Le/f/i/i/b;->a:Le/f/i/i/b$a;

    .line 4
    invoke-static {v0, v2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/f/i/i/b;->d:Ljava/io/File;

    iget-object v2, p1, Le/f/i/i/b;->d:Ljava/io/File;

    .line 5
    invoke-static {v0, v2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/f/i/i/b;->j:Lcom/facebook/imagepipeline/common/a;

    iget-object v2, p1, Le/f/i/i/b;->j:Lcom/facebook/imagepipeline/common/a;

    .line 6
    invoke-static {v0, v2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/f/i/i/b;->g:Lcom/facebook/imagepipeline/common/b;

    iget-object v2, p1, Le/f/i/i/b;->g:Lcom/facebook/imagepipeline/common/b;

    .line 7
    invoke-static {v0, v2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/f/i/i/b;->h:Lcom/facebook/imagepipeline/common/e;

    iget-object v2, p1, Le/f/i/i/b;->h:Lcom/facebook/imagepipeline/common/e;

    .line 8
    invoke-static {v0, v2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/f/i/i/b;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    iget-object v2, p1, Le/f/i/i/b;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 9
    invoke-static {v0, v2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Le/f/i/i/b;->p:Le/f/i/i/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0}, Le/f/i/i/d;->a()Le/f/b/a/d;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 12
    :goto_0
    iget-object p1, p1, Le/f/i/i/b;->p:Le/f/i/i/d;

    if-eqz p1, :cond_3

    .line 13
    invoke-interface {p1}, Le/f/i/i/d;->a()Le/f/b/a/d;

    move-result-object v1

    .line 14
    :cond_3
    invoke-static {v0, v1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public f()Le/f/i/i/d;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/i/b;->p:Le/f/i/i/d;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/i/b;->h:Lcom/facebook/imagepipeline/common/e;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/facebook/imagepipeline/common/e;->b:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x800

    :goto_0
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/i/b;->h:Lcom/facebook/imagepipeline/common/e;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/facebook/imagepipeline/common/e;->a:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x800

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/f/i/i/b;->p:Le/f/i/i/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/f/i/i/d;->a()Le/f/b/a/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    iget-object v3, p0, Le/f/i/i/b;->a:Le/f/i/i/b$a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Le/f/i/i/b;->b:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Le/f/i/i/b;->d:Ljava/io/File;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Le/f/i/i/b;->j:Lcom/facebook/imagepipeline/common/a;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Le/f/i/i/b;->g:Lcom/facebook/imagepipeline/common/b;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Le/f/i/i/b;->h:Lcom/facebook/imagepipeline/common/e;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Le/f/i/i/b;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const/16 v0, 0x8

    iget-object v2, p0, Le/f/i/i/b;->r:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/facebook/common/internal/g;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Lcom/facebook/imagepipeline/common/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/i/b;->k:Lcom/facebook/imagepipeline/common/d;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/f/i/i/b;->e:Z

    return v0
.end method

.method public k()Le/f/i/h/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/i/b;->q:Le/f/i/h/c;

    return-object v0
.end method

.method public l()Lcom/facebook/imagepipeline/common/e;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/i/b;->h:Lcom/facebook/imagepipeline/common/e;

    return-object v0
.end method

.method public m()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/i/b;->r:Ljava/lang/Boolean;

    return-object v0
.end method

.method public n()Lcom/facebook/imagepipeline/common/RotationOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/i/b;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-object v0
.end method

.method public declared-synchronized o()Ljava/io/File;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/f/i/i/b;->d:Ljava/io/File;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Le/f/i/i/b;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Le/f/i/i/b;->d:Ljava/io/File;

    .line 3
    :cond_0
    iget-object v0, p0, Le/f/i/i/b;->d:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/i/b;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Le/f/i/i/b;->c:I

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/f/i/i/b;->m:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/f/i/i/b;->n:Z

    return v0
.end method

.method public t()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/i/b;->o:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-object v1, p0, Le/f/i/i/b;->b:Landroid/net/Uri;

    const-string v2, "uri"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    iget-object v1, p0, Le/f/i/i/b;->a:Le/f/i/i/b$a;

    const-string v2, "cacheChoice"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    iget-object v1, p0, Le/f/i/i/b;->g:Lcom/facebook/imagepipeline/common/b;

    const-string v2, "decodeOptions"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    iget-object v1, p0, Le/f/i/i/b;->p:Le/f/i/i/d;

    const-string v2, "postprocessor"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    iget-object v1, p0, Le/f/i/i/b;->k:Lcom/facebook/imagepipeline/common/d;

    const-string v2, "priority"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    iget-object v1, p0, Le/f/i/i/b;->h:Lcom/facebook/imagepipeline/common/e;

    const-string v2, "resizeOptions"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    iget-object v1, p0, Le/f/i/i/b;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    const-string v2, "rotationOptions"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    iget-object v1, p0, Le/f/i/i/b;->j:Lcom/facebook/imagepipeline/common/a;

    const-string v2, "bytesRange"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    iget-object v1, p0, Le/f/i/i/b;->r:Ljava/lang/Boolean;

    const-string v2, "resizingAllowedOverride"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    .line 11
    invoke-virtual {v0}, Lcom/facebook/common/internal/g$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
