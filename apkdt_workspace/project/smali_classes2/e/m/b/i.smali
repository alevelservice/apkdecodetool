.class Le/m/b/i;
.super Ljava/lang/Object;
.source "Convert.java"


# direct methods
.method private static a(Ljava/lang/Object;F)F
    .locals 0

    .line 35
    invoke-static {p0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result p0

    mul-float p0, p0, p1

    return p0
.end method

.method static a(Ljava/util/List;)Lcom/mapbox/geojson/Polygon;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;>;)",
            "Lcom/mapbox/geojson/Polygon;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 32
    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/mapbox/geojson/Point;->fromLngLat(DD)Lcom/mapbox/geojson/Point;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {v0}, Lcom/mapbox/geojson/Polygon;->fromLngLats(Ljava/util/List;)Lcom/mapbox/geojson/Polygon;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Object;Lcom/mapbox/mapboxsdk/maps/n;F)Lcom/mapbox/mapboxsdk/camera/a;
    .locals 9

    .line 2
    invoke-static {p0}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "newLatLngBounds"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "newCameraPosition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :sswitch_2
    const-string v1, "zoomOut"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_3
    const-string v1, "newLatLngZoom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "scrollBy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "zoomTo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_6
    const-string v1, "zoomIn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "zoomBy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_8
    const-string v1, "newLatLng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_9
    const-string v1, "tiltTo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_a
    const-string v1, "bearingTo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot interpret "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " as CameraUpdate"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_0
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Lcom/mapbox/mapboxsdk/camera/b;->b(D)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_1
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Lcom/mapbox/mapboxsdk/camera/b;->a(D)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_2
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Lcom/mapbox/mapboxsdk/camera/b;->d(D)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_3
    invoke-static {}, Lcom/mapbox/mapboxsdk/camera/b;->b()Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_4
    invoke-static {}, Lcom/mapbox/mapboxsdk/camera/b;->a()Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v7, :cond_1

    .line 11
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Lcom/mapbox/mapboxsdk/camera/b;->c(D)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result p0

    float-to-double p0, p0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Le/m/b/i;->c(Ljava/lang/Object;F)Landroid/graphics/Point;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/mapbox/mapboxsdk/camera/b;->a(DLandroid/graphics/Point;)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object p0

    return-object p0

    .line 13
    :pswitch_6
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p2}, Le/m/b/i;->a(Ljava/lang/Object;F)F

    move-result p0

    .line 14
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Le/m/b/i;->a(Ljava/lang/Object;F)F

    move-result p2

    .line 15
    invoke-virtual {p1, p0, p2}, Lcom/mapbox/mapboxsdk/maps/n;->a(FF)V

    const/4 p0, 0x0

    return-object p0

    .line 16
    :pswitch_7
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Le/m/b/i;->g(Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object p0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p0, p1, p2}, Lcom/mapbox/mapboxsdk/camera/b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;D)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object p0

    return-object p0

    .line 17
    :pswitch_8
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Le/m/b/i;->h(Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object p0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Le/m/b/i;->b(Ljava/lang/Object;F)I

    move-result p1

    .line 18
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Le/m/b/i;->b(Ljava/lang/Object;F)I

    move-result v1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p2}, Le/m/b/i;->b(Ljava/lang/Object;F)I

    move-result v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Le/m/b/i;->b(Ljava/lang/Object;F)I

    move-result p2

    .line 19
    invoke-static {p0, p1, v1, v2, p2}, Lcom/mapbox/mapboxsdk/camera/b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;IIII)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object p0

    return-object p0

    .line 20
    :pswitch_9
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Le/m/b/i;->g(Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object p0

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/camera/b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object p0

    return-object p0

    .line 21
    :pswitch_a
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Le/m/b/i;->b(Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p0

    invoke-static {p0}, Lcom/mapbox/mapboxsdk/camera/b;->a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Lcom/mapbox/mapboxsdk/camera/a;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6e36b137 -> :sswitch_a
        -0x34135de8 -> :sswitch_9
        -0x307ef13a -> :sswitch_8
        -0x29807c76 -> :sswitch_7
        -0x29807ba8 -> :sswitch_6
        -0x29807a52 -> :sswitch_5
        -0x17f88ffc -> :sswitch_4
        -0x8a52c47 -> :sswitch_3
        -0x68ee185 -> :sswitch_2
        0x1526e92e -> :sswitch_1
        0x6303451b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;)Ljava/lang/Object;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 22
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iget-wide v1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->bearing:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "bearing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->target:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-static {v1}, Le/m/b/i;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "target"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-wide v1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->tilt:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "tilt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-wide v1, p0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->zoom:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string v1, "zoom"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Double;

    .line 27
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Object;Le/m/b/b0;)V
    .locals 6

    .line 76
    invoke-static {p0}, Le/m/b/i;->l(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "iconSize"

    .line 77
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/b0;->i(F)V

    :cond_0
    const-string v0, "iconImage"

    .line 79
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/b0;->g(Ljava/lang/String;)V

    :cond_1
    const-string v0, "iconRotate"

    .line 81
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/b0;->k(F)V

    :cond_2
    const-string v0, "iconOffset"

    .line 83
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    new-array v4, v1, [F

    .line 84
    invoke-static {v0}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v5

    aput v5, v4, v3

    invoke-static {v0}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    aput v0, v4, v2

    invoke-interface {p1, v4}, Le/m/b/b0;->a([F)V

    :cond_3
    const-string v0, "iconAnchor"

    .line 85
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 86
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/b0;->h(Ljava/lang/String;)V

    :cond_4
    const-string v0, "fontNames"

    .line 87
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    new-array v4, v3, [Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Le/m/b/b0;->a([Ljava/lang/String;)V

    :cond_5
    const-string v0, "textField"

    .line 89
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 90
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/b0;->j(Ljava/lang/String;)V

    :cond_6
    const-string v0, "textSize"

    .line 91
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 92
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/b0;->d(F)V

    :cond_7
    const-string v0, "textMaxWidth"

    .line 93
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 94
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/b0;->b(F)V

    :cond_8
    const-string v0, "textLetterSpacing"

    .line 95
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 96
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/b0;->m(F)V

    :cond_9
    const-string v0, "textJustify"

    .line 97
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 98
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/b0;->a(Ljava/lang/String;)V

    :cond_a
    const-string v0, "textAnchor"

    .line 99
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 100
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/b0;->c(Ljava/lang/String;)V

    :cond_b
    const-string v0, "textRotate"

    .line 101
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 102
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/b0;->c(F)V

    :cond_c
    const-string v0, "textTransform"

    .line 103
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 104
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/b0;->d(Ljava/lang/String;)V

    :cond_d
    const-string v0, "textOffset"

    .line 105
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    new-array v1, v1, [F

    .line 106
    invoke-static {v0}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v4

    aput v4, v1, v3

    invoke-static {v0}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    aput v0, v1, v2

    invoke-interface {p1, v1}, Le/m/b/b0;->b([F)V

    :cond_e
    const-string v0, "iconOpacity"

    .line 107
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 108
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/b0;->j(F)V

    :cond_f
    const-string v0, "iconColor"

    .line 109
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 110
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/b0;->e(Ljava/lang/String;)V

    :cond_10
    const-string v0, "iconHaloColor"

    .line 111
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 112
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/b0;->b(Ljava/lang/String;)V

    :cond_11
    const-string v0, "iconHaloWidth"

    .line 113
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 114
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/b0;->l(F)V

    :cond_12
    const-string v0, "iconHaloBlur"

    .line 115
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 116
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/b0;->f(F)V

    :cond_13
    const-string v0, "textOpacity"

    .line 117
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 118
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/b0;->g(F)V

    :cond_14
    const-string v0, "textColor"

    .line 119
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 120
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/b0;->f(Ljava/lang/String;)V

    :cond_15
    const-string v0, "textHaloColor"

    .line 121
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 122
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/b0;->i(Ljava/lang/String;)V

    :cond_16
    const-string v0, "textHaloWidth"

    .line 123
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 124
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/b0;->e(F)V

    :cond_17
    const-string v0, "textHaloBlur"

    .line 125
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 126
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/b0;->a(F)V

    :cond_18
    const-string v0, "geometry"

    .line 127
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 128
    invoke-static {v0}, Le/m/b/i;->g(Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/b0;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    :cond_19
    const-string v0, "zIndex"

    .line 129
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 130
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/b0;->h(F)V

    :cond_1a
    const-string v0, "draggable"

    .line 131
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 132
    invoke-static {p0}, Le/m/b/i;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1, p0}, Le/m/b/b0;->a(Z)V

    :cond_1b
    return-void
.end method

.method static a(Ljava/lang/Object;Le/m/b/h;)V
    .locals 1

    .line 133
    invoke-static {p0}, Le/m/b/i;->l(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "circleRadius"

    .line 134
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/h;->a(F)V

    :cond_0
    const-string v0, "circleColor"

    .line 136
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/h;->a(Ljava/lang/String;)V

    :cond_1
    const-string v0, "circleBlur"

    .line 138
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 139
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/h;->e(F)V

    :cond_2
    const-string v0, "circleOpacity"

    .line 140
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 141
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/h;->b(F)V

    :cond_3
    const-string v0, "circleStrokeWidth"

    .line 142
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 143
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/h;->c(F)V

    :cond_4
    const-string v0, "circleStrokeColor"

    .line 144
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 145
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/h;->b(Ljava/lang/String;)V

    :cond_5
    const-string v0, "circleStrokeOpacity"

    .line 146
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 147
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/h;->d(F)V

    :cond_6
    const-string v0, "geometry"

    .line 148
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 149
    invoke-static {v0}, Le/m/b/i;->g(Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/h;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)V

    :cond_7
    const-string v0, "draggable"

    .line 150
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 151
    invoke-static {p0}, Le/m/b/i;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1, p0}, Le/m/b/h;->a(Z)V

    :cond_8
    return-void
.end method

.method static a(Ljava/lang/Object;Le/m/b/l;)V
    .locals 1

    .line 183
    invoke-static {p0}, Le/m/b/i;->l(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "fillOpacity"

    .line 184
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/l;->a(F)V

    :cond_0
    const-string v0, "fillColor"

    .line 186
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/l;->c(Ljava/lang/String;)V

    :cond_1
    const-string v0, "fillOutlineColor"

    .line 188
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 189
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/l;->a(Ljava/lang/String;)V

    :cond_2
    const-string v0, "fillPattern"

    .line 190
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 191
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/l;->b(Ljava/lang/String;)V

    :cond_3
    const-string v0, "geometry"

    .line 192
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 193
    invoke-static {v0}, Le/m/b/i;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/l;->a(Ljava/util/List;)V

    :cond_4
    const-string v0, "draggable"

    .line 194
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 195
    invoke-static {p0}, Le/m/b/i;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1, p0}, Le/m/b/l;->a(Z)V

    :cond_5
    return-void
.end method

.method static a(Ljava/lang/Object;Le/m/b/p;)V
    .locals 4

    .line 152
    invoke-static {p0}, Le/m/b/i;->l(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "lineJoin"

    .line 153
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Convert"

    if-eqz v0, :cond_0

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLineJoin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/p;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "lineOpacity"

    .line 156
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLineOpacity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/p;->c(F)V

    :cond_1
    const-string v0, "lineColor"

    .line 159
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLineColor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/p;->c(Ljava/lang/String;)V

    :cond_2
    const-string v0, "lineWidth"

    .line 162
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLineWidth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/p;->b(F)V

    :cond_3
    const-string v0, "lineGapWidth"

    .line 165
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLineGapWidth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/p;->a(F)V

    :cond_4
    const-string v0, "lineOffset"

    .line 168
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLineOffset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/p;->d(F)V

    :cond_5
    const-string v0, "lineBlur"

    .line 171
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLineBlur"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {v0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/p;->e(F)V

    :cond_6
    const-string v0, "linePattern"

    .line 174
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLinePattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/p;->b(Ljava/lang/String;)V

    :cond_7
    const-string v0, "geometry"

    .line 177
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v2, "SetGeometry"

    .line 178
    invoke-static {v1, v2}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {v0}, Le/m/b/i;->i(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/p;->a(Ljava/util/List;)V

    :cond_8
    const-string v0, "draggable"

    .line 180
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    const-string v0, "SetDraggable"

    .line 181
    invoke-static {v1, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {p0}, Le/m/b/i;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1, p0}, Le/m/b/p;->a(Z)V

    :cond_9
    return-void
.end method

.method static a(Ljava/lang/Object;Le/m/b/t;)V
    .locals 4

    .line 36
    invoke-static {p0}, Le/m/b/i;->l(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "cameraTargetBounds"

    .line 37
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {v0}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Le/m/b/i;->h(Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/t;->a(Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    :cond_0
    const-string v0, "compassEnabled"

    .line 40
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    invoke-static {v0}, Le/m/b/i;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/t;->a(Z)V

    :cond_1
    const-string v0, "styleString"

    .line 42
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 43
    invoke-static {v0}, Le/m/b/i;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/m/b/t;->a(Ljava/lang/String;)V

    :cond_2
    const-string v0, "minMaxZoomPreference"

    .line 44
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 45
    invoke-static {v0}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Le/m/b/i;->e(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v3

    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Le/m/b/i;->e(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 48
    invoke-interface {p1, v3, v0}, Le/m/b/t;->a(Ljava/lang/Float;Ljava/lang/Float;)V

    :cond_3
    const-string v0, "rotateGesturesEnabled"

    .line 49
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 50
    invoke-static {v0}, Le/m/b/i;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/t;->e(Z)V

    :cond_4
    const-string v0, "scrollGesturesEnabled"

    .line 51
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 52
    invoke-static {v0}, Le/m/b/i;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/t;->f(Z)V

    :cond_5
    const-string v0, "tiltGesturesEnabled"

    .line 53
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 54
    invoke-static {v0}, Le/m/b/i;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/t;->c(Z)V

    :cond_6
    const-string v0, "trackCameraPosition"

    .line 55
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 56
    invoke-static {v0}, Le/m/b/i;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/t;->b(Z)V

    :cond_7
    const-string v0, "zoomGesturesEnabled"

    .line 57
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 58
    invoke-static {v0}, Le/m/b/i;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/t;->d(Z)V

    :cond_8
    const-string v0, "myLocationEnabled"

    .line 59
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 60
    invoke-static {v0}, Le/m/b/i;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/t;->g(Z)V

    :cond_9
    const-string v0, "myLocationTrackingMode"

    .line 61
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 62
    invoke-static {v0}, Le/m/b/i;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/t;->e(I)V

    :cond_a
    const-string v0, "myLocationRenderMode"

    .line 63
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 64
    invoke-static {v0}, Le/m/b/i;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/t;->b(I)V

    :cond_b
    const-string v0, "logoViewMargins"

    .line 65
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 66
    invoke-static {v0}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Le/m/b/i;->f(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Le/m/b/i;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v3, v0}, Le/m/b/t;->c(II)V

    :cond_c
    const-string v0, "compassViewPosition"

    .line 68
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 69
    invoke-static {v0}, Le/m/b/i;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Le/m/b/t;->d(I)V

    :cond_d
    const-string v0, "compassViewMargins"

    .line 70
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 71
    invoke-static {v0}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Le/m/b/i;->f(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Le/m/b/i;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v3, v0}, Le/m/b/t;->b(II)V

    :cond_e
    const-string v0, "attributionButtonMargins"

    .line 73
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 74
    invoke-static {p0}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 75
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Le/m/b/i;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Le/m/b/i;->f(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {p1, v0, p0}, Le/m/b/t;->a(II)V

    :cond_f
    return-void
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static b(Ljava/lang/Object;F)I
    .locals 0

    .line 8
    invoke-static {p0, p1}, Le/m/b/i;->a(Ljava/lang/Object;F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method static b(Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/camera/CameraPosition;
    .locals 3

    .line 1
    invoke-static {p0}, Le/m/b/i;->l(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;-><init>()V

    const-string v1, "bearing"

    .line 3
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;

    const-string v1, "target"

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Le/m/b/i;->g(Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;

    const-string v1, "tilt"

    .line 5
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->b(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;

    const-string v1, "zoom"

    .line 6
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result p0

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->c(D)Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;

    .line 7
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/camera/CameraPosition$b;->a()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/Object;)D
    .locals 2

    .line 1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static c(Ljava/lang/Object;F)Landroid/graphics/Point;
    .locals 3

    .line 2
    invoke-static {p0}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 3
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Le/m/b/i;->b(Ljava/lang/Object;F)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Le/m/b/i;->b(Ljava/lang/Object;F)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static d(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private static e(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Le/m/b/i;->d(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static f(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private static g(Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 5

    .line 1
    invoke-static {p0}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Le/m/b/i;->c(Ljava/lang/Object;)D

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Le/m/b/i;->c(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private static h(Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mapbox/mapboxsdk/geometry/LatLng;

    const/4 v1, 0x0

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Le/m/b/i;->g(Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Le/m/b/i;->g(Ljava/lang/Object;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object p0

    aput-object p0, v0, v1

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 4
    new-instance v0, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a(Ljava/util/List;)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;

    .line 6
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds$b;->a()Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object p0

    return-object p0
.end method

.method static i(Ljava/lang/Object;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 5
    new-instance v4, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Le/m/b/i;->c(Ljava/lang/Object;)D

    move-result-wide v5

    const/4 v7, 0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Le/m/b/i;->c(Ljava/lang/Object;)D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mapbox/mapboxsdk/geometry/LatLng;-><init>(DD)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static j(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ">;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Le/m/b/i;->k(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Le/m/b/i;->i(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static k(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static l(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static m(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
