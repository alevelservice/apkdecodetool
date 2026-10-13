.class public Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerJSON;
.super Lcom/alipay/zoloz/toyger/blob/BlobManager;
.source "GenericBlobManagerJSON.java"

# interfaces
.implements Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerInterface;


# instance fields
.field private mMonitorBlobElems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/zoloz/toyger/blob/BlobElem;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/zoloz/toyger/blob/BlobManager;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerJSON;->type:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/alipay/zoloz/toyger/blob/CryptoManager;

    invoke-direct {p1, p2}, Lcom/alipay/zoloz/toyger/blob/CryptoManager;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->crypto:Lcom/alipay/zoloz/toyger/blob/CryptoManager;

    return-void
.end method

.method private generateMeta(Ljava/util/List;Ljava/util/Map;)Lcom/alipay/zoloz/toyger/blob/Meta;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/zoloz/toyger/face/ToygerFaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alipay/zoloz/toyger/blob/Meta;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/alipay/zoloz/toyger/blob/Meta;

    invoke-direct {p1}, Lcom/alipay/zoloz/toyger/blob/Meta;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerJSON;->type:Ljava/lang/String;

    const-string v1, "face"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zface"

    .line 3
    iput-object v0, p1, Lcom/alipay/zoloz/toyger/blob/Meta;->type:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "zdoc"

    .line 4
    iput-object v0, p1, Lcom/alipay/zoloz/toyger/blob/Meta;->type:Ljava/lang/String;

    .line 5
    :goto_0
    iput-object p2, p1, Lcom/alipay/zoloz/toyger/blob/Meta;->score:Ljava/util/Map;

    const/4 p2, 0x1

    .line 6
    iput p2, p1, Lcom/alipay/zoloz/toyger/blob/Meta;->serialize:I

    .line 7
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p1, Lcom/alipay/zoloz/toyger/blob/Meta;->collectInfo:Ljava/util/Map;

    return-object p1
.end method

.method private generateMonitorBlobElem(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)Lcom/alipay/zoloz/toyger/blob/BlobElem;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/16 v1, 0xa0

    const/16 v2, 0xf

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/alipay/zoloz/toyger/blob/BlobManager;->processFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;IILandroid/graphics/Rect;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;

    invoke-direct {v0}, Lcom/alipay/zoloz/toyger/blob/BlobElem;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerJSON;->type:Ljava/lang/String;

    const-string v2, "face"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iput-object v2, v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->type:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "doc"

    .line 5
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->type:Ljava/lang/String;

    :goto_0
    const-string v1, "Surveillance"

    .line 6
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->subType:Ljava/lang/String;

    const-string v1, "1.0"

    .line 7
    iput-object v1, v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->version:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerJSON;->mMonitorBlobElems:Ljava/util/List;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->idx:I

    .line 9
    iput-object p1, v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->content:[B

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "monitor image length:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/alipay/zoloz/toyger/blob/BlobElem;->content:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addMonitorFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerJSON;->generateMonitorBlobElem(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)Lcom/alipay/zoloz/toyger/blob/BlobElem;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerJSON;->mMonitorBlobElems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerJSON;->mMonitorBlobElems:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerJSON;->mMonitorBlobElems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public cleanAllData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerJSON;->mMonitorBlobElems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public generateBlob(Ljava/util/List;Ljava/util/Map;)[B
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "method is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateMonitorBlob()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerJSON;->mMonitorBlobElems:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerJSON;->generateMeta(Ljava/util/List;Ljava/util/Map;)Lcom/alipay/zoloz/toyger/blob/Meta;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/alipay/zoloz/toyger/blob/Blob;

    invoke-direct {v1}, Lcom/alipay/zoloz/toyger/blob/Blob;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerJSON;->mMonitorBlobElems:Ljava/util/List;

    iput-object v2, v1, Lcom/alipay/zoloz/toyger/blob/Blob;->blobElem:Ljava/util/List;

    const-string v2, "1.0"

    .line 5
    iput-object v2, v1, Lcom/alipay/zoloz/toyger/blob/Blob;->blobVersion:Ljava/lang/String;

    .line 6
    new-instance v2, Lcom/alipay/zoloz/toyger/blob/Content;

    invoke-direct {v2}, Lcom/alipay/zoloz/toyger/blob/Content;-><init>()V

    .line 7
    iput-object v1, v2, Lcom/alipay/zoloz/toyger/blob/Content;->blob:Lcom/alipay/zoloz/toyger/blob/Blob;

    .line 8
    iput-object v0, v2, Lcom/alipay/zoloz/toyger/blob/Content;->meta:Lcom/alipay/zoloz/toyger/blob/Meta;

    .line 9
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/alipay/zoloz/toyger/blob/GenericBlobManagerJSON;->mMonitorBlobElems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getKey()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/toyger/blob/BlobManager;->crypto:Lcom/alipay/zoloz/toyger/blob/CryptoManager;

    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/blob/CryptoManager;->getAESCypher()[B

    move-result-object v0

    return-object v0
.end method

.method public isUTF8()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
