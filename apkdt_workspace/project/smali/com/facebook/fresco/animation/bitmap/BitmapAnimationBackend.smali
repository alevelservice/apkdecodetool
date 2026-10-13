.class public Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;
.super Ljava/lang/Object;
.source "BitmapAnimationBackend.java"

# interfaces
.implements Le/f/g/a/a/a;
.implements Le/f/g/a/a/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameType;,
        Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Le/f/i/b/f;

.field private final b:Lcom/facebook/fresco/animation/bitmap/a;

.field private final c:Le/f/g/a/a/d;

.field private final d:Lcom/facebook/fresco/animation/bitmap/b;

.field private final e:Lcom/facebook/fresco/animation/bitmap/d/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lcom/facebook/fresco/animation/bitmap/d/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Bitmap$Config;

.field private l:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->m:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Le/f/i/b/f;Lcom/facebook/fresco/animation/bitmap/a;Le/f/g/a/a/d;Lcom/facebook/fresco/animation/bitmap/b;Lcom/facebook/fresco/animation/bitmap/d/a;Lcom/facebook/fresco/animation/bitmap/d/b;)V
    .locals 1
    .param p5    # Lcom/facebook/fresco/animation/bitmap/d/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/fresco/animation/bitmap/d/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->k:Landroid/graphics/Bitmap$Config;

    .line 3
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->a:Le/f/i/b/f;

    .line 4
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->b:Lcom/facebook/fresco/animation/bitmap/a;

    .line 5
    iput-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->c:Le/f/g/a/a/d;

    .line 6
    iput-object p4, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->d:Lcom/facebook/fresco/animation/bitmap/b;

    .line 7
    iput-object p5, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->e:Lcom/facebook/fresco/animation/bitmap/d/a;

    .line 8
    iput-object p6, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->f:Lcom/facebook/fresco/animation/bitmap/d/b;

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->g:Landroid/graphics/Paint;

    .line 10
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->f()V

    return-void
.end method

.method private a(ILe/f/c/g/a;)Z
    .locals 2
    .param p2    # Le/f/c/g/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .line 33
    invoke-static {p2}, Le/f/c/g/a;->c(Le/f/c/g/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->d:Lcom/facebook/fresco/animation/bitmap/b;

    .line 35
    invoke-virtual {p2}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v1}, Lcom/facebook/fresco/animation/bitmap/b;->a(ILandroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 36
    invoke-static {p2}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    :cond_1
    return p1
.end method

.method private a(ILe/f/c/g/a;Landroid/graphics/Canvas;I)Z
    .locals 4
    .param p2    # Le/f/c/g/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Canvas;",
            "I)Z"
        }
    .end annotation

    .line 37
    invoke-static {p2}, Le/f/c/g/a;->c(Le/f/c/g/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->h:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 39
    invoke-virtual {p2}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->g:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p2}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->h:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->g:Landroid/graphics/Paint;

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    const/4 p3, 0x3

    if-eq p4, p3, :cond_2

    .line 41
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->b:Lcom/facebook/fresco/animation/bitmap/a;

    invoke-interface {p3, p1, p2, p4}, Lcom/facebook/fresco/animation/bitmap/a;->b(ILe/f/c/g/a;I)V

    .line 42
    :cond_2
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->l:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;

    if-eqz p2, :cond_3

    .line 43
    invoke-interface {p2, p0, p1, p4}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;->a(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;II)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private a(Landroid/graphics/Canvas;II)Z
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_5

    if-eq p3, v4, :cond_3

    if-eq p3, v2, :cond_1

    if-eq p3, v1, :cond_0

    .line 10
    invoke-static {v5}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return v3

    .line 11
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->b:Lcom/facebook/fresco/animation/bitmap/a;

    invoke-interface {p3, p2}, Lcom/facebook/fresco/animation/bitmap/a;->c(I)Le/f/c/g/a;

    move-result-object v5

    .line 12
    invoke-direct {p0, p2, v5, p1, v1}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->a(ILe/f/c/g/a;Landroid/graphics/Canvas;I)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    goto :goto_1

    .line 13
    :cond_1
    :try_start_1
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->a:Le/f/i/b/f;

    iget v6, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->i:I

    iget v7, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->j:I

    iget-object v8, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->k:Landroid/graphics/Bitmap$Config;

    .line 14
    invoke-virtual {p3, v6, v7, v8}, Le/f/i/b/f;->a(IILandroid/graphics/Bitmap$Config;)Le/f/c/g/a;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-direct {p0, p2, v5}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->a(ILe/f/c/g/a;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 16
    invoke-direct {p0, p2, v5, p1, v2}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->a(ILe/f/c/g/a;Landroid/graphics/Canvas;I)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    sget-object p2, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->m:Ljava/lang/Class;

    const-string p3, "Failed to create frame bitmap"

    invoke-static {p2, p3, p1}, Le/f/c/d/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    invoke-static {v5}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    return v3

    .line 19
    :cond_3
    :try_start_3
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->b:Lcom/facebook/fresco/animation/bitmap/a;

    iget v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->i:I

    iget v6, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->j:I

    .line 20
    invoke-interface {p3, p2, v1, v6}, Lcom/facebook/fresco/animation/bitmap/a;->a(III)Le/f/c/g/a;

    move-result-object v5

    .line 21
    invoke-direct {p0, p2, v5}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->a(ILe/f/c/g/a;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 22
    invoke-direct {p0, p2, v5, p1, v4}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->a(ILe/f/c/g/a;Landroid/graphics/Canvas;I)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    :goto_0
    const/4 v1, 0x2

    goto :goto_1

    .line 23
    :cond_5
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->b:Lcom/facebook/fresco/animation/bitmap/a;

    invoke-interface {p3, p2}, Lcom/facebook/fresco/animation/bitmap/a;->b(I)Le/f/c/g/a;

    move-result-object v5

    .line 24
    invoke-direct {p0, p2, v5, p1, v3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->a(ILe/f/c/g/a;Landroid/graphics/Canvas;I)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x1

    .line 25
    :goto_1
    invoke-static {v5}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    if-nez p3, :cond_7

    if-ne v1, v0, :cond_6

    goto :goto_2

    .line 26
    :cond_6
    invoke-direct {p0, p1, p2, v1}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->a(Landroid/graphics/Canvas;II)Z

    move-result p1

    return p1

    :cond_7
    :goto_2
    return p3

    :catchall_0
    move-exception p1

    .line 27
    invoke-static {v5}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 28
    throw p1
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->d:Lcom/facebook/fresco/animation/bitmap/b;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/b;->d()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->i:I

    .line 2
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->h:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->i:I

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->d:Lcom/facebook/fresco/animation/bitmap/b;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/b;->c()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->j:I

    .line 5
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->j:I

    if-ne v0, v1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->h:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->j:I

    :cond_3
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->c:Le/f/g/a/a/d;

    invoke-interface {v0}, Le/f/g/a/a/d;->a()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->c:Le/f/g/a/a/d;

    invoke-interface {v0, p1}, Le/f/g/a/a/d;->a(I)I

    move-result p1

    return p1
.end method

.method public a(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->h:Landroid/graphics/Rect;

    .line 31
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->d:Lcom/facebook/fresco/animation/bitmap/b;

    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/bitmap/b;->a(Landroid/graphics/Rect;)V

    .line 32
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->f()V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->l:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p0, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;->b(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;I)V

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p2, p3, p1}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->a(Landroid/graphics/Canvas;II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->l:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;

    if-eqz p2, :cond_1

    .line 7
    invoke-interface {p2, p0, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$a;->a(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;I)V

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->e:Lcom/facebook/fresco/animation/bitmap/d/a;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->f:Lcom/facebook/fresco/animation/bitmap/d/b;

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->b:Lcom/facebook/fresco/animation/bitmap/a;

    invoke-interface {p2, v0, v1, p0, p3}, Lcom/facebook/fresco/animation/bitmap/d/a;->a(Lcom/facebook/fresco/animation/bitmap/d/b;Lcom/facebook/fresco/animation/bitmap/a;Le/f/g/a/a/a;I)V

    :cond_2
    return p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->c:Le/f/g/a/a/d;

    invoke-interface {v0}, Le/f/g/a/a/d;->b()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->j:I

    return v0
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->b:Lcom/facebook/fresco/animation/bitmap/a;

    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/a;->clear()V

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->i:I

    return v0
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->clear()V

    return-void
.end method
