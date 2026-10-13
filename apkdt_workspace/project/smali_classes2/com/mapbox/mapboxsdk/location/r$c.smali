.class Lcom/mapbox/mapboxsdk/location/r$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MapboxAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/location/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic e:Lcom/mapbox/mapboxsdk/location/r;


# direct methods
.method private constructor <init>(Lcom/mapbox/mapboxsdk/location/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/r$c;->e:Lcom/mapbox/mapboxsdk/location/r;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapbox/mapboxsdk/location/r;Lcom/mapbox/mapboxsdk/location/r$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/r$c;-><init>(Lcom/mapbox/mapboxsdk/location/r;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/r$c;->e:Lcom/mapbox/mapboxsdk/location/r;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/r;->a(Lcom/mapbox/mapboxsdk/location/r;)V

    return-void
.end method
