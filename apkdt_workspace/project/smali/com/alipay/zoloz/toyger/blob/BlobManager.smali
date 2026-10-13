.class public abstract Lcom/alipay/zoloz/toyger/blob/BlobManager;
.super Ljava/lang/Object;
.source "BlobManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Info:",
        "Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BlobManager"


# instance fields
.field protected config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;

.field protected crypto:Lcom/alipay/zoloz/toyger/blob/CryptoManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFrameMode(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)I
    .locals 1

    .line 1
    iget p1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameMode:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public abstract generateBlob(Ljava/util/List;Ljava/util/Map;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TInfo;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation
.end method

.method public abstract getKey()[B
.end method

.method public abstract isUTF8()Z
.end method

.method protected processFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;

    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;->getDesiredWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;

    invoke-virtual {v1}, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;->getCompressRate()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alipay/zoloz/toyger/blob/BlobManager;->processFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;IILandroid/graphics/Rect;)[B

    move-result-object p1

    return-object p1
.end method

.method protected final processFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;IILandroid/graphics/Rect;)[B
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 3
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 4
    :cond_0
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 6
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B

    .line 7
    iget-object v1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/zoloz/toyger/blob/BlobManager;->getFrameMode(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)I

    move-result v1

    if-gez v1, :cond_2

    goto/16 :goto_9

    .line 9
    :cond_2
    iget-object v2, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->data:[B

    iget v3, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->width:I

    iget v4, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->height:I

    invoke-static {v2, v3, v4, v1}, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->bytes2Bitmap([BIII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    move-object p1, v0

    move-object p2, p1

    :goto_0
    move-object p3, p2

    goto/16 :goto_a

    .line 10
    :cond_3
    iget p1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->rotation:I

    invoke-static {v1, p1}, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4

    move-object p2, v0

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_5

    goto :goto_4

    .line 12
    :cond_5
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    .line 13
    :cond_6
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p4, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    if-gez v3, :cond_7

    const/4 v3, 0x0

    :cond_7
    iget v5, p4, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_8

    goto :goto_1

    :cond_8
    move v4, v5

    :goto_1
    iget v5, p4, Landroid/graphics/Rect;->right:I

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    goto :goto_2

    :cond_9
    iget v5, p4, Landroid/graphics/Rect;->right:I

    :goto_2
    iget v6, p4, Landroid/graphics/Rect;->bottom:I

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_a

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    goto :goto_3

    :cond_a
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    :goto_3
    invoke-direct {v2, v3, v4, v5, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 16
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p4

    if-lez p4, :cond_c

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p4

    if-gtz p4, :cond_b

    goto :goto_4

    .line 17
    :cond_b
    invoke-static {p1, v2}, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_5

    :cond_c
    :goto_4
    move-object p4, p1

    .line 18
    :goto_5
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v2, p2, :cond_d

    if-lez p2, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 19
    :goto_6
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eq p2, v2, :cond_e

    .line 20
    invoke-static {p4, p2}, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->resize(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_7

    :cond_e
    move-object p2, p4

    :goto_7
    if-nez p2, :cond_f

    goto :goto_8

    .line 21
    :cond_f
    invoke-static {p2, p3}, Lcom/alipay/zoloz/toyger/blob/BitmapHelper;->bitmapToByteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object p3

    if-nez p3, :cond_10

    goto :goto_8

    .line 22
    :cond_10
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->crypto:Lcom/alipay/zoloz/toyger/blob/CryptoManager;

    invoke-virtual {v2, p3}, Lcom/alipay/zoloz/toyger/blob/CryptoManager;->encrypt([B)[B

    move-result-object p3

    if-nez p3, :cond_11

    :goto_8
    move-object p3, v0

    :cond_11
    move-object v0, p4

    goto :goto_a

    :cond_12
    :goto_9
    move-object p1, v0

    move-object p2, p1

    move-object p3, p2

    move-object v1, p3

    :goto_a
    if-eqz v1, :cond_13

    .line 23
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_13
    if-eqz v0, :cond_14

    if-eq v0, p1, :cond_14

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_14
    if-eqz p1, :cond_15

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_15
    if-eqz p2, :cond_16

    .line 26
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_16
    return-object p3
.end method

.method protected processFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Landroid/graphics/Rect;)[B
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;

    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;->getDesiredWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;

    invoke-virtual {v1}, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;->getCompressRate()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/alipay/zoloz/toyger/blob/BlobManager;->processFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;IILandroid/graphics/Rect;)[B

    move-result-object p1

    return-object p1
.end method
