.class public abstract Lcom/alipay/zoloz/toyger/face/FaceBlobManager;
.super Lcom/alipay/zoloz/toyger/blob/BlobManager;
.source "FaceBlobManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/zoloz/toyger/blob/BlobManager<",
        "Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;",
        ">;"
    }
.end annotation


# static fields
.field protected static final MONITOR_COMPRESS_RATE:I = 0xf

.field protected static final MONITOR_IMAGE_WIDTH:I = 0xa0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/zoloz/toyger/blob/BlobManager;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/face/ToygerFaceBlobConfig;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/alipay/zoloz/toyger/blob/BlobManager;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->config:Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;

    .line 4
    new-instance v0, Lcom/alipay/zoloz/toyger/blob/CryptoManager;

    iget-object p1, p1, Lcom/alipay/zoloz/toyger/algorithm/ToygerBlobConfig;->pubkey:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/alipay/zoloz/toyger/blob/CryptoManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->crypto:Lcom/alipay/zoloz/toyger/blob/CryptoManager;

    return-void
.end method

.method public static convertFaceRegion(Landroid/graphics/RectF;IIIZ)Landroid/graphics/Rect;
    .locals 0

    .line 1
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget p4, p0, Landroid/graphics/RectF;->left:F

    int-to-float p1, p1

    mul-float p4, p4, p1

    float-to-int p4, p4

    iput p4, p3, Landroid/graphics/Rect;->left:I

    .line 3
    iget p4, p0, Landroid/graphics/RectF;->right:F

    mul-float p4, p4, p1

    float-to-int p1, p4

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 4
    iget p1, p0, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p3, Landroid/graphics/Rect;->top:I

    .line 5
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float p0, p0, p2

    float-to-int p0, p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    return-object p3
.end method


# virtual methods
.method public abstract generateBlob(Ljava/util/List;Ljava/util/Map;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation
.end method

.method protected getBlobElemType(Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    iget p1, p1, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;->frameType:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string p1, "Depth"

    return-object p1

    :cond_1
    const-string p1, "Dark"

    return-object p1

    :cond_2
    const-string p1, "Pano"

    return-object p1
.end method

.method public getKey()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->crypto:Lcom/alipay/zoloz/toyger/blob/CryptoManager;

    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/blob/CryptoManager;->getAESCypher()[B

    move-result-object v0

    return-object v0
.end method

.method public abstract isUTF8()Z
.end method
