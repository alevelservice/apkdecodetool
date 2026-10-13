.class public Lcom/alipay/mobile/security/bio/workspace/JsonBioParameterToBioApp;
.super Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;
.source "JsonBioParameterToBioApp.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/security/bio/workspace/BioTransfer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;-><init>(Landroid/content/Context;Lcom/alipay/mobile/security/bio/workspace/BioTransfer;)V

    return-void
.end method

.method private handleFcProtocolByJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->getContent()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;

    .line 3
    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;

    if-nez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getType()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    return-object v1

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getAndroidcfg()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    .line 7
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;->bioTransfer:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget v3, v3, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcStep:I

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;->bioTransfer:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    invoke-virtual {v0}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcToken:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;->bioTransfer:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-object v0, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->fcToken:Ljava/lang/String;

    const-string v3, "fcToken"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;->bioTransfer:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-object v0, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mRecordExtService:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    sget-object v3, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_ENTRY_SDK:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;->write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V

    const-string v0, "params"

    .line 12
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;->bioTransfer:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-object p1, p1, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mRecordExtService:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    sget-object v0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_GET_PARAM:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;->write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V

    .line 14
    invoke-virtual {p0, v2, v4}, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;->parseIDProtocol(Lcom/alibaba/fastjson/JSONObject;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    if-ne v3, p1, :cond_5

    .line 15
    invoke-virtual {p0, v2, v4}, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;->parseFaceProtocol(Lcom/alibaba/fastjson/JSONObject;Z)Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_0
    return-object v1
.end method


# virtual methods
.method public toBioApp(Lcom/alipay/mobile/security/bio/api/BioParameter;)Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    .locals 12

    if-eqz p1, :cond_10

    .line 1
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/bio/workspace/JsonBioParameterToBioApp;->handleFcProtocolByJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;->bioTransfer:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mIDFaceParam:Lcom/alipay/mobile/security/bio/api/BioParameter;

    .line 5
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;->bioTransfer:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iput-boolean v1, v0, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->isIDFaceFlag:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :goto_1
    move-object v0, v2

    .line 7
    :cond_0
    new-instance v2, Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-direct {v2}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;-><init>()V

    .line 8
    invoke-static {}, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;->getUniqueTag()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setTag(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->getRemoteURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setRemoteURL(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->getHeadImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setHeadImageURL(Ljava/lang/String;)V

    .line 12
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_7

    :cond_1
    const-string v3, "bid-log-key-public.key"

    const-string v4, "bid-log-key-public_t.key"

    .line 13
    :try_start_2
    const-class v5, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;

    invoke-static {v0, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;

    if-eqz v0, :cond_f

    .line 14
    invoke-virtual {v0}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->getContent()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto/16 :goto_7

    .line 15
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;->bioTransfer:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-boolean v5, v5, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->isIDFaceFlag:Z

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->getSign()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto/16 :goto_7

    .line 16
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->getContent()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;

    .line 17
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getAndroidcfg()Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 19
    new-instance v7, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;

    invoke-direct {v7}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;-><init>()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/alibaba/fastjson/f; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 20
    :cond_4
    :try_start_3
    const-class v7, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 21
    :catch_2
    :try_start_4
    new-instance v7, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;

    invoke-direct {v7}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;-><init>()V

    .line 22
    :goto_2
    iget-object v8, p0, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;->bioTransfer:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-boolean v8, v8, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->isIDFaceFlag:Z

    if-nez v8, :cond_6

    if-eqz v7, :cond_5

    .line 23
    invoke-virtual {v7}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->getEnv()I

    move-result v8

    if-nez v8, :cond_5

    .line 24
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;->bioTransfer:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-object v4, v4, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_3

    .line 25
    :cond_5
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;->bioTransfer:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-object v3, v3, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 26
    :goto_3
    invoke-virtual {v0}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->getSign()Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x8

    invoke-static {v4, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 27
    invoke-virtual {v0}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfig;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/security/bio/utils/RSASign;->doCheck([B[BLjava/io/InputStream;)Z

    move-result v0

    goto :goto_4

    :cond_6
    const/4 v0, 0x1

    .line 28
    :goto_4
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioType(I)V

    const-string v3, " "

    const-string v4, ""

    .line 29
    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\"ui\":992"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 30
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    .line 31
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getType()I

    move-result v3

    const/16 v4, 0x64

    const/16 v8, 0x3e0

    const/16 v9, 0x3df

    if-ne v3, v4, :cond_c

    if-eqz v7, :cond_c

    .line 32
    invoke-virtual {v7}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->getUi()I

    move-result v3

    const/16 v4, 0x12f

    const/16 v10, 0x12e

    if-nez v3, :cond_8

    .line 33
    invoke-virtual {v7}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->getNavigatepage()Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 34
    invoke-virtual {v7}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->getNavigatepage()Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 35
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v1

    if-ne v1, v10, :cond_7

    const/16 v1, -0x12e

    .line 36
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    goto/16 :goto_5

    .line 37
    :cond_7
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v1

    if-ne v1, v4, :cond_e

    const/16 v1, -0x12f

    .line 38
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    goto :goto_5

    .line 39
    :cond_8
    invoke-virtual {v7}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->getUi()I

    move-result v3

    if-ne v3, v9, :cond_a

    .line 40
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v1

    if-ne v1, v10, :cond_9

    .line 41
    invoke-virtual {v2, v9}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    goto :goto_5

    .line 42
    :cond_9
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v1

    if-ne v1, v4, :cond_e

    .line 43
    invoke-virtual {v2, v8}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    goto :goto_5

    .line 44
    :cond_a
    invoke-virtual {v7}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->getUi()I

    move-result v3

    if-ne v3, v1, :cond_e

    .line 45
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v1

    if-ne v1, v10, :cond_b

    const/16 v1, 0x3e1

    .line 46
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    goto :goto_5

    .line 47
    :cond_b
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v1

    if-ne v1, v4, :cond_e

    const/16 v1, 0x3e2

    .line 48
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    goto :goto_5

    .line 49
    :cond_c
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getType()I

    move-result v1

    const/16 v3, 0xc9

    if-ne v1, v3, :cond_e

    if-eqz v7, :cond_e

    .line 50
    invoke-virtual {v7}, Lcom/alipay/mobile/security/bio/workspace/ProtocolConfig;->getUi()I

    move-result v1

    if-ne v1, v9, :cond_e

    .line 51
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v1

    const/16 v3, 0x12c

    if-ne v1, v3, :cond_d

    .line 52
    invoke-virtual {v2, v9}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    goto :goto_5

    .line 53
    :cond_d
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getSampleMode()I

    move-result v1

    const/16 v3, 0x12d

    if-ne v1, v3, :cond_e

    .line 54
    invoke-virtual {v2, v8}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    .line 55
    :cond_e
    :goto_5
    invoke-virtual {v2, v6}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setCfg(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientConfigContent;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBistoken(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/workspace/BaseBioParameterToBioApp;->bioTransfer:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    iget-object v1, v1, Lcom/alipay/mobile/security/bio/workspace/BioTransfer;->mFcSpecialData:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setFcSpecialData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 58
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setSigned(Z)V

    .line 59
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->isAutoClose()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setAutoClose(Z)V

    .line 60
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBundle(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->getExtProperty()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioParameter;->getExtProperty()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/alibaba/fastjson/f; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    goto :goto_7

    :catch_4
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    goto :goto_7

    :catch_5
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    goto :goto_7

    :catch_6
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    :cond_f
    :goto_7
    return-object v2

    .line 67
    :cond_10
    new-instance p1, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    invoke-direct {p1}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>()V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method
