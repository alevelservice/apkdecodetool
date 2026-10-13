.class public Le/f/f/g/f;
.super Ljava/lang/Object;
.source "WrappingUtils.java"


# static fields
.field private static final a:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Le/f/f/g/f;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static a(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Le/f/f/f/q$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Le/f/f/g/f;->a(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Le/f/f/f/q$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WrappingUtils#maybeWrapWithScaleType"

    .line 3
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Le/f/f/f/p;

    invoke-direct {v0, p0, p1}, Le/f/f/f/p;-><init>(Landroid/graphics/drawable/Drawable;Le/f/f/f/q$b;)V

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {v0, p2}, Le/f/f/f/p;->a(Landroid/graphics/PointF;)V

    .line 6
    :cond_2
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 7
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_3
    return-object v0

    .line 8
    :cond_4
    :goto_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_5
    return-object p0
.end method

.method static a(Landroid/graphics/drawable/Drawable;Le/f/f/g/e;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Le/f/f/g/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    :try_start_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WrappingUtils#maybeWrapWithRoundedOverlayColor"

    .line 11
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1}, Le/f/f/g/e;->g()Le/f/f/g/e$a;

    move-result-object v0

    sget-object v1, Le/f/f/g/e$a;->OVERLAY_COLOR:Le/f/f/g/e$a;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Le/f/f/f/m;

    invoke-direct {v0, p0}, Le/f/f/f/m;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 14
    invoke-static {v0, p1}, Le/f/f/g/f;->a(Le/f/f/f/j;Le/f/f/g/e;)V

    .line 15
    invoke-virtual {p1}, Le/f/f/g/e;->d()I

    move-result p0

    invoke-virtual {v0, p0}, Le/f/f/f/m;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 17
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_2
    return-object v0

    .line 18
    :cond_3
    :goto_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_4
    return-object p0

    :catchall_0
    move-exception p0

    .line 20
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 22
    :cond_5
    throw p0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Le/f/f/g/e;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 23
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 24
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 25
    new-instance v0, Le/f/f/f/k;

    .line 26
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-direct {v0, p2, v1, p0}, Le/f/f/f/k;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 28
    invoke-static {v0, p1}, Le/f/f/g/f;->a(Le/f/f/f/j;Le/f/f/g/e;)V

    return-object v0

    .line 29
    :cond_0
    instance-of p2, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz p2, :cond_1

    .line 30
    check-cast p0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 31
    new-instance p2, Le/f/f/f/o;

    invoke-direct {p2, p0}, Le/f/f/f/o;-><init>(Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 32
    invoke-static {p2, p1}, Le/f/f/g/f;->a(Le/f/f/f/j;Le/f/f/g/e;)V

    return-object p2

    .line 33
    :cond_1
    instance-of p2, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p2, :cond_2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p2, v0, :cond_2

    .line 34
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 35
    invoke-static {p0}, Le/f/f/f/l;->a(Landroid/graphics/drawable/ColorDrawable;)Le/f/f/f/l;

    move-result-object p0

    .line 36
    invoke-static {p0, p1}, Le/f/f/g/f;->a(Le/f/f/f/j;Le/f/f/g/e;)V

    return-object p0

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const-string p2, "WrappingUtils"

    const-string v0, "Don\'t know how to round that drawable: %s"

    .line 37
    invoke-static {p2, v0, p1}, Le/f/c/d/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method static a(Le/f/f/f/d;)Le/f/f/f/d;
    .locals 2

    .line 43
    :goto_0
    invoke-interface {p0}, Le/f/f/f/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 44
    instance-of v1, v0, Le/f/f/f/d;

    if-nez v1, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    move-object p0, v0

    check-cast p0, Le/f/f/f/d;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method static a(Le/f/f/f/j;Le/f/f/g/e;)V
    .locals 2

    .line 38
    invoke-virtual {p1}, Le/f/f/g/e;->f()Z

    move-result v0

    invoke-interface {p0, v0}, Le/f/f/f/j;->a(Z)V

    .line 39
    invoke-virtual {p1}, Le/f/f/g/e;->c()[F

    move-result-object v0

    invoke-interface {p0, v0}, Le/f/f/f/j;->a([F)V

    .line 40
    invoke-virtual {p1}, Le/f/f/g/e;->a()I

    move-result v0

    invoke-virtual {p1}, Le/f/f/g/e;->b()F

    move-result v1

    invoke-interface {p0, v0, v1}, Le/f/f/f/j;->a(IF)V

    .line 41
    invoke-virtual {p1}, Le/f/f/g/e;->e()F

    move-result v0

    invoke-interface {p0, v0}, Le/f/f/f/j;->a(F)V

    .line 42
    invoke-virtual {p1}, Le/f/f/g/e;->h()Z

    move-result p1

    invoke-interface {p0, p1}, Le/f/f/f/j;->b(Z)V

    return-void
.end method

.method static b(Landroid/graphics/drawable/Drawable;Le/f/f/g/e;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Le/f/f/g/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WrappingUtils#maybeApplyLeafRounding"

    .line 2
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p1}, Le/f/f/g/e;->g()Le/f/f/g/e$a;

    move-result-object v0

    sget-object v1, Le/f/f/g/e$a;->BITMAP_ONLY:Le/f/f/g/e$a;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p0, Le/f/f/f/h;

    if-eqz v0, :cond_3

    .line 5
    move-object v0, p0

    check-cast v0, Le/f/f/f/h;

    invoke-static {v0}, Le/f/f/g/f;->a(Le/f/f/f/d;)Le/f/f/f/d;

    move-result-object v0

    .line 6
    sget-object v1, Le/f/f/g/f;->a:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Le/f/f/f/d;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7
    invoke-static {v1, p1, p2}, Le/f/f/g/f;->a(Landroid/graphics/drawable/Drawable;Le/f/f/g/e;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 8
    invoke-interface {v0, p1}, Le/f/f/f/d;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_2
    return-object p0

    .line 11
    :cond_3
    :try_start_1
    invoke-static {p0, p1, p2}, Le/f/f/g/f;->a(Landroid/graphics/drawable/Drawable;Le/f/f/g/e;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_4
    return-object p0

    .line 14
    :cond_5
    :goto_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_6
    return-object p0

    :catchall_0
    move-exception p0

    .line 16
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 18
    :cond_7
    throw p0
.end method
