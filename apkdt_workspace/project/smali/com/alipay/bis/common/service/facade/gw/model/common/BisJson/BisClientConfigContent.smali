.class public Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;
.super Ljava/lang/Object;
.source "BisClientConfigContent.java"


# instance fields
.field private androidcfg:Ljava/lang/String;

.field private ioscfg:Ljava/lang/String;

.field private sampleMode:I

.field private token:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidcfg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->androidcfg:Ljava/lang/String;

    return-object v0
.end method

.method public getIoscfg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->ioscfg:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->sampleMode:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->type:I

    return v0
.end method

.method public setAndroidcfg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->androidcfg:Ljava/lang/String;

    return-void
.end method

.method public setIoscfg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->ioscfg:Ljava/lang/String;

    return-void
.end method

.method public setSampleMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->sampleMode:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->token:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->type:I

    return-void
.end method
