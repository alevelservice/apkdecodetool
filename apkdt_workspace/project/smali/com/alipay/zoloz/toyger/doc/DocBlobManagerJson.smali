.class public Lcom/alipay/zoloz/toyger/doc/DocBlobManagerJson;
.super Lcom/alipay/zoloz/toyger/doc/DocBlobManager;
.source "DocBlobManagerJson.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;-><init>(Lcom/alipay/zoloz/toyger/doc/ToygerDocBlobConfig;)V

    return-void
.end method

.method private generateMeta(Ljava/util/List;Ljava/util/Map;)Lcom/alipay/zoloz/toyger/blob/Meta;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/zoloz/toyger/doc/ToygerDocInfo;",
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

    const-string v0, "zdoc"

    .line 2
    iput-object v0, p1, Lcom/alipay/zoloz/toyger/blob/Meta;->type:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p1, Lcom/alipay/zoloz/toyger/blob/Meta;->serialize:I

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/alipay/zoloz/toyger/blob/Meta;->collectInfo:Ljava/util/Map;

    .line 5
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/blob/Meta;->collectInfo:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->getDocType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "docType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/blob/Meta;->collectInfo:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->getPageNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pageNo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/blob/Meta;->collectInfo:Ljava/util/Map;

    iget-wide v1, p0, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->picSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "picSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 8
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 9
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/blob/Meta;->collectInfo:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public generateBlob(Ljava/util/List;Ljava/util/Map;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/zoloz/toyger/doc/ToygerDocInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "1.0"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/zoloz/toyger/doc/ToygerDocInfo;

    .line 3
    new-instance v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;

    invoke-direct {v4}, Lcom/alipay/zoloz/toyger/blob/BlobElem;-><init>()V

    const-string v5, "doc"

    .line 4
    iput-object v5, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->type:Ljava/lang/String;

    const-string v5, "docimage"

    .line 5
    iput-object v5, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->subType:Ljava/lang/String;

    .line 6
    iput-object v3, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->version:Ljava/lang/String;

    const/4 v3, 0x0

    .line 7
    iput v3, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->idx:I

    .line 8
    iget-object v2, v2, Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    iget-object v3, p0, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/zoloz/toyger/blob/BlobManager;->processFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Landroid/graphics/Rect;)[B

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->content:[B

    .line 9
    iget-object v2, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->content:[B

    if-eqz v2, :cond_0

    .line 10
    array-length v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->picSize:J

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    .line 11
    iput-wide v2, p0, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->picSize:J

    .line 12
    :goto_1
    new-instance v2, Lcom/alipay/zoloz/toyger/blob/DocInfo;

    invoke-direct {v2}, Lcom/alipay/zoloz/toyger/blob/DocInfo;-><init>()V

    iput-object v2, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->docInfo:Lcom/alipay/zoloz/toyger/blob/DocInfo;

    .line 13
    iget-object v2, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->docInfo:Lcom/alipay/zoloz/toyger/blob/DocInfo;

    invoke-virtual {p0}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->getDocType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/zoloz/toyger/blob/DocInfo;->docType:Ljava/lang/String;

    .line 14
    iget-object v2, v4, Lcom/alipay/zoloz/toyger/blob/BlobElem;->docInfo:Lcom/alipay/zoloz/toyger/blob/DocInfo;

    invoke-virtual {p0}, Lcom/alipay/zoloz/toyger/doc/DocBlobManager;->getPageNum()I

    move-result v3

    iput v3, v2, Lcom/alipay/zoloz/toyger/blob/DocInfo;->pageNo:I

    .line 15
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alipay/zoloz/toyger/doc/DocBlobManagerJson;->generateMeta(Ljava/util/List;Ljava/util/Map;)Lcom/alipay/zoloz/toyger/blob/Meta;

    move-result-object p1

    .line 17
    new-instance p2, Lcom/alipay/zoloz/toyger/blob/Blob;

    invoke-direct {p2}, Lcom/alipay/zoloz/toyger/blob/Blob;-><init>()V

    .line 18
    iput-object v0, p2, Lcom/alipay/zoloz/toyger/blob/Blob;->blobElem:Ljava/util/List;

    .line 19
    iput-object v3, p2, Lcom/alipay/zoloz/toyger/blob/Blob;->blobVersion:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/alipay/zoloz/toyger/blob/Content;

    invoke-direct {v0}, Lcom/alipay/zoloz/toyger/blob/Content;-><init>()V

    .line 21
    iput-object p2, v0, Lcom/alipay/zoloz/toyger/blob/Content;->blob:Lcom/alipay/zoloz/toyger/blob/Blob;

    .line 22
    iput-object p1, v0, Lcom/alipay/zoloz/toyger/blob/Content;->meta:Lcom/alipay/zoloz/toyger/blob/Meta;

    .line 23
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public isUTF8()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
