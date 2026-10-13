.class public Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;
.super Ljava/lang/Object;
.source "MapSnapshotter.java"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;,
        Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$f;,
        Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$e;,
        Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$c;,
        Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$g;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private c:Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$f;

.field private d:Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private nativePtr:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)F
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 61
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    .line 62
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/2addr v0, p1

    int-to-float p1, v0

    .line 63
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 64
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    .line 65
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    const p2, 0x3f19999a    # 0.6f

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    const p1, 0x3f19999a    # 0.6f

    :cond_1
    :goto_0
    return p1
.end method

.method private a(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;ZF)Landroid/widget/TextView;
    .locals 7
    .param p1    # Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/h;->mapbox_gray_dark:I

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/e;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const/4 v1, 0x0

    .line 35
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 36
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 37
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    .line 39
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v5, 0x41200000    # 10.0f

    mul-float p3, p3, v5

    .line 40
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 41
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    sget p3, Lcom/mapbox/mapboxsdk/j;->mapbox_rounded_corner:I

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v4, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 45
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {v4, v1, v1, p1, p2}, Landroid/widget/TextView;->layout(IIII)V

    return-object v4
.end method

.method private a(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;Landroid/graphics/Bitmap;I)Lcom/mapbox/mapboxsdk/p/c;
    .locals 4
    .param p1    # Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 10
    invoke-direct {p0, p2}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a(Landroid/graphics/Bitmap;)Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;->b()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;ZF)Landroid/widget/TextView;

    move-result-object v1

    .line 12
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;->b()F

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3, v2}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;ZF)Landroid/widget/TextView;

    move-result-object p1

    .line 13
    new-instance v2, Lcom/mapbox/mapboxsdk/p/c$b;

    invoke-direct {v2}, Lcom/mapbox/mapboxsdk/p/c$b;-><init>()V

    .line 14
    invoke-virtual {v2, p2}, Lcom/mapbox/mapboxsdk/p/c$b;->c(Landroid/graphics/Bitmap;)Lcom/mapbox/mapboxsdk/p/c$b;

    .line 15
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;->a()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/mapbox/mapboxsdk/p/c$b;->a(Landroid/graphics/Bitmap;)Lcom/mapbox/mapboxsdk/p/c$b;

    .line 16
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;->c()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/mapbox/mapboxsdk/p/c$b;->b(Landroid/graphics/Bitmap;)Lcom/mapbox/mapboxsdk/p/c$b;

    .line 17
    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/p/c$b;->a(Landroid/widget/TextView;)Lcom/mapbox/mapboxsdk/p/c$b;

    .line 18
    invoke-virtual {v2, p1}, Lcom/mapbox/mapboxsdk/p/c$b;->b(Landroid/widget/TextView;)Lcom/mapbox/mapboxsdk/p/c$b;

    int-to-float p1, p3

    .line 19
    invoke-virtual {v2, p1}, Lcom/mapbox/mapboxsdk/p/c$b;->a(F)Lcom/mapbox/mapboxsdk/p/c$b;

    .line 20
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/p/c$b;->a()Lcom/mapbox/mapboxsdk/p/c;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;)Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;
    .locals 11
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/j;->mapbox_logo_icon:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 53
    invoke-direct {p0, p1, v3}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)F

    move-result p1

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 55
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 56
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/mapbox/mapboxsdk/j;->mapbox_logo_helmet:I

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 57
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v8, v0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 58
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object v4, v1

    move-object v9, v0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$d;-><init>(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    return-object v1
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;)Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->d:Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$g;

    return-object p0
.end method

.method private a(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;Z)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 46
    new-instance v0, Lcom/mapbox/mapboxsdk/p/d$a;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mapbox/mapboxsdk/p/d$a;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->a()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/p/d$a;->a([Ljava/lang/String;)Lcom/mapbox/mapboxsdk/p/d$a;

    const/4 p1, 0x0

    .line 48
    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/p/d$a;->a(Z)Lcom/mapbox/mapboxsdk/p/d$a;

    .line 49
    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/p/d$a;->b(Z)Lcom/mapbox/mapboxsdk/p/d$a;

    .line 50
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/p/d$a;->a()Lcom/mapbox/mapboxsdk/p/d;

    move-result-object p1

    .line 51
    invoke-virtual {p1, p2}, Lcom/mapbox/mapboxsdk/p/d;->a(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;ILcom/mapbox/mapboxsdk/p/b;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-virtual {p4}, Lcom/mapbox/mapboxsdk/p/b;->b()Landroid/graphics/Bitmap;

    move-result-object p4

    if-eqz p4, :cond_0

    int-to-float v0, p3

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p1, p3

    int-to-float p1, p1

    const/4 p3, 0x0

    invoke-virtual {p2, p4, v0, p1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Lcom/mapbox/mapboxsdk/p/c;Landroid/graphics/PointF;)V
    .locals 1

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/p/c;->a()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2, p4}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;Landroid/graphics/Bitmap;I)Lcom/mapbox/mapboxsdk/p/c;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/p/c;->b()Lcom/mapbox/mapboxsdk/p/b;

    move-result-object v0

    .line 8
    invoke-direct {p0, p1, p3, p4, v0}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;Landroid/graphics/Canvas;ILcom/mapbox/mapboxsdk/p/b;)V

    .line 9
    invoke-direct {p0, p1, p3, p2, v0}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;Landroid/graphics/Canvas;Lcom/mapbox/mapboxsdk/p/c;Lcom/mapbox/mapboxsdk/p/b;)V

    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;Landroid/graphics/Canvas;ILcom/mapbox/mapboxsdk/p/b;)V
    .locals 1
    .param p2    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mapbox/mapboxsdk/p/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;ILcom/mapbox/mapboxsdk/p/b;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;Landroid/graphics/Canvas;Lcom/mapbox/mapboxsdk/p/c;Lcom/mapbox/mapboxsdk/p/b;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mapbox/mapboxsdk/p/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-virtual {p4}, Lcom/mapbox/mapboxsdk/p/b;->a()Landroid/graphics/PointF;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 26
    invoke-direct {p0, p2, p3, p4}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a(Landroid/graphics/Canvas;Lcom/mapbox/mapboxsdk/p/c;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->b()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    .line 28
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p4

    const/4 p2, 0x2

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->a()[Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p2

    const-string p1, "Could not generate attribution for snapshot size: %s x %s. You are required to provide your own attribution for the used sources: %s"

    .line 29
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mbgl-MapSnapshotter"

    invoke-static {p2, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;)Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->e:Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$c;

    return-object p0
.end method

.method private native nativeAddImages([Lcom/mapbox/mapboxsdk/maps/Image;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeAddLayerAbove(JLjava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeAddLayerAt(JI)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeAddLayerBelow(JLjava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeAddSource(Lcom/mapbox/mapboxsdk/style/sources/Source;J)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLayer(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/layers/Layer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method private native nativeGetSource(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/style/sources/Source;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->d:Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$g;

    .line 67
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->e:Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$c;

    return-void
.end method

.method protected a(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;)V
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x4

    .line 5
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->a(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    return-void
.end method

.method protected native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native nativeCancel()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native nativeInitialize(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;Lcom/mapbox/mapboxsdk/storage/FileSource;FIILjava/lang/String;Ljava/lang/String;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;Lcom/mapbox/mapboxsdk/camera/CameraPosition;ZLjava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native nativeStart()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected onDidFailLoadingStyle(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->onSnapshotFailed(Ljava/lang/String;)V

    return-void
.end method

.method protected onDidFinishLoadingStyle()V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->b:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->f:Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$e;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$e;->a()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->b:Z

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->c:Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$f;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$f;->a()Lcom/mapbox/mapboxsdk/maps/Style$b;

    const/4 v0, 0x0

    throw v0
.end method

.method protected onSnapshotFailed(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$b;

    invoke-direct {v1, p0, p1}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$b;-><init>(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSnapshotReady(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;)V
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$a;

    invoke-direct {v1, p0, p1}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$a;-><init>(Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onStyleImageMissing(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter;->f:Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/snapshotter/MapSnapshotter$e;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public native setCameraPosition(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native setRegion(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native setSize(II)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native setStyleJson(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native setStyleUrl(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method
