.class final Lg/c/a/a/b/c$a;
.super Lg/c/a/b/g$b;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/a/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final e:Landroid/os/Handler;

.field private final f:Z

.field private volatile g:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/c/a/b/g$b;-><init>()V

    .line 2
    iput-object p1, p0, Lg/c/a/a/b/c$a;->e:Landroid/os/Handler;

    .line 3
    iput-boolean p2, p0, Lg/c/a/a/b/c$a;->f:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lg/c/a/c/c;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p4, :cond_3

    .line 1
    iget-boolean v0, p0, Lg/c/a/a/b/c$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lg/c/a/c/b;->a()Lg/c/a/c/c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lg/c/a/h/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 4
    new-instance v0, Lg/c/a/a/b/c$b;

    iget-object v1, p0, Lg/c/a/a/b/c$a;->e:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lg/c/a/a/b/c$b;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lg/c/a/a/b/c$a;->e:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 6
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-boolean v1, p0, Lg/c/a/a/b/c$a;->f:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 9
    :cond_1
    iget-object v1, p0, Lg/c/a/a/b/c$a;->e:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10
    iget-boolean p1, p0, Lg/c/a/a/b/c$a;->g:Z

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lg/c/a/a/b/c$a;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    invoke-static {}, Lg/c/a/c/b;->a()Lg/c/a/c/c;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "run == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lg/c/a/a/b/c$a;->g:Z

    .line 2
    iget-object v0, p0, Lg/c/a/a/b/c$a;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
