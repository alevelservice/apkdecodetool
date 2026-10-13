.class final Lcom/mapbox/mapboxsdk/maps/l;
.super Ljava/lang/Object;
.source "MapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/maps/l$i;,
        Lcom/mapbox/mapboxsdk/maps/l$g;,
        Lcom/mapbox/mapboxsdk/maps/l$e;,
        Lcom/mapbox/mapboxsdk/maps/l$f;,
        Lcom/mapbox/mapboxsdk/maps/l$d;,
        Lcom/mapbox/mapboxsdk/maps/l$h;
    }
.end annotation


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/maps/a0;

.field private final b:Lcom/mapbox/mapboxsdk/maps/w;

.field private final c:Lcom/mapbox/mapboxsdk/maps/b0;

.field private final d:Lcom/mapbox/mapboxsdk/maps/b;

.field private final e:Lcom/mapbox/mapboxsdk/maps/e;

.field private final f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/n$o;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/n$p;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/n$i;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/n$r;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/n$u;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/n$v;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/mapboxsdk/maps/n$w;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/graphics/PointF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Landroid/graphics/PointF;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

.field private p:Landroid/animation/Animator;

.field private q:Landroid/animation/Animator;

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private t:Z

.field private final u:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mapbox/mapboxsdk/maps/a0;Lcom/mapbox/mapboxsdk/maps/w;Lcom/mapbox/mapboxsdk/maps/b0;Lcom/mapbox/mapboxsdk/maps/b;Lcom/mapbox/mapboxsdk/maps/e;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->n:Landroid/graphics/PointF;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->r:Ljava/util/List;

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->s:Landroid/os/Handler;

    .line 12
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/l$a;

    invoke-direct {v0, p0}, Lcom/mapbox/mapboxsdk/maps/l$a;-><init>(Lcom/mapbox/mapboxsdk/maps/l;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->u:Ljava/lang/Runnable;

    .line 13
    iput-object p5, p0, Lcom/mapbox/mapboxsdk/maps/l;->d:Lcom/mapbox/mapboxsdk/maps/b;

    .line 14
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/l;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    .line 15
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/l;->b:Lcom/mapbox/mapboxsdk/maps/w;

    .line 16
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/maps/l;->c:Lcom/mapbox/mapboxsdk/maps/b0;

    .line 17
    iput-object p6, p0, Lcom/mapbox/mapboxsdk/maps/l;->e:Lcom/mapbox/mapboxsdk/maps/e;

    if-eqz p1, :cond_0

    .line 18
    new-instance p2, Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-direct {p2, p1}, Lcom/mapbox/android/gestures/AndroidGesturesManager;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 19
    invoke-direct {p0, p2, p3}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/android/gestures/AndroidGesturesManager;Z)V

    .line 20
    invoke-direct {p0, p1, p3}, Lcom/mapbox/mapboxsdk/maps/l;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private a(DDLandroid/graphics/PointF;J)Landroid/animation/Animator;
    .locals 3
    .param p5    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [F

    double-to-float v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    add-double/2addr p1, p3

    double-to-float p1, p1

    const/4 p2, 0x1

    aput p1, v0, p2

    .line 52
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 53
    invoke-virtual {p1, p6, p7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 54
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    new-instance p2, Lcom/mapbox/mapboxsdk/maps/l$b;

    invoke-direct {p2, p0, p5}, Lcom/mapbox/mapboxsdk/maps/l$b;-><init>(Lcom/mapbox/mapboxsdk/maps/l;Landroid/graphics/PointF;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    new-instance p2, Lcom/mapbox/mapboxsdk/maps/l$c;

    invoke-direct {p2, p0}, Lcom/mapbox/mapboxsdk/maps/l$c;-><init>(Lcom/mapbox/mapboxsdk/maps/l;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/maps/l;DDLandroid/graphics/PointF;J)Landroid/animation/Animator;
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p7}, Lcom/mapbox/mapboxsdk/maps/l;->a(DDLandroid/graphics/PointF;J)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/maps/l;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->p:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/maps/l;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->n:Landroid/graphics/PointF;

    return-object p1
.end method

.method private a(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v8, p0

    if-eqz p2, :cond_0

    .line 5
    new-instance v9, Lcom/mapbox/mapboxsdk/maps/l$h;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/android/gestures/j;->mapbox_defaultScaleSpanSinceStartThreshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {v9, p0, v0}, Lcom/mapbox/mapboxsdk/maps/l$h;-><init>(Lcom/mapbox/mapboxsdk/maps/l;F)V

    .line 7
    new-instance v10, Lcom/mapbox/mapboxsdk/maps/l$d;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/mapbox/mapboxsdk/maps/l$d;-><init>(Lcom/mapbox/mapboxsdk/maps/l;Lcom/mapbox/mapboxsdk/maps/l$a;)V

    .line 8
    new-instance v12, Lcom/mapbox/mapboxsdk/maps/l$f;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/i;->mapbox_density_constant:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v2, v0

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/i;->mapbox_minimum_scale_speed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/i;->mapbox_minimum_angled_scale_speed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/i;->mapbox_minimum_scale_velocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mapbox/mapboxsdk/maps/l$f;-><init>(Lcom/mapbox/mapboxsdk/maps/l;DFFF)V

    .line 13
    new-instance v13, Lcom/mapbox/mapboxsdk/maps/l$e;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/i;->mapbox_minimum_scale_span_when_rotating:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/i;->mapbox_density_constant:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v3, v0

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/i;->mapbox_angular_velocity_multiplier:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/mapboxsdk/i;->mapbox_minimum_angular_velocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mapbox/android/gestures/j;->mapbox_defaultScaleSpanSinceStartThreshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    move-object v0, v13

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/mapbox/mapboxsdk/maps/l$e;-><init>(Lcom/mapbox/mapboxsdk/maps/l;FDFFF)V

    .line 19
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/l$g;

    invoke-direct {v0, p0, v11}, Lcom/mapbox/mapboxsdk/maps/l$g;-><init>(Lcom/mapbox/mapboxsdk/maps/l;Lcom/mapbox/mapboxsdk/maps/l$a;)V

    .line 20
    new-instance v1, Lcom/mapbox/mapboxsdk/maps/l$i;

    invoke-direct {v1, p0, v11}, Lcom/mapbox/mapboxsdk/maps/l$i;-><init>(Lcom/mapbox/mapboxsdk/maps/l;Lcom/mapbox/mapboxsdk/maps/l$a;)V

    .line 21
    iget-object v2, v8, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {v2, v9}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a(Lcom/mapbox/android/gestures/n$c;)V

    .line 22
    iget-object v2, v8, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {v2, v10}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a(Lcom/mapbox/android/gestures/c$a;)V

    .line 23
    iget-object v2, v8, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {v2, v12}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a(Lcom/mapbox/android/gestures/o$c;)V

    .line 24
    iget-object v2, v8, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {v2, v13}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a(Lcom/mapbox/android/gestures/k$a;)V

    .line 25
    iget-object v2, v8, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {v2, v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a(Lcom/mapbox/android/gestures/l$a;)V

    .line 26
    iget-object v0, v8, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0, v1}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a(Lcom/mapbox/android/gestures/f$a;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/mapbox/android/gestures/AndroidGesturesManager;Z)V
    .locals 6
    .param p1    # Lcom/mapbox/android/gestures/AndroidGesturesManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 27
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x3

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x6

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array v0, v0, [Ljava/util/Set;

    const/4 v5, 0x0

    aput-object p2, v0, v5

    aput-object v2, v0, v1

    aput-object v4, v0, v3

    .line 36
    invoke-virtual {p1, v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a([Ljava/util/Set;)V

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    .line 38
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {p1}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->d()Lcom/mapbox/android/gestures/k;

    move-result-object p1

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p1, p2}, Lcom/mapbox/android/gestures/k;->b(F)V

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/maps/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/l;->d()V

    return-void
.end method

.method private a(ZLandroid/graphics/PointF;Z)V
    .locals 9
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->p:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/l;->a(Landroid/animation/Animator;)V

    .line 59
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->f()D

    move-result-wide v2

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v4, v0

    const-wide/16 v7, 0x12c

    move-object v1, p0

    move-object v6, p2

    .line 60
    invoke-direct/range {v1 .. v8}, Lcom/mapbox/mapboxsdk/maps/l;->a(DDLandroid/graphics/PointF;J)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->p:Landroid/animation/Animator;

    if-eqz p3, :cond_1

    .line 61
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->p:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->p:Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->b(Landroid/animation/Animator;)V

    :goto_1
    return-void
.end method

.method private b(Landroid/animation/Animator;)V
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->s:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->s:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->u:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/maps/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/l;->e()V

    return-void
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/maps/l;Landroid/animation/Animator;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->b(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic c(Lcom/mapbox/mapboxsdk/maps/l;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->q:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic c(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/android/gestures/AndroidGesturesManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    return-object p0
.end method

.method static synthetic d(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/animation/Animator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/l;->p:Landroid/animation/Animator;

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/l;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->a()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/animation/Animator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/l;->q:Landroid/animation/Animator;

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/l;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->h()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->e:Lcom/mapbox/mapboxsdk/maps/e;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/e;->e()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/l;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->t:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b()Lcom/mapbox/android/gestures/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mapbox/android/gestures/i;->a(Z)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->t:Z

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/l;->d:Lcom/mapbox/mapboxsdk/maps/b;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b()Lcom/mapbox/android/gestures/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapbox/android/gestures/i;->a(Z)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->t:Z

    return-void
.end method

.method static synthetic h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/l;->c:Lcom/mapbox/mapboxsdk/maps/b0;

    return-object p0
.end method

.method private h()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->c:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b()Lcom/mapbox/android/gestures/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/i;->o()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->c:Lcom/mapbox/mapboxsdk/maps/b0;

    .line 3
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->f()Lcom/mapbox/android/gestures/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/i;->o()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->c:Lcom/mapbox/mapboxsdk/maps/b0;

    .line 4
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->d()Lcom/mapbox/android/gestures/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/i;->o()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->c:Lcom/mapbox/mapboxsdk/maps/b0;

    .line 5
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->N()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->e()Lcom/mapbox/android/gestures/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/i;->o()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic i(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/l;->n:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic j(Lcom/mapbox/mapboxsdk/maps/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/l;->g()V

    return-void
.end method

.method static synthetic k(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/l;->m:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic l(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/l;->e:Lcom/mapbox/mapboxsdk/maps/e;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->p:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/l;->a(Landroid/animation/Animator;)V

    .line 42
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->q:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/maps/l;->a(Landroid/animation/Animator;)V

    .line 43
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/l;->e()V

    return-void
.end method

.method a(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;ZZ)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/android/gestures/AndroidGesturesManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    invoke-direct {p0, p2, p4}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/android/gestures/AndroidGesturesManager;Z)V

    .line 79
    invoke-direct {p0, p1, p3}, Lcom/mapbox/mapboxsdk/maps/l;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method a(Landroid/graphics/PointF;)V
    .locals 3
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$o;

    .line 64
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/l;->b:Lcom/mapbox/mapboxsdk/maps/w;

    invoke-virtual {v2, p1}, Lcom/mapbox/mapboxsdk/maps/w;->a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mapbox/mapboxsdk/maps/n$o;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method a(Landroid/graphics/PointF;Z)V
    .locals 1
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 57
    invoke-direct {p0, v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/l;->a(ZLandroid/graphics/PointF;Z)V

    return-void
.end method

.method a(Lcom/mapbox/android/gestures/c;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$r;

    .line 66
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/n$r;->a(Lcom/mapbox/android/gestures/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lcom/mapbox/android/gestures/k;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$u;

    .line 68
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/n$u;->a(Lcom/mapbox/android/gestures/k;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lcom/mapbox/android/gestures/l;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$w;

    .line 72
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/n$w;->a(Lcom/mapbox/android/gestures/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lcom/mapbox/android/gestures/o;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$v;

    .line 70
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/n$v;->b(Lcom/mapbox/android/gestures/o;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/maps/n$i;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/maps/n$o;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/maps/n$p;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/maps/n$r;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/maps/n$u;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return v2

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->c:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->O()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->a()V

    const/16 v0, 0x9

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/l;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    float-to-double v2, v0

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/mapbox/mapboxsdk/maps/a0;->b(DLandroid/graphics/PointF;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method b()Lcom/mapbox/android/gestures/AndroidGesturesManager;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    return-object v0
.end method

.method b(Landroid/graphics/PointF;)V
    .locals 3
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$p;

    .line 25
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/l;->b:Lcom/mapbox/mapboxsdk/maps/w;

    invoke-virtual {v2, p1}, Lcom/mapbox/mapboxsdk/maps/w;->a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mapbox/mapboxsdk/maps/n$p;->b(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method b(Landroid/graphics/PointF;Z)V
    .locals 1
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0, p1, p2}, Lcom/mapbox/mapboxsdk/maps/l;->a(ZLandroid/graphics/PointF;Z)V

    return-void
.end method

.method b(Lcom/mapbox/android/gestures/c;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$r;

    .line 27
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/n$r;->c(Lcom/mapbox/android/gestures/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(Lcom/mapbox/android/gestures/k;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$u;

    .line 29
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/n$u;->c(Lcom/mapbox/android/gestures/k;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(Lcom/mapbox/android/gestures/l;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$w;

    .line 33
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/n$w;->b(Lcom/mapbox/android/gestures/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(Lcom/mapbox/android/gestures/o;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$v;

    .line 31
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/n$v;->c(Lcom/mapbox/android/gestures/o;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(Lcom/mapbox/mapboxsdk/maps/n$o;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lcom/mapbox/mapboxsdk/maps/n$p;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-eq v1, v2, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/l;->a()V

    .line 6
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/l;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v1, v2}, Lcom/mapbox/mapboxsdk/maps/a0;->b(Z)V

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/l;->o:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {v1, p1}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/l;->f()V

    goto :goto_1

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 11
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/a0;->b(Z)V

    .line 12
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/l;->f()V

    goto :goto_1

    .line 13
    :cond_5
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/l;->f()V

    .line 14
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/a0;->b(Z)V

    .line 15
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->s:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 18
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_7
    :goto_1
    return v1
.end method

.method c()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$i;

    .line 7
    invoke-interface {v1}, Lcom/mapbox/mapboxsdk/maps/n$i;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method c(Landroid/graphics/PointF;)V
    .locals 1
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->c:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->m()Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->c:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/b0;->m()Landroid/graphics/PointF;

    move-result-object p1

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l;->m:Landroid/graphics/PointF;

    return-void
.end method

.method c(Lcom/mapbox/android/gestures/c;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$r;

    .line 9
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/n$r;->b(Lcom/mapbox/android/gestures/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method c(Lcom/mapbox/android/gestures/k;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$u;

    .line 11
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/n$u;->b(Lcom/mapbox/android/gestures/k;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method c(Lcom/mapbox/android/gestures/l;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$w;

    .line 15
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/n$w;->c(Lcom/mapbox/android/gestures/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method c(Lcom/mapbox/android/gestures/o;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/maps/n$v;

    .line 13
    invoke-interface {v1, p1}, Lcom/mapbox/mapboxsdk/maps/n$v;->a(Lcom/mapbox/android/gestures/o;)V

    goto :goto_0

    :cond_0
    return-void
.end method
