.class Lcom/ap/zoloz/hummer/common/HummerCore$5;
.super Ljava/lang/Object;
.source "HummerCore.java"

# interfaces
.implements Lcom/ap/zoloz/hummer/rpc/IRpcCallback;


# instance fields
.field final synthetic this$0:Lcom/ap/zoloz/hummer/common/HummerCore;


# direct methods
.method constructor <init>(Lcom/ap/zoloz/hummer/common/HummerCore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ap/zoloz/hummer/common/HummerCore$5;->this$0:Lcom/ap/zoloz/hummer/common/HummerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/ap/zoloz/hummer/rpc/RpcResponse;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ap/zoloz/hummer/common/HummerCore$5;->this$0:Lcom/ap/zoloz/hummer/common/HummerCore;

    invoke-static {p1}, Lcom/ap/zoloz/hummer/common/HummerCore;->access$500(Lcom/ap/zoloz/hummer/common/HummerCore;)V

    return-void
.end method
