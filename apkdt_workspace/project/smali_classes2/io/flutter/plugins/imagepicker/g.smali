.class Lio/flutter/plugins/imagepicker/g;
.super Ljava/lang/Object;
.source "ImageResizer.java"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lio/flutter/plugins/imagepicker/a;


# direct methods
.method constructor <init>(Ljava/io/File;Lio/flutter/plugins/imagepicker/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/g;->a:Ljava/io/File;

    .line 3
    iput-object p2, p0, Lio/flutter/plugins/imagepicker/g;->b:Lio/flutter/plugins/imagepicker/a;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Ljava/io/File;
    .locals 20

    .line 1
    invoke-static/range {p1 .. p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v7, :cond_2

    .line 4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    goto :goto_2

    :cond_2
    move-wide v9, v1

    :goto_2
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    if-eqz v8, :cond_3

    .line 5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    goto :goto_3

    :cond_3
    move-wide v10, v5

    :goto_3
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    if-eqz v7, :cond_4

    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpg-double v13, v11, v1

    if-gez v13, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    if-eqz v8, :cond_5

    .line 7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpg-double v14, v12, v5

    if-gez v14, :cond_5

    const/4 v12, 0x1

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    :goto_5
    if-nez v11, :cond_7

    if-eqz v12, :cond_6

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v11, 0x1

    :goto_7
    if-eqz v11, :cond_d

    .line 8
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    div-double/2addr v11, v5

    mul-double v11, v11, v1

    .line 9
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    div-double/2addr v13, v1

    mul-double v13, v13, v5

    .line 10
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    cmpg-double v19, v15, v17

    if-gez v19, :cond_9

    if-nez v7, :cond_8

    .line 11
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_8

    .line 12
    :cond_8
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_8

    .line 13
    :cond_9
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    cmpg-double v7, v15, v17

    if-gez v7, :cond_b

    if-nez v8, :cond_a

    .line 14
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_8

    .line 15
    :cond_a
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_8

    :cond_b
    cmpg-double v7, v1, v5

    if-gez v7, :cond_c

    .line 16
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_8

    :cond_c
    cmpg-double v7, v5, v1

    if-gez v7, :cond_d

    .line 17
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 18
    :cond_d
    :goto_8
    invoke-virtual {v9}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-virtual {v10}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 19
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 21
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_9

    :cond_e
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_9
    const/16 v4, 0x64

    invoke-virtual {v1, v0, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v0, "/"

    move-object/from16 v1, p1

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 23
    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    .line 24
    new-instance v1, Ljava/io/File;

    move-object/from16 v3, p0

    iget-object v4, v3, Lio/flutter/plugins/imagepicker/g;->a:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/scaled_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 26
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 27
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-object v1
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-object p1

    .line 1
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/imagepicker/g;->b(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Ljava/io/File;

    move-result-object p2

    .line 2
    iget-object p3, p0, Lio/flutter/plugins/imagepicker/g;->b:Lio/flutter/plugins/imagepicker/a;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lio/flutter/plugins/imagepicker/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
