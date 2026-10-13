.class public Le/a/a/a/a/f;
.super Le/a/a/a/a/a;
.source "SyncDispatcher.java"


# direct methods
.method public constructor <init>(Le/a/a/a/a/a;Le/a/a/a/k;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/a/a/a/a/a;-><init>(Le/a/a/a/a/a;Le/a/a/a/k;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public a(Le/a/a/a/h;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Le/a/a/a/h;->c()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Le/a/a/a/c/a;Le/a/a/a/h;)Le/a/a/a/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/a/a/a/a;->c(Le/a/a/a/c/a;Le/a/a/a/h;)Le/a/a/a/f;

    move-result-object p1

    return-object p1
.end method
