.class Le/m/a/a/d/g;
.super Ljava/lang/Object;
.source "LocationEngineProxy.java"

# interfaces
.implements Le/m/a/a/d/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/m/a/a/d/c;"
    }
.end annotation


# instance fields
.field private final a:Le/m/a/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/a/d/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le/m/a/a/d/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/a/d/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/a/d/g;->a:Le/m/a/a/d/e;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    .line 10
    iget-object v0, p0, Le/m/a/a/d/g;->a:Le/m/a/a/d/e;

    invoke-interface {v0, p1}, Le/m/a/a/d/e;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public a(Le/m/a/a/d/d;)V
    .locals 1
    .param p1    # Le/m/a/a/d/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 1
    invoke-static {p1, v0}, Le/m/a/a/d/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/m/a/a/d/g;->a:Le/m/a/a/d/e;

    invoke-interface {v0, p1}, Le/m/a/a/d/e;->a(Le/m/a/a/d/d;)V

    return-void
.end method

.method public a(Le/m/a/a/d/h;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1    # Le/m/a/a/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "request == null"

    .line 8
    invoke-static {p1, v0}, Le/m/a/a/d/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Le/m/a/a/d/g;->a:Le/m/a/a/d/e;

    invoke-interface {v0, p1, p2}, Le/m/a/a/d/e;->a(Le/m/a/a/d/h;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public a(Le/m/a/a/d/h;Le/m/a/a/d/d;Landroid/os/Looper;)V
    .locals 1
    .param p1    # Le/m/a/a/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le/m/a/a/d/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/a/d/h;",
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    const-string v0, "request == null"

    .line 3
    invoke-static {p1, v0}, Le/m/a/a/d/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback == null"

    .line 4
    invoke-static {p2, v0}, Le/m/a/a/d/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Le/m/a/a/d/g;->a:Le/m/a/a/d/e;

    invoke-virtual {p0, p2}, Le/m/a/a/d/g;->c(Le/m/a/a/d/d;)Ljava/lang/Object;

    move-result-object p2

    if-nez p3, :cond_0

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    .line 7
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Le/m/a/a/d/e;->a(Le/m/a/a/d/h;Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method

.method public b(Le/m/a/a/d/d;)V
    .locals 1
    .param p1    # Le/m/a/a/d/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 1
    invoke-static {p1, v0}, Le/m/a/a/d/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/m/a/a/d/g;->a:Le/m/a/a/d/e;

    invoke-virtual {p0, p1}, Le/m/a/a/d/g;->d(Le/m/a/a/d/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Le/m/a/a/d/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method c(Le/m/a/a/d/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Le/m/a/a/d/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/a/d/g;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Le/m/a/a/d/g;->b:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/a/a/d/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/m/a/a/d/g;->a:Le/m/a/a/d/e;

    invoke-interface {v0, p1}, Le/m/a/a/d/e;->b(Le/m/a/a/d/d;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    :cond_1
    iget-object v1, p0, Le/m/a/a/d/g;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method d(Le/m/a/a/d/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Le/m/a/a/d/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/a/d/d<",
            "Le/m/a/a/d/i;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/a/d/g;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
