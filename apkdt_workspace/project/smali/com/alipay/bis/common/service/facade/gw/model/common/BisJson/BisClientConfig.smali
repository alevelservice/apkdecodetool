.class public Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;
.super Ljava/lang/Object;
.source "BisClientConfig.java"


# instance fields
.field private content:Ljava/lang/String;

.field private sign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->sign:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->content:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->sign:Ljava/lang/String;

    return-void
.end method
