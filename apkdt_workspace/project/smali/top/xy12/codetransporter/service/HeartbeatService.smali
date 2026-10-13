.class public Ltop/xy12/codetransporter/service/HeartbeatService;
.super Landroid/app/Service;
.source "HeartbeatService.java"


# instance fields
.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "SmsReceiver"

    const-string v1, "\u670d\u52a1\u542f\u52a8"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 91
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "SmsReceiver"

    const-string v1, "\u670d\u52a1\u505c\u6b62"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const-string v0, "SmsReceiver"

    const-string v1, "onStartCommand"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Ltop/xy12/codetransporter/service/HeartbeatService;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Ltop/xy12/codetransporter/service/HeartbeatService;->timer:Ljava/util/Timer;

    .line 52
    new-instance v2, Ltop/xy12/codetransporter/service/HeartbeatService$1;

    invoke-direct {v2, p0}, Ltop/xy12/codetransporter/service/HeartbeatService$1;-><init>(Ltop/xy12/codetransporter/service/HeartbeatService;)V

    iput-object v2, p0, Ltop/xy12/codetransporter/service/HeartbeatService;->timerTask:Ljava/util/TimerTask;

    .line 83
    iget-object v1, p0, Ltop/xy12/codetransporter/service/HeartbeatService;->timer:Ljava/util/Timer;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x2710

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 86
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
