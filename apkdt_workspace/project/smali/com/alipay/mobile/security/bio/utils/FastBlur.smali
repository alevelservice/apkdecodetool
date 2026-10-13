.class public Lcom/alipay/mobile/security/bio/utils/FastBlur;
.super Ljava/lang/Object;
.source "FastBlur.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 36

    move/from16 v0, p1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radius:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move-object/from16 v3, p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-virtual {v4, v3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int v14, v12, v13

    .line 5
    new-array v15, v14, [I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move-object v5, v15

    move v7, v12

    move v10, v12

    move v11, v13

    .line 6
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v4, v12, -0x1

    add-int/lit8 v5, v13, -0x1

    add-int v6, v0, v0

    add-int/2addr v6, v1

    .line 7
    new-array v7, v14, [I

    .line 8
    new-array v8, v14, [I

    .line 9
    new-array v9, v14, [I

    .line 10
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [I

    add-int/lit8 v11, v6, 0x1

    shr-int/2addr v11, v1

    .line 11
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " div:"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " divsum:"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    mul-int v11, v11, v11

    mul-int/lit16 v2, v11, 0x100

    .line 12
    new-array v14, v2, [I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 13
    div-int v17, v1, v11

    aput v17, v14, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    .line 14
    filled-new-array {v6, v1}, [I

    move-result-object v1

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    add-int/lit8 v2, v0, 0x1

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_2
    const/16 v19, 0x2

    if-ge v11, v13, :cond_7

    move-object/from16 p2, v3

    neg-int v3, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_3
    const v29, 0xff00

    const/high16 v30, 0xff0000

    if-gt v3, v0, :cond_4

    move/from16 v32, v5

    move/from16 v31, v13

    const/4 v13, 0x0

    .line 15
    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v5, v17, v5

    aget v5, v15, v5

    add-int v33, v3, v0

    .line 16
    aget-object v33, v1, v33

    and-int v30, v5, v30

    shr-int/lit8 v30, v30, 0x10

    .line 17
    aput v30, v33, v13

    and-int v29, v5, v29

    shr-int/lit8 v29, v29, 0x8

    const/16 v16, 0x1

    .line 18
    aput v29, v33, v16

    and-int/lit16 v5, v5, 0xff

    .line 19
    aput v5, v33, v19

    .line 20
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v5, v2, v5

    .line 21
    aget v29, v33, v13

    mul-int v29, v29, v5

    add-int v20, v20, v29

    .line 22
    aget v29, v33, v16

    mul-int v29, v29, v5

    add-int v21, v21, v29

    .line 23
    aget v29, v33, v19

    mul-int v29, v29, v5

    add-int v22, v22, v29

    if-lez v3, :cond_3

    .line 24
    aget v5, v33, v13

    add-int v26, v26, v5

    .line 25
    aget v5, v33, v16

    add-int v27, v27, v5

    .line 26
    aget v5, v33, v19

    add-int v28, v28, v5

    goto :goto_4

    .line 27
    :cond_3
    aget v5, v33, v13

    add-int v23, v23, v5

    .line 28
    aget v5, v33, v16

    add-int v24, v24, v5

    .line 29
    aget v5, v33, v19

    add-int v25, v25, v5

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v13, v31

    move/from16 v5, v32

    goto :goto_3

    :cond_4
    move/from16 v32, v5

    move/from16 v31, v13

    move v5, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v12, :cond_6

    .line 30
    aget v13, v14, v20

    aput v13, v7, v17

    .line 31
    aget v13, v14, v21

    aput v13, v8, v17

    .line 32
    aget v13, v14, v22

    aput v13, v9, v17

    sub-int v20, v20, v23

    sub-int v21, v21, v24

    sub-int v22, v22, v25

    sub-int v13, v5, v0

    add-int/2addr v13, v6

    .line 33
    rem-int/2addr v13, v6

    aget-object v13, v1, v13

    const/16 v33, 0x0

    .line 34
    aget v34, v13, v33

    sub-int v23, v23, v34

    const/16 v16, 0x1

    .line 35
    aget v33, v13, v16

    sub-int v24, v24, v33

    .line 36
    aget v33, v13, v19

    sub-int v25, v25, v33

    if-nez v11, :cond_5

    add-int v33, v3, v0

    move-object/from16 v34, v14

    add-int/lit8 v14, v33, 0x1

    .line 37
    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    aput v14, v10, v3

    goto :goto_6

    :cond_5
    move-object/from16 v34, v14

    .line 38
    :goto_6
    aget v14, v10, v3

    add-int v14, v18, v14

    aget v14, v15, v14

    and-int v33, v14, v30

    shr-int/lit8 v33, v33, 0x10

    const/16 v35, 0x0

    .line 39
    aput v33, v13, v35

    and-int v33, v14, v29

    shr-int/lit8 v33, v33, 0x8

    const/16 v16, 0x1

    .line 40
    aput v33, v13, v16

    and-int/lit16 v14, v14, 0xff

    .line 41
    aput v14, v13, v19

    .line 42
    aget v14, v13, v35

    add-int v26, v26, v14

    .line 43
    aget v14, v13, v16

    add-int v27, v27, v14

    .line 44
    aget v13, v13, v19

    add-int v28, v28, v13

    add-int v20, v20, v26

    add-int v21, v21, v27

    add-int v22, v22, v28

    add-int/lit8 v5, v5, 0x1

    .line 45
    rem-int/2addr v5, v6

    .line 46
    rem-int v13, v5, v6

    aget-object v13, v1, v13

    const/4 v14, 0x0

    .line 47
    aget v33, v13, v14

    add-int v23, v23, v33

    const/16 v16, 0x1

    .line 48
    aget v33, v13, v16

    add-int v24, v24, v33

    .line 49
    aget v33, v13, v19

    add-int v25, v25, v33

    .line 50
    aget v33, v13, v14

    sub-int v26, v26, v33

    .line 51
    aget v14, v13, v16

    sub-int v27, v27, v14

    .line 52
    aget v13, v13, v19

    sub-int v28, v28, v13

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v14, v34

    goto/16 :goto_5

    :cond_6
    move-object/from16 v34, v14

    add-int v18, v18, v12

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p2

    move/from16 v13, v31

    move/from16 v5, v32

    goto/16 :goto_2

    :cond_7
    move-object/from16 p2, v3

    move/from16 v32, v5

    move/from16 v31, v13

    move-object/from16 v34, v14

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v12, :cond_d

    neg-int v4, v0

    mul-int v5, v4, v12

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_8
    if-gt v4, v0, :cond_a

    move-object/from16 v24, v10

    const/4 v10, 0x0

    .line 53
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v25

    add-int v25, v25, v3

    add-int v26, v4, v0

    .line 54
    aget-object v26, v1, v26

    .line 55
    aget v27, v7, v25

    aput v27, v26, v10

    .line 56
    aget v10, v8, v25

    const/16 v16, 0x1

    aput v10, v26, v16

    .line 57
    aget v10, v9, v25

    aput v10, v26, v19

    .line 58
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    sub-int v10, v2, v10

    .line 59
    aget v27, v7, v25

    mul-int v27, v27, v10

    add-int v11, v11, v27

    .line 60
    aget v27, v8, v25

    mul-int v27, v27, v10

    add-int v13, v13, v27

    .line 61
    aget v25, v9, v25

    mul-int v25, v25, v10

    add-int v14, v14, v25

    if-lez v4, :cond_8

    const/4 v10, 0x0

    .line 62
    aget v25, v26, v10

    add-int v21, v21, v25

    const/16 v16, 0x1

    .line 63
    aget v25, v26, v16

    add-int v22, v22, v25

    .line 64
    aget v25, v26, v19

    add-int v23, v23, v25

    goto :goto_9

    :cond_8
    const/4 v10, 0x0

    const/16 v16, 0x1

    .line 65
    aget v25, v26, v10

    add-int v17, v17, v25

    .line 66
    aget v10, v26, v16

    add-int v18, v18, v10

    .line 67
    aget v10, v26, v19

    add-int v20, v20, v10

    :goto_9
    move/from16 v10, v32

    if-ge v4, v10, :cond_9

    add-int/2addr v5, v12

    :cond_9
    add-int/lit8 v4, v4, 0x1

    move/from16 v32, v10

    move-object/from16 v10, v24

    goto :goto_8

    :cond_a
    move-object/from16 v24, v10

    move/from16 v10, v32

    move v5, v3

    move/from16 v25, v22

    move/from16 v26, v23

    const/4 v4, 0x0

    move/from16 v22, v0

    move/from16 v23, v21

    move/from16 v21, v20

    move/from16 v20, v18

    move/from16 v18, v17

    move/from16 v17, v14

    move v14, v13

    move v13, v11

    move/from16 v11, v31

    :goto_a
    if-ge v4, v11, :cond_c

    const/high16 v27, -0x1000000

    .line 68
    aget v28, v15, v5

    and-int v27, v28, v27

    aget v28, v34, v13

    shl-int/lit8 v28, v28, 0x10

    or-int v27, v27, v28

    aget v28, v34, v14

    shl-int/lit8 v28, v28, 0x8

    or-int v27, v27, v28

    aget v28, v34, v17

    or-int v27, v27, v28

    aput v27, v15, v5

    sub-int v13, v13, v18

    sub-int v14, v14, v20

    sub-int v17, v17, v21

    sub-int v27, v22, v0

    add-int v27, v27, v6

    .line 69
    rem-int v27, v27, v6

    aget-object v27, v1, v27

    const/16 v28, 0x0

    .line 70
    aget v29, v27, v28

    sub-int v18, v18, v29

    const/16 v16, 0x1

    .line 71
    aget v28, v27, v16

    sub-int v20, v20, v28

    .line 72
    aget v28, v27, v19

    sub-int v21, v21, v28

    if-nez v3, :cond_b

    add-int v0, v4, v2

    .line 73
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v12

    aput v0, v24, v4

    .line 74
    :cond_b
    aget v0, v24, v4

    add-int/2addr v0, v3

    .line 75
    aget v28, v7, v0

    const/16 v29, 0x0

    aput v28, v27, v29

    .line 76
    aget v28, v8, v0

    const/16 v16, 0x1

    aput v28, v27, v16

    .line 77
    aget v0, v9, v0

    aput v0, v27, v19

    .line 78
    aget v0, v27, v29

    add-int v23, v23, v0

    .line 79
    aget v0, v27, v16

    add-int v25, v25, v0

    .line 80
    aget v0, v27, v19

    add-int v26, v26, v0

    add-int v13, v13, v23

    add-int v14, v14, v25

    add-int v17, v17, v26

    add-int/lit8 v22, v22, 0x1

    .line 81
    rem-int v22, v22, v6

    .line 82
    aget-object v0, v1, v22

    const/16 v27, 0x0

    .line 83
    aget v28, v0, v27

    add-int v18, v18, v28

    const/16 v16, 0x1

    .line 84
    aget v28, v0, v16

    add-int v20, v20, v28

    .line 85
    aget v28, v0, v19

    add-int v21, v21, v28

    .line 86
    aget v28, v0, v27

    sub-int v23, v23, v28

    .line 87
    aget v28, v0, v16

    sub-int v25, v25, v28

    .line 88
    aget v0, v0, v19

    sub-int v26, v26, v0

    add-int/2addr v5, v12

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p1

    goto/16 :goto_a

    :cond_c
    const/16 v16, 0x1

    const/16 v27, 0x0

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p1

    move/from16 v32, v10

    move/from16 v31, v11

    move-object/from16 v10, v24

    goto/16 :goto_7

    :cond_d
    move/from16 v11, v31

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p2

    move-object v5, v15

    move v7, v12

    move v10, v12

    .line 89
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p2
.end method
