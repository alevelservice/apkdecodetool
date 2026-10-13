.class Le/a/a/a/a/e$a;
.super Landroid/os/Handler;
.source "MainDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Le/a/a/a/a/e;


# direct methods
.method public constructor <init>(Le/a/a/a/a/e;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/a/a/e$a;->a:Le/a/a/a/a/e;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    :cond_0
    :goto_0
    iget-object p1, p0, Le/a/a/a/a/e$a;->a:Le/a/a/a/a/e;

    invoke-static {p1}, Le/a/a/a/a/e;->a(Le/a/a/a/a/e;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Le/a/a/a/a/e$a;->a:Le/a/a/a/a/e;

    invoke-static {p1}, Le/a/a/a/a/e;->a(Le/a/a/a/a/e;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/a/a/g;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/a/a/a/e$a;->a:Le/a/a/a/a/e;

    iget-object v1, p1, Le/a/a/a/a/g;->event:Le/a/a/a/c/a;

    iget-object p1, p1, Le/a/a/a/a/g;->subscriber:Le/a/a/a/h;

    invoke-virtual {v0, v1, p1}, Le/a/a/a/a/a;->c(Le/a/a/a/c/a;Le/a/a/a/h;)Le/a/a/a/f;

    goto :goto_0

    :cond_1
    return-void
.end method
