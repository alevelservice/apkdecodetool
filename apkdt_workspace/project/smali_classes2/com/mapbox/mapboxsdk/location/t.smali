.class Lcom/mapbox/mapboxsdk/location/t;
.super Ljava/lang/Object;
.source "MapboxAnimatorSetProvider.java"


# static fields
.field private static a:Lcom/mapbox/mapboxsdk/location/t;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/mapbox/mapboxsdk/location/t;
    .locals 1

    .line 1
    sget-object v0, Lcom/mapbox/mapboxsdk/location/t;->a:Lcom/mapbox/mapboxsdk/location/t;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/location/t;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/location/t;-><init>()V

    sput-object v0, Lcom/mapbox/mapboxsdk/location/t;->a:Lcom/mapbox/mapboxsdk/location/t;

    .line 3
    :cond_0
    sget-object v0, Lcom/mapbox/mapboxsdk/location/t;->a:Lcom/mapbox/mapboxsdk/location/t;

    return-object v0
.end method


# virtual methods
.method a(Ljava/util/List;Landroid/view/animation/Interpolator;J)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/animation/Interpolator;",
            "J)V"
        }
    .end annotation

    .line 4
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    invoke-virtual {v0, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 8
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
