.class public Lcom/google/firebase/iid/WithinAppServiceBinder;
.super Landroid/os/Binder;
.source "com.google.firebase:firebase-iid@@21.0.1"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/WithinAppServiceBinder$a;
    }
.end annotation


# instance fields
.field private final e:Lcom/google/firebase/iid/WithinAppServiceBinder$a;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/WithinAppServiceBinder$a;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/WithinAppServiceBinder;->e:Lcom/google/firebase/iid/WithinAppServiceBinder$a;

    return-void
.end method

.method static final synthetic lambda$send$0$WithinAppServiceBinder(Lcom/google/firebase/iid/d0$a;Le/i/b/b/d/h;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/iid/d0$a;->a()V

    return-void
.end method


# virtual methods
.method send(Lcom/google/firebase/iid/d0$a;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 3
    iget-object v0, p0, Lcom/google/firebase/iid/WithinAppServiceBinder;->e:Lcom/google/firebase/iid/WithinAppServiceBinder$a;

    .line 4
    iget-object v1, p1, Lcom/google/firebase/iid/d0$a;->a:Landroid/content/Intent;

    .line 5
    invoke-interface {v0, v1}, Lcom/google/firebase/iid/WithinAppServiceBinder$a;->a(Landroid/content/Intent;)Le/i/b/b/d/h;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/iid/h;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/google/firebase/iid/a0;

    invoke-direct {v2, p1}, Lcom/google/firebase/iid/a0;-><init>(Lcom/google/firebase/iid/d0$a;)V

    invoke-virtual {v0, v1, v2}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/c;)Le/i/b/b/d/h;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    .line 8
    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
