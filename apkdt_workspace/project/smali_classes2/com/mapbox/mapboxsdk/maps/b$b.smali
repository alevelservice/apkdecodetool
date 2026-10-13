.class Lcom/mapbox/mapboxsdk/maps/b$b;
.super Ljava/lang/Object;
.source "AnnotationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/maps/w;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:I

.field private c:Landroid/graphics/Bitmap;

.field private d:I

.field private e:I

.field private f:Landroid/graphics/PointF;

.field private g:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private h:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private i:J


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/n;)V
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->g:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->h:Landroid/graphics/RectF;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->i:J

    .line 6
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/n;->l()Lcom/mapbox/mapboxsdk/maps/w;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->a:Lcom/mapbox/mapboxsdk/maps/w;

    .line 7
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42000000    # 32.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->b:I

    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/maps/b$a;Lcom/mapbox/mapboxsdk/annotations/Marker;)V
    .locals 4
    .param p1    # Lcom/mapbox/mapboxsdk/maps/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->a:Lcom/mapbox/mapboxsdk/maps/w;

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/annotations/Marker;->d()Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/w;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->f:Landroid/graphics/PointF;

    .line 4
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/annotations/Marker;->c()Lcom/mapbox/mapboxsdk/annotations/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/annotations/d;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->c:Landroid/graphics/Bitmap;

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->e:I

    .line 6
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->e:I

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->b:I

    if-ge v0, v1, :cond_0

    .line 7
    iput v1, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->e:I

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->d:I

    .line 9
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->d:I

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->b:I

    if-ge v0, v1, :cond_1

    .line 10
    iput v1, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->d:I

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->g:Landroid/graphics/RectF;

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->e:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->f:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->d:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->e:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 13
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->g:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lcom/mapbox/mapboxsdk/maps/b$b;->a(Lcom/mapbox/mapboxsdk/maps/b$a;Lcom/mapbox/mapboxsdk/annotations/Marker;Landroid/graphics/RectF;)V

    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/maps/b$a;Lcom/mapbox/mapboxsdk/annotations/Marker;Landroid/graphics/RectF;)V
    .locals 2
    .param p2    # Lcom/mapbox/mapboxsdk/annotations/Marker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/b$a;->a()F

    move-result v0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/b$a;->b()F

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/b$a;->b(Lcom/mapbox/mapboxsdk/maps/b$a;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 16
    invoke-direct {p0, p3}, Lcom/mapbox/mapboxsdk/maps/b$b;->a(Landroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->h:Landroid/graphics/RectF;

    .line 18
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/annotations/a;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->i:J

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/RectF;)Z
    .locals 2

    .line 19
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float v0, v0, p1

    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->h:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float p1, p1, v1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/mapbox/mapboxsdk/maps/b$a;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/b$a;->a(Lcom/mapbox/mapboxsdk/maps/b$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/annotations/Marker;

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/mapbox/mapboxsdk/maps/b$b;->a(Lcom/mapbox/mapboxsdk/maps/b$a;Lcom/mapbox/mapboxsdk/annotations/Marker;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/mapboxsdk/maps/b$a;)J
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/maps/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/b$b;->b(Lcom/mapbox/mapboxsdk/maps/b$a;)V

    .line 2
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/b$b;->i:J

    return-wide v0
.end method
