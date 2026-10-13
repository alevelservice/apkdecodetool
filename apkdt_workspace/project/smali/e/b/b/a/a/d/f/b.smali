.class Le/b/b/a/a/d/f/b;
.super Landroid/content/BroadcastReceiver;
.source "LogLifecycleCallback.java"


# instance fields
.field final synthetic a:Le/b/b/a/a/d/f/a;


# direct methods
.method constructor <init>(Le/b/b/a/a/d/f/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/b/a/a/d/f/b;->a:Le/b/b/a/a/d/f/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Le/b/b/a/a/d/f/b;->a:Le/b/b/a/a/d/f/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Le/b/b/a/a/d/f/a;->a(Le/b/b/a/a/d/f/a;Z)V

    :cond_1
    return-void
.end method
