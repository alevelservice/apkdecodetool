.class Lcom/mapbox/mapboxsdk/location/l;
.super Ljava/lang/Object;
.source "LocationComponentCompassEngine.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/location/b;
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final a:Landroid/view/WindowManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Landroid/hardware/SensorManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/location/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/hardware/Sensor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Landroid/hardware/Sensor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/hardware/Sensor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:[F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private h:[F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private i:[F

.field private j:F

.field private k:I

.field private l:J

.field private m:[F
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:[F
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/WindowManager;Landroid/hardware/SensorManager;)V
    .locals 2
    .param p1    # Landroid/view/WindowManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/SensorManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->c:Ljava/util/List;

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->g:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->h:[F

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 5
    iput-object v1, p0, Lcom/mapbox/mapboxsdk/location/l;->m:[F

    new-array v0, v0, [F

    .line 6
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->n:[F

    .line 7
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/l;->a:Landroid/view/WindowManager;

    .line 8
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/l;->b:Landroid/hardware/SensorManager;

    const/16 p1, 0xb

    .line 9
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/l;->d:Landroid/hardware/Sensor;

    .line 10
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/l;->d:Landroid/hardware/Sensor;

    if-nez p1, :cond_0

    const-string p1, "Mbgl-LocationComponentCompassEngine"

    const-string v0, "Rotation vector sensor not supported on device, falling back to accelerometer and magnetic field."

    .line 11
    invoke-static {p1, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/l;->e:Landroid/hardware/Sensor;

    const/4 p1, 0x2

    .line 13
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/l;->f:Landroid/hardware/Sensor;

    :cond_0
    return-void
.end method

.method private a(F)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/location/c;

    .line 6
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/location/c;->a(F)V

    goto :goto_0

    .line 7
    :cond_0
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/l;->j:F

    return-void
.end method

.method private a(Landroid/hardware/SensorEvent;)[F
    .locals 3
    .param p1    # Landroid/hardware/SensorEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 10
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->g:[F

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/l;->g:[F

    :cond_0
    return-object p1
.end method

.method private a([F[F)[F
    .locals 5
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 9
    aget v1, p2, v0

    const v2, 0x3ee66666    # 0.45f

    aget v3, p1, v0

    aget v4, p2, v0

    sub-float/2addr v3, v4

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private b()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->d:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/l;->b()Z

    move-result v0

    const v1, 0x186a0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/l;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/l;->e:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/l;->f:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/l;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/l;->e:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/l;->f:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2
    iget-wide v3, v0, Lcom/mapbox/mapboxsdk/location/l;->l:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/l;->i:[F

    if-eqz v3, :cond_1

    .line 4
    iget-object v4, v0, Lcom/mapbox/mapboxsdk/location/l;->h:[F

    invoke-static {v4, v3}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/l;->h:[F

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/mapbox/mapboxsdk/location/l;->m:[F

    iget-object v6, v0, Lcom/mapbox/mapboxsdk/location/l;->n:[F

    invoke-static {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 6
    :goto_0
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/l;->a:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/16 v4, 0x82

    const/16 v5, 0x81

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    const/4 v3, 0x1

    const/4 v9, 0x2

    goto :goto_1

    :cond_2
    const/16 v3, 0x82

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/16 v3, 0x81

    const/16 v9, 0x82

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    const/16 v9, 0x81

    :goto_1
    const/16 v10, 0x9

    new-array v10, v10, [F

    .line 7
    iget-object v11, v0, Lcom/mapbox/mapboxsdk/location/l;->h:[F

    invoke-static {v11, v3, v9, v10}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    new-array v11, v6, [F

    .line 8
    invoke-static {v10, v11}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 9
    aget v12, v11, v8

    float-to-double v12, v12

    const-wide v14, -0x4016de04abbbd2e8L    # -0.7853981633974483

    const/16 v16, 0x83

    cmpg-double v17, v12, v14

    if-gez v17, :cond_9

    .line 10
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/l;->a:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-eq v3, v8, :cond_8

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_6

    const/4 v5, 0x1

    :cond_5
    const/4 v8, 0x3

    goto :goto_4

    :cond_6
    const/16 v5, 0x83

    goto :goto_4

    :cond_7
    :goto_2
    const/16 v8, 0x83

    goto :goto_4

    :cond_8
    const/4 v5, 0x3

    :goto_3
    const/16 v8, 0x81

    goto :goto_4

    .line 11
    :cond_9
    aget v12, v11, v8

    float-to-double v12, v12

    const-wide v14, 0x3fe921fb54442d18L    # 0.7853981633974483

    cmpl-double v17, v12, v14

    if-lez v17, :cond_c

    .line 12
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/l;->a:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-eq v3, v8, :cond_b

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_a

    const/4 v5, 0x1

    goto :goto_2

    :cond_a
    const/4 v5, 0x3

    goto :goto_4

    :cond_b
    const/16 v5, 0x83

    goto :goto_3

    .line 13
    :cond_c
    aget v12, v11, v7

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-double v12, v12

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v16, v12, v14

    if-lez v16, :cond_10

    .line 14
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/l;->a:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-eq v3, v8, :cond_f

    if-eq v3, v7, :cond_e

    if-eq v3, v6, :cond_d

    const/4 v5, 0x1

    const/16 v8, 0x82

    goto :goto_4

    :cond_d
    const/4 v5, 0x2

    goto :goto_4

    :cond_e
    const/4 v8, 0x2

    goto :goto_4

    :cond_f
    const/16 v5, 0x82

    goto :goto_3

    :cond_10
    move v5, v3

    move v8, v9

    .line 15
    :goto_4
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/location/l;->h:[F

    invoke-static {v3, v5, v8, v10}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 16
    invoke-static {v10, v11}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v3, 0x0

    .line 17
    aget v3, v11, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {v0, v3}, Lcom/mapbox/mapboxsdk/location/l;->a(F)V

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    .line 18
    iput-wide v1, v0, Lcom/mapbox/mapboxsdk/location/l;->l:J

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 4
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/l;->j:F

    return v0
.end method

.method public a(Lcom/mapbox/mapboxsdk/location/c;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/location/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/l;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/l;->d()V

    :cond_0
    return-void
.end method

.method public b(Lcom/mapbox/mapboxsdk/location/c;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/location/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/l;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/mapbox/mapboxsdk/location/l;->k:I

    if-eq p1, p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/l;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/c;

    .line 3
    invoke-interface {v0, p2}, Lcom/mapbox/mapboxsdk/location/c;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    iput p2, p0, Lcom/mapbox/mapboxsdk/location/l;->k:I

    :cond_1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1    # Landroid/hardware/SensorEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/l;->k:I

    if-nez v0, :cond_0

    const-string v0, "Mbgl-LocationComponentCompassEngine"

    const-string v1, "Compass sensor is unreliable, device calibration is needed."

    .line 2
    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/l;->a(Landroid/hardware/SensorEvent;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/l;->i:[F

    .line 5
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/l;->e()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/l;->a(Landroid/hardware/SensorEvent;)[F

    move-result-object p1

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->m:[F

    invoke-direct {p0, p1, v0}, Lcom/mapbox/mapboxsdk/location/l;->a([F[F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/l;->m:[F

    .line 8
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/l;->e()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 10
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/l;->a(Landroid/hardware/SensorEvent;)[F

    move-result-object p1

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/l;->n:[F

    invoke-direct {p0, p1, v0}, Lcom/mapbox/mapboxsdk/location/l;->a([F[F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/l;->n:[F

    .line 11
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/l;->e()V

    :cond_3
    :goto_0
    return-void
.end method
