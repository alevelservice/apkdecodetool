.class public Lcom/mapbox/mapboxsdk/t/a/q;
.super Lcom/mapbox/mapboxsdk/t/a/y;
.source "LineOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/mapboxsdk/t/a/y<",
        "Lcom/mapbox/mapboxsdk/t/a/n;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/google/gson/JsonElement;

.field private c:Lcom/mapbox/geojson/LineString;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Float;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Float;

.field private h:Ljava/lang/Float;

.field private i:Ljava/lang/Float;

.field private j:Ljava/lang/Float;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/t/a/y;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic a(JLcom/mapbox/mapboxsdk/t/a/b;)Lcom/mapbox/mapboxsdk/t/a/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/t/a/q;->a(JLcom/mapbox/mapboxsdk/t/a/b;)Lcom/mapbox/mapboxsdk/t/a/n;

    move-result-object p1

    return-object p1
.end method

.method a(JLcom/mapbox/mapboxsdk/t/a/b;)Lcom/mapbox/mapboxsdk/t/a/n;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/mapbox/mapboxsdk/t/a/b<",
            "*",
            "Lcom/mapbox/mapboxsdk/t/a/n;",
            "****>;)",
            "Lcom/mapbox/mapboxsdk/t/a/n;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/q;->c:Lcom/mapbox/geojson/LineString;

    if-eqz v0, :cond_0

    .line 10
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/q;->d:Ljava/lang/String;

    const-string v1, "line-join"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/q;->e:Ljava/lang/Float;

    const-string v1, "line-opacity"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 13
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/q;->f:Ljava/lang/String;

    const-string v1, "line-color"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/q;->g:Ljava/lang/Float;

    const-string v1, "line-width"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 15
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/q;->h:Ljava/lang/Float;

    const-string v1, "line-gap-width"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 16
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/q;->i:Ljava/lang/Float;

    const-string v1, "line-offset"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 17
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/q;->j:Ljava/lang/Float;

    const-string v1, "line-blur"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/q;->k:Ljava/lang/String;

    const-string v1, "line-pattern"

    invoke-virtual {v5, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/mapbox/mapboxsdk/t/a/n;

    iget-object v6, p0, Lcom/mapbox/mapboxsdk/t/a/q;->c:Lcom/mapbox/geojson/LineString;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mapbox/mapboxsdk/t/a/n;-><init>(JLcom/mapbox/mapboxsdk/t/a/b;Lcom/google/gson/JsonObject;Lcom/mapbox/geojson/LineString;)V

    .line 20
    iget-boolean p1, p0, Lcom/mapbox/mapboxsdk/t/a/q;->a:Z

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/a;->a(Z)V

    .line 21
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/q;->b:Lcom/google/gson/JsonElement;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/a;->a(Lcom/google/gson/JsonElement;)V

    return-object v0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "geometry field is required"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/q;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/q;->j:Ljava/lang/Float;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/q;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/q;->f:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/mapbox/mapboxsdk/t/a/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;)",
            "Lcom/mapbox/mapboxsdk/t/a/q;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 6
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/mapbox/geojson/LineString;->fromLngLats(Ljava/util/List;)Lcom/mapbox/geojson/LineString;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/q;->c:Lcom/mapbox/geojson/LineString;

    return-object p0
.end method

.method public a(Z)Lcom/mapbox/mapboxsdk/t/a/q;
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/t/a/q;->a:Z

    return-object p0
.end method

.method public b(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/q;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/q;->h:Ljava/lang/Float;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/q;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/q;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/q;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/q;->i:Ljava/lang/Float;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/mapbox/mapboxsdk/t/a/q;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/q;->k:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/q;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/q;->e:Ljava/lang/Float;

    return-object p0
.end method

.method public e(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/t/a/q;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/q;->g:Ljava/lang/Float;

    return-object p0
.end method
