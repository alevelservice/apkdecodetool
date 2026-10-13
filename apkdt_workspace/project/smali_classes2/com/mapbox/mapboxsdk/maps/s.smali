.class Lcom/mapbox/mapboxsdk/maps/s;
.super Ljava/lang/Object;
.source "PolygonContainer.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/t;


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
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/s;->a:Lcom/mapbox/mapboxsdk/maps/q;

    .line 3
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/s;->b:La/e/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/mapboxsdk/annotations/Polygon;)V
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/Polygon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/s;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->a(Lcom/mapbox/mapboxsdk/annotations/Polygon;)V

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/s;->b:La/e/d;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, La/e/d;->b(J)I

    move-result v1

    invoke-virtual {v0, v1, p1}, La/e/d;->a(ILjava/lang/Object;)V

    return-void
.end method
