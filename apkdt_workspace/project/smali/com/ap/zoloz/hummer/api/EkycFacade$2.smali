.class Lcom/ap/zoloz/hummer/api/EkycFacade$2;
.super Ljava/lang/Object;
.source "EkycFacade.java"

# interfaces
.implements Lcom/ap/zoloz/hummer/common/IHummerCoreCallback;


# instance fields
.field final synthetic this$0:Lcom/ap/zoloz/hummer/api/EkycFacade;


# direct methods
.method constructor <init>(Lcom/ap/zoloz/hummer/api/EkycFacade;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ap/zoloz/hummer/api/EkycFacade$2;->this$0:Lcom/ap/zoloz/hummer/api/EkycFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/ap/zoloz/hummer/common/HummerContext;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ap/zoloz/hummer/api/EkycFacade$2;->this$0:Lcom/ap/zoloz/hummer/api/EkycFacade;

    iget-object v0, v0, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string v1, "currentTaskName"

    const-string v2, "context"

    const-string v3, "EkycFacade"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ap/zoloz/hummer/common/HummerContext;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/ap/zoloz/hummer/api/EkycResponse;

    invoke-direct {v0}, Lcom/ap/zoloz/hummer/api/EkycResponse;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/ap/zoloz/hummer/api/EkycFacade$2;->this$0:Lcom/ap/zoloz/hummer/api/EkycFacade;

    iput-object p1, v1, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    .line 4
    iget-object p1, v1, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    const-string v1, "hummer_response"

    invoke-virtual {p1, v1}, Lcom/ap/zoloz/hummer/common/HummerContext;->query(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ap/zoloz/hummer/common/HummerResponse;

    if-eqz p1, :cond_4

    .line 5
    iget-object v1, p1, Lcom/ap/zoloz/hummer/common/HummerResponse;->hummerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/ap/zoloz/hummer/api/EkycResponse;->eKYCId:Ljava/lang/String;

    .line 6
    iget v1, p1, Lcom/ap/zoloz/hummer/common/HummerResponse;->code:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3eb

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7d6

    if-eq v1, v2, :cond_1

    const/16 p1, 0xbb8

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iput p1, v0, Lcom/ap/zoloz/hummer/api/EkycResponse;->code:I

    const-string p1, "Z7005"

    .line 8
    iput-object p1, v0, Lcom/ap/zoloz/hummer/api/EkycResponse;->subCode:Ljava/lang/String;

    const-string p1, "Zoloz eKYC is pending"

    .line 9
    iput-object p1, v0, Lcom/ap/zoloz/hummer/api/EkycResponse;->result:Ljava/lang/String;

    goto :goto_1

    .line 10
    :cond_1
    iput v2, v0, Lcom/ap/zoloz/hummer/api/EkycResponse;->code:I

    .line 11
    :cond_2
    iget p1, p1, Lcom/ap/zoloz/hummer/common/HummerResponse;->code:I

    iput p1, v0, Lcom/ap/zoloz/hummer/api/EkycResponse;->code:I

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/ap/zoloz/hummer/api/EkycFacade$2;->this$0:Lcom/ap/zoloz/hummer/api/EkycFacade;

    iget-object p1, p1, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/ap/zoloz/hummer/common/HummerContext;->getLastZStackCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ap/zoloz/hummer/api/EkycResponse;->subCode:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/ap/zoloz/hummer/api/EkycFacade$2;->this$0:Lcom/ap/zoloz/hummer/api/EkycFacade;

    iget-object p1, p1, Lcom/ap/zoloz/hummer/api/BaseFacade;->mHummerContext:Lcom/ap/zoloz/hummer/common/HummerContext;

    invoke-virtual {p1}, Lcom/ap/zoloz/hummer/common/HummerContext;->getZStack()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ap/zoloz/hummer/api/EkycResponse;->result:Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_3
    iput v2, v0, Lcom/ap/zoloz/hummer/api/EkycResponse;->code:I

    const-string p1, "Z7003"

    .line 16
    iput-object p1, v0, Lcom/ap/zoloz/hummer/api/EkycResponse;->subCode:Ljava/lang/String;

    const-string p1, "Zoloz eKYC success"

    .line 17
    iput-object p1, v0, Lcom/ap/zoloz/hummer/api/EkycResponse;->result:Ljava/lang/String;

    .line 18
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/ap/zoloz/hummer/api/EkycFacade$2;->this$0:Lcom/ap/zoloz/hummer/api/EkycFacade;

    invoke-static {p1, v0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->access$100(Lcom/ap/zoloz/hummer/api/EkycFacade;Lcom/ap/zoloz/hummer/api/EkycResponse;)V

    return-void
.end method
