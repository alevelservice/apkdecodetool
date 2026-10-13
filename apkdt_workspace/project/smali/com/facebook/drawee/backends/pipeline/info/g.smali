.class public Lcom/facebook/drawee/backends/pipeline/info/g;
.super Ljava/lang/Object;
.source "ImagePerfMonitor.java"


# instance fields
.field private final a:Le/f/f/b/a/d;

.field private final b:Lcom/facebook/common/time/b;

.field private final c:Lcom/facebook/drawee/backends/pipeline/info/h;

.field private d:Lcom/facebook/drawee/backends/pipeline/info/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/drawee/backends/pipeline/info/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/facebook/drawee/backends/pipeline/info/i/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/facebook/drawee/backends/pipeline/info/i/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:Le/f/i/h/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/drawee/backends/pipeline/info/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/facebook/common/time/b;Le/f/f/b/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->b:Lcom/facebook/common/time/b;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->a:Le/f/f/b/a/d;

    .line 4
    new-instance p1, Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-direct {p1}, Lcom/facebook/drawee/backends/pipeline/info/h;-><init>()V

    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->g:Lcom/facebook/drawee/backends/pipeline/info/i/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/i/a;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->b:Lcom/facebook/common/time/b;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-direct {v0, v1, v2, p0}, Lcom/facebook/drawee/backends/pipeline/info/i/a;-><init>(Lcom/facebook/common/time/b;Lcom/facebook/drawee/backends/pipeline/info/h;Lcom/facebook/drawee/backends/pipeline/info/g;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->g:Lcom/facebook/drawee/backends/pipeline/info/i/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->f:Lcom/facebook/drawee/backends/pipeline/info/i/c;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/i/c;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->b:Lcom/facebook/common/time/b;

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/i/c;-><init>(Lcom/facebook/common/time/b;Lcom/facebook/drawee/backends/pipeline/info/h;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->f:Lcom/facebook/drawee/backends/pipeline/info/i/c;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->e:Lcom/facebook/drawee/backends/pipeline/info/b;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/i/b;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-direct {v0, v1, p0}, Lcom/facebook/drawee/backends/pipeline/info/i/b;-><init>(Lcom/facebook/drawee/backends/pipeline/info/h;Lcom/facebook/drawee/backends/pipeline/info/g;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->e:Lcom/facebook/drawee/backends/pipeline/info/b;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->d:Lcom/facebook/drawee/backends/pipeline/info/c;

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/info/c;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->a:Le/f/f/b/a/d;

    .line 9
    invoke-virtual {v1}, Le/f/f/d/a;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->e:Lcom/facebook/drawee/backends/pipeline/info/b;

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/c;-><init>(Ljava/lang/String;Lcom/facebook/drawee/backends/pipeline/info/b;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->d:Lcom/facebook/drawee/backends/pipeline/info/c;

    goto :goto_0

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->a:Le/f/f/b/a/d;

    invoke-virtual {v1}, Le/f/f/d/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/c;->c(Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->h:Le/f/i/h/b;

    if-nez v0, :cond_4

    .line 12
    new-instance v0, Le/f/i/h/b;

    const/4 v1, 0x2

    new-array v1, v1, [Le/f/i/h/c;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->f:Lcom/facebook/drawee/backends/pipeline/info/i/c;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->d:Lcom/facebook/drawee/backends/pipeline/info/c;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Le/f/i/h/b;-><init>([Le/f/i/h/c;)V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->h:Le/f/i/h/b;

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->a:Le/f/f/b/a/d;

    invoke-virtual {v0}, Le/f/f/d/a;->c()Le/f/f/i/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0}, Le/f/f/i/b;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 24
    invoke-interface {v0}, Le/f/f/i/b;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/h;->d(I)V

    .line 26
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/backends/pipeline/info/h;->c(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/drawee/backends/pipeline/info/f;)V
    .locals 1
    .param p1    # Lcom/facebook/drawee/backends/pipeline/info/f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->i:Ljava/util/List;

    if-nez v0, :cond_1

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->i:Ljava/util/List;

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/facebook/drawee/backends/pipeline/info/h;I)V
    .locals 2

    .line 18
    iget-boolean v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/info/h;->c()Lcom/facebook/drawee/backends/pipeline/info/e;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/info/f;

    .line 21
    invoke-interface {v1, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/f;->b(Lcom/facebook/drawee/backends/pipeline/info/e;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->j:Z

    if-eqz p1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/g;->d()V

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->e:Lcom/facebook/drawee/backends/pipeline/info/b;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->a:Le/f/f/b/a/d;

    invoke-virtual {v0, p1}, Le/f/f/b/a/d;->a(Lcom/facebook/drawee/backends/pipeline/info/b;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->g:Lcom/facebook/drawee/backends/pipeline/info/i/a;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->a:Le/f/f/b/a/d;

    invoke-virtual {v0, p1}, Le/f/f/d/a;->a(Le/f/f/d/d;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->h:Le/f/i/h/b;

    if-eqz p1, :cond_5

    .line 8
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->a:Le/f/f/b/a/d;

    invoke-virtual {v0, p1}, Le/f/f/b/a/d;->a(Le/f/i/h/c;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->e:Lcom/facebook/drawee/backends/pipeline/info/b;

    if-eqz p1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->a:Le/f/f/b/a/d;

    invoke-virtual {v0, p1}, Le/f/f/b/a/d;->b(Lcom/facebook/drawee/backends/pipeline/info/b;)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->g:Lcom/facebook/drawee/backends/pipeline/info/i/a;

    if-eqz p1, :cond_4

    .line 12
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->a:Le/f/f/b/a/d;

    invoke-virtual {v0, p1}, Le/f/f/d/a;->b(Le/f/f/d/d;)V

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->h:Le/f/i/h/b;

    if-eqz p1, :cond_5

    .line 14
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->a:Le/f/f/b/a/d;

    invoke-virtual {v0, p1}, Le/f/f/b/a/d;->b(Le/f/i/h/c;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public b(Lcom/facebook/drawee/backends/pipeline/info/h;I)V
    .locals 2

    .line 3
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(I)V

    .line 4
    iget-boolean v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/g;->a()V

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/info/h;->c()Lcom/facebook/drawee/backends/pipeline/info/e;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/info/f;

    .line 8
    invoke-interface {v1, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/f;->a(Lcom/facebook/drawee/backends/pipeline/info/e;I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/g;->b()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/backends/pipeline/info/g;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/g;->c:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/info/h;->b()V

    return-void
.end method
