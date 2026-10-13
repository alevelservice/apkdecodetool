.class Ltop/xy12/codetransporter/service/HeartbeatService$1;
.super Ljava/util/TimerTask;
.source "HeartbeatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/xy12/codetransporter/service/HeartbeatService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/xy12/codetransporter/service/HeartbeatService;


# direct methods
.method constructor <init>(Ltop/xy12/codetransporter/service/HeartbeatService;)V
    .locals 0

    .line 52
    iput-object p1, p0, Ltop/xy12/codetransporter/service/HeartbeatService$1;->this$0:Ltop/xy12/codetransporter/service/HeartbeatService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "SmsReceiver"

    const-string v1, "newScheduledThreadPool"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    iget-object v1, p0, Ltop/xy12/codetransporter/service/HeartbeatService$1;->this$0:Ltop/xy12/codetransporter/service/HeartbeatService;

    invoke-static {v1}, Ltop/xy12/codetransporter/page/MainActivity;->getSim(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const-string v2, "phoneList"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
