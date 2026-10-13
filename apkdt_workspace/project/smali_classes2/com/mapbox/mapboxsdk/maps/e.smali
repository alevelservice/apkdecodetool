.class Lcom/mapbox/mapboxsdk/maps/e;
.super Ljava/lang/Object;
.source "CameraChangeDispatcher.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/n$f;
.implements Lcom/mapbox/mapboxsdk/maps/n$e;
.implements Lcom/mapbox/mapboxsdk/maps/n$d;
.implements Lcom/mapbox/mapboxsdk/maps/n$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/maps/e$a;
    }
.end annotation


# instance fields
.field private final e:Lcom/mapbox/mapboxsdk/maps/e$a;

.field private f:Z

.field private g:I

.field private final h:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/n$f;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/n$d;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/n$e;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/n$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/e$a;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/e$a;-><init>(Lcom/mapbox/mapboxsdk/maps/e;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->e:Lcom/mapbox/mapboxsdk/maps/e$a;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->f:Z

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/maps/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/e;->h()V

    return-void
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/maps/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/e;->f()V

    return-void
.end method

.method static synthetic c(Lcom/mapbox/mapboxsdk/maps/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/e;->g()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->f:Z

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$c;

    .line 6
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/n$c;->e()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/mapbox/mapboxsdk/maps/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/e;->d()V

    return-void
.end method

.method static synthetic e(Lcom/mapbox/mapboxsdk/maps/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mapbox/mapboxsdk/maps/e;->f:Z

    return p0
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$e;

    .line 3
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/n$e;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$d;

    .line 3
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/n$d;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->f:Z

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$f;

    .line 5
    iget v2, p0, Lcom/mapbox/mapboxsdk/maps/e;->g:I

    invoke-interface {v1, v2}, Lcom/mapbox/mapboxsdk/maps/n$f;->c(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->e:Lcom/mapbox/mapboxsdk/maps/e$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/e$a;->a(I)V

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/maps/n$c;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/maps/n$e;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/maps/n$f;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->e:Lcom/mapbox/mapboxsdk/maps/e$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/e$a;->a(I)V

    return-void
.end method

.method b(Lcom/mapbox/mapboxsdk/maps/n$c;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method b(Lcom/mapbox/mapboxsdk/maps/n$e;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method b(Lcom/mapbox/mapboxsdk/maps/n$f;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method c()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->e:Lcom/mapbox/mapboxsdk/maps/e$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/mapbox/mapboxsdk/maps/e;->g:I

    .line 3
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/e;->e:Lcom/mapbox/mapboxsdk/maps/e$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/e$a;->a(I)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/e;->e:Lcom/mapbox/mapboxsdk/maps/e$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/e$a;->a(I)V

    return-void
.end method
