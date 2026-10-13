.class Lcom/mapbox/mapboxsdk/maps/o;
.super Ljava/lang/Object;
.source "MarkerContainer.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/p;


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

.field private final c:Lcom/mapbox/mapboxsdk/maps/g;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/q;La/e/d;Lcom/mapbox/mapboxsdk/maps/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/maps/q;",
            "La/e/d<",
            "Lcom/mapbox/mapboxsdk/annotations/a;",
            ">;",
            "Lcom/mapbox/mapboxsdk/maps/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/o;->a:Lcom/mapbox/mapboxsdk/maps/q;

    .line 3
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/o;->b:La/e/d;

    .line 4
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/o;->c:Lcom/mapbox/mapboxsdk/maps/g;

    return-void
.end method

.method private b()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/o;->b:La/e/d;

    invoke-virtual {v2}, La/e/d;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/o;->b:La/e/d;

    invoke-virtual {v2, v1}, La/e/d;->a(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, La/e/d;->a(J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;)Ljava/util/List;
    .locals 7
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
            "Lcom/mapbox/mapboxsdk/annotations/Marker;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/o;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->b(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/o;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->c(Landroid/graphics/RectF;)[J

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-wide v4, p1, v3

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length p1, p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/o;->b()Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    .line 9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mapbox/mapboxsdk/annotations/a;

    .line 10
    instance-of v5, v4, Lcom/mapbox/mapboxsdk/annotations/Marker;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/annotations/a;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 11
    check-cast v4, Lcom/mapbox/mapboxsdk/annotations/Marker;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public a()V
    .locals 7

    .line 13
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/o;->c:Lcom/mapbox/mapboxsdk/maps/g;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/g;->c()V

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/o;->b:La/e/d;

    invoke-virtual {v0}, La/e/d;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/o;->b:La/e/d;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, La/e/d;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/annotations/a;

    .line 16
    instance-of v3, v2, Lcom/mapbox/mapboxsdk/annotations/Marker;

    if-eqz v3, :cond_0

    .line 17
    move-object v3, v2

    check-cast v3, Lcom/mapbox/mapboxsdk/annotations/Marker;

    .line 18
    iget-object v4, p0, Lcom/mapbox/mapboxsdk/maps/o;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/annotations/a;->a()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/mapbox/mapboxsdk/maps/q;->a(J)V

    .line 19
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/o;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v2, v3}, Lcom/mapbox/mapboxsdk/maps/q;->a(Lcom/mapbox/mapboxsdk/annotations/Marker;)J

    move-result-wide v4

    .line 20
    invoke-virtual {v3, v4, v5}, Lcom/mapbox/mapboxsdk/annotations/a;->a(J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
