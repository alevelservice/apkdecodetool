.class public Lcom/mapbox/mapboxsdk/maps/w;
.super Ljava/lang/Object;
.source "Projection.java"


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/maps/q;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/mapbox/mapboxsdk/maps/MapView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/q;Lcom/mapbox/mapboxsdk/maps/MapView;)V
    .locals 0
    .param p1    # Lcom/mapbox/mapboxsdk/maps/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/MapView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/w;->a:Lcom/mapbox/mapboxsdk/maps/q;

    .line 3
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/w;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    return-void
.end method

.method static a(DD)D
    .locals 3

    sub-double v0, p0, p2

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v2, p0, p2

    if-lez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide p0, 0x4076800000000000L    # 360.0

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method static a(Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)D
    .locals 10
    .param p0    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/maps/w;->b(D)D

    move-result-wide v0

    .line 41
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/mapbox/mapboxsdk/maps/w;->b(D)D

    move-result-wide v2

    .line 42
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/mapbox/mapboxsdk/maps/w;->b(D)D

    move-result-wide v4

    .line 43
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/mapbox/mapboxsdk/maps/w;->b(D)D

    move-result-wide p0

    sub-double/2addr v2, v0

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v0, v0, v6

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 46
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double v4, v4, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double v4, v4, p0

    sub-double/2addr v6, v4

    .line 47
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/mapbox/mapboxsdk/maps/w;->c(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static b(D)D
    .locals 2

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p0, p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method static c(D)D
    .locals 2

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p0, p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public a(D)D
    .locals 1
    .param p1    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = -90.0
            to = 90.0
        .end annotation
    .end param

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/w;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/q;->a(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/w;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 1
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/w;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/maps/q;->a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;
    .locals 27
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 9
    iget-object v2, v0, Lcom/mapbox/mapboxsdk/maps/w;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 10
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/maps/w;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/mapboxsdk/maps/w;->a()[I

    move-result-object v1

    const/4 v2, 0x0

    .line 12
    aget v2, v1, v2

    int-to-float v2, v2

    .line 13
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/maps/w;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    aget v4, v1, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x1

    .line 14
    aget v4, v1, v4

    int-to-float v4, v4

    .line 15
    iget-object v5, v0, Lcom/mapbox/mapboxsdk/maps/w;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    const/4 v6, 0x3

    aget v1, v1, v6

    sub-int/2addr v5, v1

    int-to-float v1, v5

    move/from16 v26, v3

    move v3, v1

    move v1, v2

    move/from16 v2, v26

    .line 16
    :goto_0
    new-instance v5, Landroid/graphics/PointF;

    sub-float v6, v2, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    sub-float v8, v3, v4

    div-float/2addr v8, v7

    add-float/2addr v8, v4

    invoke-direct {v5, v6, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v5}, Lcom/mapbox/mapboxsdk/maps/w;->a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v5

    .line 17
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v6}, Lcom/mapbox/mapboxsdk/maps/w;->a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v8

    .line 18
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v6}, Lcom/mapbox/mapboxsdk/maps/w;->a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v9

    .line 19
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v4}, Lcom/mapbox/mapboxsdk/maps/w;->a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v11

    .line 20
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2}, Lcom/mapbox/mapboxsdk/maps/w;->a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v10

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v6, 0x4056800000000000L    # 90.0

    .line 26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v12, 0x0

    move-wide/from16 v18, v2

    move-wide/from16 v22, v6

    move-wide v2, v12

    move-wide v6, v2

    move-wide/from16 v16, v6

    move-wide/from16 v24, v16

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mapbox/mapboxsdk/geometry/LatLng;

    .line 27
    invoke-static {v5, v4}, Lcom/mapbox/mapboxsdk/maps/w;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;)D

    move-result-wide v14

    cmpl-double v20, v14, v12

    if-ltz v20, :cond_1

    .line 28
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v14

    invoke-virtual {v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v12

    invoke-static {v14, v15, v12, v13}, Lcom/mapbox/mapboxsdk/maps/w;->a(DD)D

    move-result-wide v12

    cmpl-double v14, v12, v6

    if-lez v14, :cond_2

    .line 29
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v16

    move-wide v6, v12

    goto :goto_2

    .line 30
    :cond_1
    invoke-virtual {v5}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v12

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lcom/mapbox/mapboxsdk/maps/w;->a(DD)D

    move-result-wide v12

    cmpl-double v14, v12, v2

    if-lez v14, :cond_2

    .line 31
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->b()D

    move-result-wide v2

    move-wide/from16 v24, v2

    move-wide v2, v12

    .line 32
    :cond_2
    :goto_2
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v12

    cmpg-double v14, v18, v12

    if-gez v14, :cond_3

    .line 33
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v12

    move-wide/from16 v18, v12

    .line 34
    :cond_3
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v12

    cmpl-double v14, v22, v12

    if-lez v14, :cond_4

    .line 35
    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/geometry/LatLng;->a()D

    move-result-wide v12

    move-wide/from16 v22, v12

    :cond_4
    const-wide/16 v12, 0x0

    goto :goto_1

    :cond_5
    cmpg-double v1, v16, v24

    if-gez v1, :cond_6

    .line 36
    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double v20, v16, v2

    .line 37
    invoke-static/range {v18 .. v25}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;->b(DDDD)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v12

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;-><init>(Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    return-object v1

    .line 38
    :cond_6
    new-instance v1, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;

    move-wide/from16 v14, v18

    move-wide/from16 v18, v22

    move-wide/from16 v20, v24

    .line 39
    invoke-static/range {v14 .. v21}, Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;->b(DDDD)Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;

    move-result-object v12

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;-><init>(Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/geometry/LatLngBounds;)V

    return-object v1
.end method

.method a([I)V
    .locals 4

    .line 1
    array-length v0, p1

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    aget v2, p1, v1

    int-to-double v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/w;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {p1, v0}, Lcom/mapbox/mapboxsdk/maps/q;->a([D)V

    return-void
.end method

.method a()[I
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/w;->a:Lcom/mapbox/mapboxsdk/maps/q;

    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/q;->d()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/mapbox/mapboxsdk/camera/CameraPosition;->padding:[D

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 6
    aget-wide v3, v0, v2

    double-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    double-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x2

    aget-wide v3, v0, v2

    double-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x3

    aget-wide v3, v0, v2

    double-to-int v0, v3

    aput v0, v1, v2

    return-object v1
.end method

.method b()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/w;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public c()Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/mapbox/mapboxsdk/maps/w;->a(Z)Lcom/mapbox/mapboxsdk/geometry/VisibleRegion;

    move-result-object v0

    return-object v0
.end method

.method d()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/w;->b:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method
