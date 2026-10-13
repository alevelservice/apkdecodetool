.class public Lcom/google/android/gms/vision/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/a$c;,
        Lcom/google/android/gms/vision/a$b;,
        Lcom/google/android/gms/vision/a$d;,
        Lcom/google/android/gms/vision/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/Object;

.field private c:Landroid/hardware/Camera;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "cameraLock"
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Lcom/google/android/gms/common/images/a;

.field private g:F

.field private h:I

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/Thread;

.field private n:Lcom/google/android/gms/vision/a$c;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[B",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/a;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/gms/vision/a;->d:I

    const/high16 v1, 0x41f00000    # 30.0f

    .line 4
    iput v1, p0, Lcom/google/android/gms/vision/a;->g:F

    const/16 v1, 0x400

    .line 5
    iput v1, p0, Lcom/google/android/gms/vision/a;->h:I

    const/16 v1, 0x300

    .line 6
    iput v1, p0, Lcom/google/android/gms/vision/a;->i:I

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/vision/a;->j:Z

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/a;->o:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/vision/d;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/vision/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/vision/a;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/google/android/gms/vision/a;->g:F

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/vision/a;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/google/android/gms/vision/a;->h:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/vision/a;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/vision/a;->a:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/vision/a;)Landroid/hardware/Camera;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/gms/vision/a;->c:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/vision/a;Lcom/google/android/gms/vision/a$c;)Lcom/google/android/gms/vision/a$c;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/vision/a;->n:Lcom/google/android/gms/vision/a$c;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/vision/a;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/google/android/gms/vision/a;->j:Z

    return p1
.end method

.method private final a(Lcom/google/android/gms/common/images/a;)[B
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x11

    .line 28
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/a;->b()I

    move-result p1

    mul-int v1, v1, p1

    mul-int v1, v1, v0

    int-to-long v0, v1

    long-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 31
    new-array p1, p1, [B

    .line 32
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->o:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to create valid buffer for camera source."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcom/google/android/gms/vision/a;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/google/android/gms/vision/a;->i:I

    return p1
.end method

.method private final b()Landroid/hardware/Camera;
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/vision/a;->d:I

    .line 2
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_1

    .line 4
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 5
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-eq v3, v5, :cond_15

    .line 6
    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/vision/a;->h:I

    iget v4, p0, Lcom/google/android/gms/vision/a;->i:I

    .line 8
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 10
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 11
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 13
    iget v10, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    iget v11, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 14
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    .line 15
    iget v13, v12, Landroid/hardware/Camera$Size;->width:I

    int-to-float v13, v13

    iget v14, v12, Landroid/hardware/Camera$Size;->height:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-float v13, v10, v13

    .line 16
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3c23d70a    # 0.01f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3

    .line 17
    new-instance v10, Lcom/google/android/gms/vision/a$d;

    invoke-direct {v10, v9, v12}, Lcom/google/android/gms/vision/a$d;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x0

    if-nez v5, :cond_5

    .line 19
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 20
    new-instance v9, Lcom/google/android/gms/vision/a$d;

    invoke-direct {v9, v6, v8}, Lcom/google/android/gms/vision/a$d;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    const v6, 0x7fffffff

    move-object v10, v8

    const/4 v9, 0x0

    const v11, 0x7fffffff

    :cond_6
    :goto_4
    if-ge v9, v5, :cond_7

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v9, v9, 0x1

    check-cast v12, Lcom/google/android/gms/vision/a$d;

    .line 22
    invoke-virtual {v12}, Lcom/google/android/gms/vision/a$d;->a()Lcom/google/android/gms/common/images/a;

    move-result-object v13

    .line 23
    invoke-virtual {v13}, Lcom/google/android/gms/common/images/a;->b()I

    move-result v14

    sub-int/2addr v14, v1

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    invoke-virtual {v13}, Lcom/google/android/gms/common/images/a;->a()I

    move-result v13

    sub-int/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v14, v13

    if-ge v14, v11, :cond_6

    move-object v10, v12

    move v11, v14

    goto :goto_4

    :cond_7
    if-eqz v10, :cond_14

    .line 24
    invoke-virtual {v10}, Lcom/google/android/gms/vision/a$d;->b()Lcom/google/android/gms/common/images/a;

    move-result-object v1

    .line 25
    invoke-virtual {v10}, Lcom/google/android/gms/vision/a$d;->a()Lcom/google/android/gms/common/images/a;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/vision/a;->f:Lcom/google/android/gms/common/images/a;

    .line 26
    iget v4, p0, Lcom/google/android/gms/vision/a;->g:F

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 27
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v5

    .line 28
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v8

    const v7, 0x7fffffff

    :cond_8
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 29
    aget v11, v9, v2

    sub-int v11, v4, v11

    .line 30
    aget v10, v9, v10

    sub-int v10, v4, v10

    .line 31
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v11, v10

    if-ge v11, v7, :cond_8

    move-object v6, v9

    move v7, v11

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_13

    .line 32
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-eqz v1, :cond_a

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/common/images/a;->b()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/a;->a()I

    move-result v1

    invoke-virtual {v4, v5, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 34
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->f:Lcom/google/android/gms/common/images/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/a;->b()I

    move-result v1

    iget-object v5, p0, Lcom/google/android/gms/vision/a;->f:Lcom/google/android/gms/common/images/a;

    invoke-virtual {v5}, Lcom/google/android/gms/common/images/a;->a()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 35
    aget v1, v6, v2

    aget v5, v6, v10

    invoke-virtual {v4, v1, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    const/16 v1, 0x11

    .line 36
    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->a:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 38
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_b

    if-eq v1, v10, :cond_e

    const/4 v5, 0x2

    if-eq v1, v5, :cond_d

    const/4 v5, 0x3

    if-eq v1, v5, :cond_c

    const/16 v5, 0x1f

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Bad rotation value: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :cond_c
    const/16 v1, 0x10e

    goto :goto_6

    :cond_d
    const/16 v1, 0xb4

    goto :goto_6

    :cond_e
    const/16 v1, 0x5a

    .line 40
    :goto_6
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 41
    invoke-static {v3, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 42
    iget v3, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v10, :cond_f

    .line 43
    iget v3, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v1

    rem-int/lit16 v3, v3, 0x168

    rsub-int v1, v3, 0x168

    .line 44
    rem-int/lit16 v1, v1, 0x168

    goto :goto_7

    .line 45
    :cond_f
    iget v3, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v1

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    move v1, v3

    .line 46
    :goto_7
    div-int/lit8 v5, v3, 0x5a

    iput v5, p0, Lcom/google/android/gms/vision/a;->e:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 48
    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->k:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 50
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/vision/a;->k:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->k:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    new-array v1, v10, [Ljava/lang/Object;

    .line 52
    iget-object v3, p0, Lcom/google/android/gms/vision/a;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "FocusMode %s is not supported on this device."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    iput-object v8, p0, Lcom/google/android/gms/vision/a;->k:Ljava/lang/String;

    .line 54
    :cond_11
    :goto_8
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->k:Ljava/lang/String;

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/google/android/gms/vision/a;->j:Z

    if-eqz v1, :cond_12

    .line 55
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "continuous-video"

    .line 56
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 57
    invoke-virtual {v4, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 58
    iput-object v2, p0, Lcom/google/android/gms/vision/a;->k:Ljava/lang/String;

    .line 59
    :cond_12
    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 60
    new-instance v1, Lcom/google/android/gms/vision/a$b;

    invoke-direct {v1, p0, v8}, Lcom/google/android/gms/vision/a$b;-><init>(Lcom/google/android/gms/vision/a;Lcom/google/android/gms/vision/d;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->f:Lcom/google/android/gms/common/images/a;

    invoke-direct {p0, v1}, Lcom/google/android/gms/vision/a;->a(Lcom/google/android/gms/common/images/a;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->f:Lcom/google/android/gms/common/images/a;

    invoke-direct {p0, v1}, Lcom/google/android/gms/vision/a;->a(Lcom/google/android/gms/common/images/a;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->f:Lcom/google/android/gms/common/images/a;

    invoke-direct {p0, v1}, Lcom/google/android/gms/vision/a;->a(Lcom/google/android/gms/common/images/a;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->f:Lcom/google/android/gms/common/images/a;

    invoke-direct {p0, v1}, Lcom/google/android/gms/vision/a;->a(Lcom/google/android/gms/common/images/a;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-object v0

    .line 65
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not find suitable preview frames per second range."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not find suitable preview size."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not find requested camera."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method static synthetic b(Lcom/google/android/gms/vision/a;)Lcom/google/android/gms/vision/a$c;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/gms/vision/a;->n:Lcom/google/android/gms/vision/a$c;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/vision/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/vision/a;->d:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/vision/a;)Ljava/util/Map;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/vision/a;->o:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/vision/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/vision/a;->e:I

    return p0
.end method

.method static synthetic e(Lcom/google/android/gms/vision/a;)Lcom/google/android/gms/common/images/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/vision/a;->f:Lcom/google/android/gms/common/images/a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/a;
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.CAMERA"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object p0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/vision/a;->b()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/vision/a;->c:Landroid/hardware/Camera;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/vision/a;->c:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 7
    new-instance p1, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/android/gms/vision/a;->n:Lcom/google/android/gms/vision/a$c;

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/google/android/gms/vision/a;->m:Ljava/lang/Thread;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/vision/a;->n:Lcom/google/android/gms/vision/a$c;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/vision/a$c;->a(Z)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/vision/a;->m:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/vision/a;->l:Z

    .line 11
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/vision/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->n:Lcom/google/android/gms/vision/a$c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/a$c;->a(Z)V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->m:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 15
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->m:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :catch_0
    :try_start_2
    iput-object v2, p0, Lcom/google/android/gms/vision/a;->m:Ljava/lang/Thread;

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/vision/a;->l:Z

    if-eqz v1, :cond_1

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    .line 23
    :try_start_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to clear camera preview: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 25
    iput-object v2, p0, Lcom/google/android/gms/vision/a;->c:Landroid/hardware/Camera;

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/vision/a;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
