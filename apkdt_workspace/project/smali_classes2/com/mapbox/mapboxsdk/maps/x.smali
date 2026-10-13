.class Lcom/mapbox/mapboxsdk/maps/x;
.super Ljava/lang/Object;
.source "ShapeAnnotationContainer.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/y;


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/maps/q;

.field private final b:La/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/d<",
            "Lcom/mapbox/mapboxsdk/annotations/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/q;La/e/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/maps/q;",
            "La/e/d<",
            "Lcom/mapbox/mapboxsdk/annotations/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/x;->a:Lcom/mapbox/mapboxsdk/maps/q;

    .line 3
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/x;->b:La/e/d;

    return-void
.end method

.method private a([J)Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/a;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, p1, v2

    .line 6
    iget-object v5, p0, Lcom/mapbox/mapboxsdk/maps/x;->b:La/e/d;

    invoke-virtual {v5, v3, v4}, La/e/d;->a(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mapbox/mapboxsdk/annotations/a;

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;)Ljava/util/List;
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/x;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->b(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/x;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->a(Landroid/graphics/RectF;)[J

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/x;->a([J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
