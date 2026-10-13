.class Lcom/google/firebase/iid/y$a;
.super Landroid/content/BroadcastReceiver;
.source "com.google.firebase:firebase-iid@@21.0.1"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/firebase/iid/y;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/y$a;->a:Lcom/google/firebase/iid/y;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->m()Z

    move-result v0

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 3
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/iid/y$a;->a:Lcom/google/firebase/iid/y;

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/iid/y;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/google/firebase/iid/y$a;->a:Lcom/google/firebase/iid/y;

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/iid/y;->b()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->m()Z

    move-result p1

    .line 3
    iget-object p1, p0, Lcom/google/firebase/iid/y$a;->a:Lcom/google/firebase/iid/y;

    .line 4
    invoke-static {p1}, Lcom/google/firebase/iid/y;->a(Lcom/google/firebase/iid/y;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/iid/y$a;->a:Lcom/google/firebase/iid/y;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lcom/google/firebase/iid/y$a;->a:Lcom/google/firebase/iid/y;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/iid/y;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/iid/y$a;->a:Lcom/google/firebase/iid/y;

    return-void
.end method
