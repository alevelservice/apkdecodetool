.class public Le/f/f/g/a;
.super Ljava/lang/Object;
.source "GenericDraweeHierarchy.java"

# interfaces
.implements Le/f/f/i/c;


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:Landroid/content/res/Resources;

.field private c:Le/f/f/g/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Le/f/f/g/d;

.field private final e:Le/f/f/f/g;

.field private final f:Le/f/f/f/h;


# direct methods
.method constructor <init>(Le/f/f/g/b;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Le/f/f/g/a;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GenericDraweeHierarchy()"

    .line 4
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Le/f/f/g/b;->p()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Le/f/f/g/a;->b:Landroid/content/res/Resources;

    .line 6
    invoke-virtual {p1}, Le/f/f/g/b;->s()Le/f/f/g/e;

    move-result-object v0

    iput-object v0, p0, Le/f/f/g/a;->c:Le/f/f/g/e;

    .line 7
    new-instance v0, Le/f/f/f/h;

    iget-object v2, p0, Le/f/f/g/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v2}, Le/f/f/f/h;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Le/f/f/g/a;->f:Le/f/f/f/h;

    .line 8
    invoke-virtual {p1}, Le/f/f/g/b;->j()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Le/f/f/g/b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 9
    :goto_0
    invoke-virtual {p1}, Le/f/f/g/b;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x6

    .line 10
    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p1}, Le/f/f/g/b;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Le/f/f/g/a;->a(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v1

    .line 12
    invoke-virtual {p1}, Le/f/f/g/b;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1}, Le/f/f/g/b;->l()Le/f/f/f/q$b;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Le/f/f/g/a;->a(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x2

    .line 13
    iget-object v6, p0, Le/f/f/g/a;->f:Le/f/f/f/h;

    .line 14
    invoke-virtual {p1}, Le/f/f/g/b;->d()Le/f/f/f/q$b;

    move-result-object v7

    .line 15
    invoke-virtual {p1}, Le/f/f/g/b;->c()Landroid/graphics/PointF;

    move-result-object v8

    .line 16
    invoke-virtual {p1}, Le/f/f/g/b;->b()Landroid/graphics/ColorFilter;

    move-result-object v9

    .line 17
    invoke-direct {p0, v6, v7, v8, v9}, Le/f/f/g/a;->a(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;Landroid/graphics/PointF;Landroid/graphics/ColorFilter;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    .line 18
    invoke-virtual {p1}, Le/f/f/g/b;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1}, Le/f/f/g/b;->o()Le/f/f/f/q$b;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Le/f/f/g/a;->a(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    .line 19
    invoke-virtual {p1}, Le/f/f/g/b;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1}, Le/f/f/g/b;->r()Le/f/f/f/q$b;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Le/f/f/g/a;->a(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x5

    .line 20
    invoke-virtual {p1}, Le/f/f/g/b;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1}, Le/f/f/g/b;->i()Le/f/f/f/q$b;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Le/f/f/g/a;->a(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v4

    if-lez v0, :cond_4

    .line 21
    invoke-virtual {p1}, Le/f/f/g/b;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {p1}, Le/f/f/g/b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v2, v2, 0x6

    .line 23
    invoke-direct {p0, v1, v5}, Le/f/f/g/a;->a(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v3, v2

    move v2, v4

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {p1}, Le/f/f/g/b;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    add-int/lit8 v2, v2, 0x6

    .line 25
    invoke-virtual {p1}, Le/f/f/g/b;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Le/f/f/g/a;->a(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v3, v2

    .line 26
    :cond_4
    new-instance v0, Le/f/f/f/g;

    invoke-direct {v0, v3}, Le/f/f/f/g;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    .line 27
    iget-object v0, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {p1}, Le/f/f/g/b;->g()I

    move-result p1

    invoke-virtual {v0, p1}, Le/f/f/f/g;->d(I)V

    .line 28
    iget-object p1, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    iget-object v0, p0, Le/f/f/g/a;->c:Le/f/f/g/e;

    .line 29
    invoke-static {p1, v0}, Le/f/f/g/f;->a(Landroid/graphics/drawable/Drawable;Le/f/f/g/e;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 30
    new-instance v0, Le/f/f/g/d;

    invoke-direct {v0, p1}, Le/f/f/g/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Le/f/f/g/a;->d:Le/f/f/g/d;

    .line 31
    iget-object p1, p0, Le/f/f/g/a;->d:Le/f/f/g/d;

    invoke-virtual {p1}, Le/f/f/f/h;->mutate()Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-direct {p0}, Le/f/f/g/a;->e()V

    .line 33
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 34
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_5
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Le/f/f/f/q$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Le/f/f/g/a;->c:Le/f/f/g/e;

    iget-object v1, p0, Le/f/f/g/a;->b:Landroid/content/res/Resources;

    invoke-static {p1, v0, v1}, Le/f/f/g/f;->b(Landroid/graphics/drawable/Drawable;Le/f/f/g/e;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    invoke-static {p1, p2}, Le/f/f/g/f;->a(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;Landroid/graphics/PointF;Landroid/graphics/ColorFilter;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p2    # Le/f/f/f/q$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/ColorFilter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2
    invoke-static {p1, p2, p3}, Le/f/f/g/f;->a(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private a(F)V
    .locals 3

    .line 6
    iget-object v0, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Le/f/f/f/a;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v2, 0x3f7fbe77    # 0.999f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    .line 7
    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    .line 8
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 9
    :cond_1
    invoke-direct {p0, v1}, Le/f/f/g/a;->b(I)V

    goto :goto_0

    .line 10
    :cond_2
    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_3

    .line 11
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    .line 12
    :cond_3
    invoke-direct {p0, v1}, Le/f/f/g/a;->a(I)V

    :goto_0
    const v1, 0x461c4000    # 10000.0f

    mul-float p1, p1, v1

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method

.method private a(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 5
    iget-object v0, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {v0, p1}, Le/f/f/f/g;->b(I)V

    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {v0, p1}, Le/f/f/f/g;->c(I)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Le/f/f/g/a;->b(I)V

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Le/f/f/g/a;->b(I)V

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, v0}, Le/f/f/g/a;->b(I)V

    const/4 v0, 0x4

    .line 4
    invoke-direct {p0, v0}, Le/f/f/g/a;->b(I)V

    const/4 v0, 0x5

    .line 5
    invoke-direct {p0, v0}, Le/f/f/g/a;->b(I)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/f/g/a;->f:Le/f/f/f/h;

    iget-object v1, p0, Le/f/f/g/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Le/f/f/f/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Le/f/f/f/g;->b()V

    .line 3
    iget-object v0, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {v0}, Le/f/f/f/g;->d()V

    .line 4
    invoke-direct {p0}, Le/f/f/g/a;->c()V

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Le/f/f/g/a;->a(I)V

    .line 6
    iget-object v0, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {v0}, Le/f/f/f/g;->e()V

    .line 7
    iget-object v0, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {v0}, Le/f/f/f/g;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 14
    invoke-direct {p0}, Le/f/f/g/a;->d()V

    .line 15
    invoke-direct {p0}, Le/f/f/g/a;->e()V

    return-void
.end method

.method public a(FZ)V
    .locals 2

    .line 25
    iget-object v0, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Le/f/f/f/a;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {v0}, Le/f/f/f/g;->b()V

    .line 27
    invoke-direct {p0, p1}, Le/f/f/g/a;->a(F)V

    if-eqz p2, :cond_1

    .line 28
    iget-object p1, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {p1}, Le/f/f/f/g;->e()V

    .line 29
    :cond_1
    iget-object p1, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {p1}, Le/f/f/f/g;->c()V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    iget-object v0, p0, Le/f/f/g/a;->d:Le/f/f/g/d;

    invoke-virtual {v0, p1}, Le/f/f/g/d;->d(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;FZ)V
    .locals 2

    .line 16
    iget-object v0, p0, Le/f/f/g/a;->c:Le/f/f/g/e;

    iget-object v1, p0, Le/f/f/g/a;->b:Landroid/content/res/Resources;

    invoke-static {p1, v0, v1}, Le/f/f/g/f;->b(Landroid/graphics/drawable/Drawable;Le/f/f/g/e;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 18
    iget-object v0, p0, Le/f/f/g/a;->f:Le/f/f/f/h;

    invoke-virtual {v0, p1}, Le/f/f/f/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 19
    iget-object p1, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {p1}, Le/f/f/f/g;->b()V

    .line 20
    invoke-direct {p0}, Le/f/f/g/a;->c()V

    const/4 p1, 0x2

    .line 21
    invoke-direct {p0, p1}, Le/f/f/g/a;->a(I)V

    .line 22
    invoke-direct {p0, p2}, Le/f/f/g/a;->a(F)V

    if-eqz p3, :cond_0

    .line 23
    iget-object p1, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {p1}, Le/f/f/f/g;->e()V

    .line 24
    :cond_0
    iget-object p1, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {p1}, Le/f/f/f/g;->c()V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 30
    iget-object p1, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {p1}, Le/f/f/f/g;->b()V

    .line 31
    invoke-direct {p0}, Le/f/f/g/a;->c()V

    .line 32
    iget-object p1, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Le/f/f/f/a;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    invoke-direct {p0, v0}, Le/f/f/g/a;->a(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 34
    invoke-direct {p0, p1}, Le/f/f/g/a;->a(I)V

    .line 35
    :goto_0
    iget-object p1, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {p1}, Le/f/f/f/g;->c()V

    return-void
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    iget-object v0, p0, Le/f/f/g/a;->d:Le/f/f/g/d;

    return-object v0
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    iget-object p1, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {p1}, Le/f/f/f/g;->b()V

    .line 4
    invoke-direct {p0}, Le/f/f/g/a;->c()V

    .line 5
    iget-object p1, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Le/f/f/f/a;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0, v0}, Le/f/f/g/a;->a(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 7
    invoke-direct {p0, p1}, Le/f/f/g/a;->a(I)V

    .line 8
    :goto_0
    iget-object p1, p0, Le/f/f/g/a;->e:Le/f/f/f/g;

    invoke-virtual {p1}, Le/f/f/f/g;->c()V

    return-void
.end method
