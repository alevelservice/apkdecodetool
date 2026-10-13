.class public Lcom/mapbox/mapboxsdk/p/c;
.super Ljava/lang/Object;
.source "AttributionMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/p/c$b;,
        Lcom/mapbox/mapboxsdk/p/c$d;,
        Lcom/mapbox/mapboxsdk/p/c$c;,
        Lcom/mapbox/mapboxsdk/p/c$h;,
        Lcom/mapbox/mapboxsdk/p/c$i;,
        Lcom/mapbox/mapboxsdk/p/c$g;,
        Lcom/mapbox/mapboxsdk/p/c$k;,
        Lcom/mapbox/mapboxsdk/p/c$j;,
        Lcom/mapbox/mapboxsdk/p/c$f;,
        Lcom/mapbox/mapboxsdk/p/c$e;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:F

.field private g:Z


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/widget/TextView;Landroid/widget/TextView;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/p/c;->c:Landroid/graphics/Bitmap;

    .line 3
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/p/c;->a:Landroid/graphics/Bitmap;

    .line 4
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/p/c;->b:Landroid/graphics/Bitmap;

    .line 5
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/p/c;->d:Landroid/widget/TextView;

    .line 6
    iput-object p5, p0, Lcom/mapbox/mapboxsdk/p/c;->e:Landroid/widget/TextView;

    .line 7
    iput p6, p0, Lcom/mapbox/mapboxsdk/p/c;->f:F

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/p/c;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/p/c;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic a(Landroid/graphics/Bitmap;Landroid/widget/TextView;F)Landroid/graphics/PointF;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/mapbox/mapboxsdk/p/c;->b(Landroid/graphics/Bitmap;Landroid/widget/TextView;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/graphics/Bitmap;Landroid/widget/TextView;F)Landroid/graphics/PointF;
    .locals 3

    .line 5
    new-instance v0, Landroid/graphics/PointF;

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, p2

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/p/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/p/c;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method private c()F
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/p/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/p/c;->f:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method static synthetic c(Lcom/mapbox/mapboxsdk/p/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/mapbox/mapboxsdk/p/c;->f:F

    return p0
.end method

.method private d()F
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/p/c;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/p/c;->f:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method static synthetic d(Lcom/mapbox/mapboxsdk/p/c;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/p/c;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private e()F
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/p/c;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    return v0
.end method

.method static synthetic e(Lcom/mapbox/mapboxsdk/p/c;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/p/c;->h()F

    move-result p0

    return p0
.end method

.method private f()F
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/p/c;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method static synthetic f(Lcom/mapbox/mapboxsdk/p/c;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/p/c;->f()F

    move-result p0

    return p0
.end method

.method private g()F
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/p/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/p/c;->f:F

    add-float/2addr v0, v1

    return v0
.end method

.method static synthetic g(Lcom/mapbox/mapboxsdk/p/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/p/c;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method private h()F
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/p/c;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/p/c;->f:F

    add-float/2addr v0, v1

    return v0
.end method

.method static synthetic h(Lcom/mapbox/mapboxsdk/p/c;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/p/c;->d()F

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/mapbox/mapboxsdk/p/c;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/p/c;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic j(Lcom/mapbox/mapboxsdk/p/c;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/p/c;->c()F

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/mapbox/mapboxsdk/p/c;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/p/c;->g()F

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/mapbox/mapboxsdk/p/c;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/p/c;->e()F

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Landroid/widget/TextView;
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/p/c;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/p/c;->e:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/p/c;->d:Landroid/widget/TextView;

    :goto_0
    return-object v0
.end method

.method public b()Lcom/mapbox/mapboxsdk/p/b;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/p/c$c;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/p/c$d;

    new-instance v2, Lcom/mapbox/mapboxsdk/p/c$e;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/mapbox/mapboxsdk/p/c$e;-><init>(Lcom/mapbox/mapboxsdk/p/c$a;)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Lcom/mapbox/mapboxsdk/p/c$f;

    invoke-direct {v2, v3}, Lcom/mapbox/mapboxsdk/p/c$f;-><init>(Lcom/mapbox/mapboxsdk/p/c$a;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcom/mapbox/mapboxsdk/p/c$j;

    invoke-direct {v2, v3}, Lcom/mapbox/mapboxsdk/p/c$j;-><init>(Lcom/mapbox/mapboxsdk/p/c$a;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lcom/mapbox/mapboxsdk/p/c$k;

    invoke-direct {v2, v3}, Lcom/mapbox/mapboxsdk/p/c$k;-><init>(Lcom/mapbox/mapboxsdk/p/c$a;)V

    const/4 v4, 0x3

    aput-object v2, v1, v4

    new-instance v2, Lcom/mapbox/mapboxsdk/p/c$g;

    invoke-direct {v2, v3}, Lcom/mapbox/mapboxsdk/p/c$g;-><init>(Lcom/mapbox/mapboxsdk/p/c$a;)V

    const/4 v4, 0x4

    aput-object v2, v1, v4

    new-instance v2, Lcom/mapbox/mapboxsdk/p/c$i;

    invoke-direct {v2, v3}, Lcom/mapbox/mapboxsdk/p/c$i;-><init>(Lcom/mapbox/mapboxsdk/p/c$a;)V

    const/4 v4, 0x5

    aput-object v2, v1, v4

    new-instance v2, Lcom/mapbox/mapboxsdk/p/c$h;

    invoke-direct {v2, v3}, Lcom/mapbox/mapboxsdk/p/c$h;-><init>(Lcom/mapbox/mapboxsdk/p/c$a;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1}, Lcom/mapbox/mapboxsdk/p/c$c;-><init>(Lcom/mapbox/mapboxsdk/p/c;[Lcom/mapbox/mapboxsdk/p/c$d;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/p/c$c;->a(Lcom/mapbox/mapboxsdk/p/c;)Lcom/mapbox/mapboxsdk/p/b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/p/b;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/p/c;->g:Z

    return-object v0
.end method
