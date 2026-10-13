.class public Lcom/mapbox/android/gestures/AndroidGesturesManager;
.super Ljava/lang/Object;
.source "AndroidGesturesManager.java"


# annotations
.annotation build Landroidx/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/gestures/AndroidGesturesManager$GestureType;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/android/gestures/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/mapbox/android/gestures/n;

.field private final d:Lcom/mapbox/android/gestures/o;

.field private final e:Lcom/mapbox/android/gestures/k;

.field private final f:Lcom/mapbox/android/gestures/l;

.field private final g:Lcom/mapbox/android/gestures/f;

.field private final h:Lcom/mapbox/android/gestures/c;

.field private final i:Lcom/mapbox/android/gestures/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;Z)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b:Ljava/util/List;

    .line 6
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    new-instance p2, Lcom/mapbox/android/gestures/k;

    invoke-direct {p2, p1, p0}, Lcom/mapbox/android/gestures/k;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    iput-object p2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->e:Lcom/mapbox/android/gestures/k;

    .line 8
    new-instance p2, Lcom/mapbox/android/gestures/o;

    invoke-direct {p2, p1, p0}, Lcom/mapbox/android/gestures/o;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    iput-object p2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->d:Lcom/mapbox/android/gestures/o;

    .line 9
    new-instance p2, Lcom/mapbox/android/gestures/l;

    invoke-direct {p2, p1, p0}, Lcom/mapbox/android/gestures/l;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    iput-object p2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->f:Lcom/mapbox/android/gestures/l;

    .line 10
    new-instance p2, Lcom/mapbox/android/gestures/m;

    invoke-direct {p2, p1, p0}, Lcom/mapbox/android/gestures/m;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    iput-object p2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->i:Lcom/mapbox/android/gestures/m;

    .line 11
    new-instance p2, Lcom/mapbox/android/gestures/f;

    invoke-direct {p2, p1, p0}, Lcom/mapbox/android/gestures/f;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    iput-object p2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->g:Lcom/mapbox/android/gestures/f;

    .line 12
    new-instance p2, Lcom/mapbox/android/gestures/c;

    invoke-direct {p2, p1, p0}, Lcom/mapbox/android/gestures/c;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    iput-object p2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->h:Lcom/mapbox/android/gestures/c;

    .line 13
    new-instance p2, Lcom/mapbox/android/gestures/n;

    invoke-direct {p2, p1, p0}, Lcom/mapbox/android/gestures/n;-><init>(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V

    iput-object p2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->c:Lcom/mapbox/android/gestures/n;

    .line 14
    iget-object p1, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b:Ljava/util/List;

    iget-object p2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->e:Lcom/mapbox/android/gestures/k;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b:Ljava/util/List;

    iget-object p2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->d:Lcom/mapbox/android/gestures/o;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b:Ljava/util/List;

    iget-object p2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->f:Lcom/mapbox/android/gestures/l;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b:Ljava/util/List;

    iget-object p2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->i:Lcom/mapbox/android/gestures/m;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b:Ljava/util/List;

    iget-object p2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->g:Lcom/mapbox/android/gestures/f;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p1, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b:Ljava/util/List;

    iget-object p2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->h:Lcom/mapbox/android/gestures/c;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b:Ljava/util/List;

    iget-object p2, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->c:Lcom/mapbox/android/gestures/n;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->g()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/mapbox/android/gestures/AndroidGesturesManager;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method private g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/android/gestures/a;

    .line 2
    instance-of v2, v1, Lcom/mapbox/android/gestures/e;

    if-eqz v2, :cond_2

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_1

    .line 4
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/gestures/e;

    sget v3, Lcom/mapbox/android/gestures/j;->mapbox_internalMinSpan23:I

    invoke-virtual {v2, v3}, Lcom/mapbox/android/gestures/e;->b(I)V

    goto :goto_1

    .line 5
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/gestures/e;

    sget v3, Lcom/mapbox/android/gestures/j;->mapbox_internalMinSpan24:I

    invoke-virtual {v2, v3}, Lcom/mapbox/android/gestures/e;->b(I)V

    .line 6
    :cond_2
    :goto_1
    instance-of v2, v1, Lcom/mapbox/android/gestures/o;

    if-eqz v2, :cond_3

    .line 7
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/gestures/o;

    sget v3, Lcom/mapbox/android/gestures/j;->mapbox_defaultScaleSpanSinceStartThreshold:I

    invoke-virtual {v2, v3}, Lcom/mapbox/android/gestures/o;->c(I)V

    .line 8
    :cond_3
    instance-of v2, v1, Lcom/mapbox/android/gestures/l;

    const/high16 v3, 0x41a00000    # 20.0f

    if-eqz v2, :cond_4

    .line 9
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/gestures/l;

    sget v4, Lcom/mapbox/android/gestures/j;->mapbox_defaultShovePixelThreshold:I

    invoke-virtual {v2, v4}, Lcom/mapbox/android/gestures/l;->c(I)V

    .line 10
    invoke-virtual {v2, v3}, Lcom/mapbox/android/gestures/l;->b(F)V

    .line 11
    :cond_4
    instance-of v2, v1, Lcom/mapbox/android/gestures/m;

    if-eqz v2, :cond_5

    .line 12
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/gestures/m;

    sget v4, Lcom/mapbox/android/gestures/j;->mapbox_defaultShovePixelThreshold:I

    invoke-virtual {v2, v4}, Lcom/mapbox/android/gestures/m;->c(I)V

    .line 13
    invoke-virtual {v2, v3}, Lcom/mapbox/android/gestures/m;->b(F)V

    .line 14
    :cond_5
    instance-of v2, v1, Lcom/mapbox/android/gestures/f;

    if-eqz v2, :cond_6

    .line 15
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/gestures/f;

    sget v3, Lcom/mapbox/android/gestures/j;->mapbox_defaultMultiTapMovementThreshold:I

    invoke-virtual {v2, v3}, Lcom/mapbox/android/gestures/f;->c(I)V

    const-wide/16 v3, 0x96

    .line 16
    invoke-virtual {v2, v3, v4}, Lcom/mapbox/android/gestures/f;->a(J)V

    .line 17
    :cond_6
    instance-of v2, v1, Lcom/mapbox/android/gestures/k;

    if-eqz v2, :cond_0

    .line 18
    check-cast v1, Lcom/mapbox/android/gestures/k;

    const v2, 0x4174cccd    # 15.3f

    invoke-virtual {v1, v2}, Lcom/mapbox/android/gestures/k;->b(F)V

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/android/gestures/a;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/mapbox/android/gestures/c$a;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->h:Lcom/mapbox/android/gestures/c;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/gestures/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/mapbox/android/gestures/f$a;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->g:Lcom/mapbox/android/gestures/f;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/gestures/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/mapbox/android/gestures/k$a;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->e:Lcom/mapbox/android/gestures/k;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/gestures/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/mapbox/android/gestures/l$a;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->f:Lcom/mapbox/android/gestures/l;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/gestures/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/mapbox/android/gestures/n$c;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->c:Lcom/mapbox/android/gestures/n;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/gestures/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/mapbox/android/gestures/o$c;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->d:Lcom/mapbox/android/gestures/o;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/gestures/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final varargs a([Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 10
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/android/gestures/a;

    .line 2
    invoke-virtual {v2, p1}, Lcom/mapbox/android/gestures/a;->b(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public b()Lcom/mapbox/android/gestures/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->h:Lcom/mapbox/android/gestures/c;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Lcom/mapbox/android/gestures/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->e:Lcom/mapbox/android/gestures/k;

    return-object v0
.end method

.method public e()Lcom/mapbox/android/gestures/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->f:Lcom/mapbox/android/gestures/l;

    return-object v0
.end method

.method public f()Lcom/mapbox/android/gestures/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/gestures/AndroidGesturesManager;->d:Lcom/mapbox/android/gestures/o;

    return-object v0
.end method
