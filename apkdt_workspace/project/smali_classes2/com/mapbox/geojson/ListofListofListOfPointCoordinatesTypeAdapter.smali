.class Lcom/mapbox/geojson/ListofListofListOfPointCoordinatesTypeAdapter;
.super Lcom/mapbox/geojson/BaseCoordinatesTypeAdapter;
.source "ListofListofListOfPointCoordinatesTypeAdapter.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/geojson/BaseCoordinatesTypeAdapter<",
        "Ljava/util/List<",
        "Ljava/util/List<",
        "Ljava/util/List<",
        "Lcom/mapbox/geojson/Point;",
        ">;>;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/geojson/BaseCoordinatesTypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/r/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mapbox/geojson/ListofListofListOfPointCoordinatesTypeAdapter;->read(Lcom/google/gson/r/a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/google/gson/r/a;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/r/a;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Point;",
            ">;>;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/r/a;->C()Lcom/google/gson/r/b;

    move-result-object v0

    sget-object v1, Lcom/google/gson/r/b;->NULL:Lcom/google/gson/r/b;

    if-eq v0, v1, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/google/gson/r/a;->C()Lcom/google/gson/r/b;

    move-result-object v0

    sget-object v1, Lcom/google/gson/r/b;->BEGIN_ARRAY:Lcom/google/gson/r/b;

    if-ne v0, v1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/google/gson/r/a;->i()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/r/a;->C()Lcom/google/gson/r/b;

    move-result-object v1

    sget-object v2, Lcom/google/gson/r/b;->BEGIN_ARRAY:Lcom/google/gson/r/b;

    if-ne v1, v2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/google/gson/r/a;->i()V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/r/a;->C()Lcom/google/gson/r/b;

    move-result-object v2

    sget-object v3, Lcom/google/gson/r/b;->BEGIN_ARRAY:Lcom/google/gson/r/b;

    if-ne v2, v3, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/google/gson/r/a;->i()V

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :goto_2
    invoke-virtual {p1}, Lcom/google/gson/r/a;->C()Lcom/google/gson/r/b;

    move-result-object v3

    sget-object v4, Lcom/google/gson/r/b;->BEGIN_ARRAY:Lcom/google/gson/r/b;

    if-ne v3, v4, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Lcom/mapbox/geojson/BaseCoordinatesTypeAdapter;->readPoint(Lcom/google/gson/r/a;)Lcom/mapbox/geojson/Point;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/r/a;->l()V

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/r/a;->l()V

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/r/a;->l()V

    return-object v0

    .line 19
    :cond_3
    new-instance p1, Lcom/mapbox/geojson/exception/GeoJsonException;

    const-string v0, "coordinates should be array of array of array of double"

    invoke-direct {p1, v0}, Lcom/mapbox/geojson/exception/GeoJsonException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public bridge synthetic write(Lcom/google/gson/r/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/mapbox/geojson/ListofListofListOfPointCoordinatesTypeAdapter;->write(Lcom/google/gson/r/c;Ljava/util/List;)V

    return-void
.end method

.method public write(Lcom/google/gson/r/c;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/r/c;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/mapbox/geojson/Point;",
            ">;>;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/r/c;->q()Lcom/google/gson/r/c;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/r/c;->i()Lcom/google/gson/r/c;

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Lcom/google/gson/r/c;->i()Lcom/google/gson/r/c;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Lcom/google/gson/r/c;->i()Lcom/google/gson/r/c;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/geojson/Point;

    .line 9
    invoke-virtual {p0, p1, v2}, Lcom/mapbox/geojson/BaseCoordinatesTypeAdapter;->writePoint(Lcom/google/gson/r/c;Lcom/mapbox/geojson/Point;)V

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/r/c;->k()Lcom/google/gson/r/c;

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/r/c;->k()Lcom/google/gson/r/c;

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/r/c;->k()Lcom/google/gson/r/c;

    return-void
.end method
