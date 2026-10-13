.class Lcom/zoloz/builder/plugin/HummerIdentityLite$1;
.super Ljava/lang/Object;
.source "HummerIdentityLite.java"

# interfaces
.implements Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;


# instance fields
.field final synthetic this$0:Lcom/zoloz/builder/plugin/HummerIdentityLite;

.field final synthetic val$bridgeContext:Lcom/zoloz/webcontainer/a/b;


# direct methods
.method constructor <init>(Lcom/zoloz/builder/plugin/HummerIdentityLite;Lcom/zoloz/webcontainer/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/builder/plugin/HummerIdentityLite$1;->this$0:Lcom/zoloz/builder/plugin/HummerIdentityLite;

    iput-object p2, p0, Lcom/zoloz/builder/plugin/HummerIdentityLite$1;->val$bridgeContext:Lcom/zoloz/webcontainer/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/builder/plugin/HummerIdentityLite$1;->val$bridgeContext:Lcom/zoloz/webcontainer/a/b;

    invoke-interface {v0, p1}, Lcom/zoloz/webcontainer/a/b;->a(Lcom/alibaba/fastjson/JSONObject;)Z

    return-void
.end method
