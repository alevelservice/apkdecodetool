.class Lcom/mapbox/mapboxsdk/maps/g;
.super Ljava/lang/Object;
.source "IconManager.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mapbox/mapboxsdk/annotations/d;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/mapbox/mapboxsdk/maps/q;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/g;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/g;->b:Lcom/mapbox/mapboxsdk/maps/q;

    return-void
.end method

.method private b(Lcom/mapbox/mapboxsdk/annotations/d;)V
    .locals 7

    .line 2
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/d;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/g;->b:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/d;->b()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 6
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/d;->c()F

    move-result v5

    .line 7
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/d;->d()[B

    move-result-object v6

    .line 8
    invoke-interface/range {v1 .. v6}, Lcom/mapbox/mapboxsdk/maps/q;->a(Ljava/lang/String;IIF[B)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/g;->d:I

    return v0
.end method

.method a(Lcom/mapbox/mapboxsdk/annotations/d;)I
    .locals 4
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/g;->b:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->f(Ljava/lang/String;)D

    move-result-wide v0

    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/g;->b:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/maps/q;->getPixelRatio()F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method

.method b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/g;->c:I

    return v0
.end method

.method c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/annotations/d;

    .line 2
    invoke-direct {p0, v1}, Lcom/mapbox/mapboxsdk/maps/g;->b(Lcom/mapbox/mapboxsdk/annotations/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method
