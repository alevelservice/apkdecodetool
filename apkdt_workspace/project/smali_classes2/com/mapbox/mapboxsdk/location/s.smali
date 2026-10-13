.class final Lcom/mapbox/mapboxsdk/location/s;
.super Ljava/lang/Object;
.source "MapboxAnimatorProvider.java"


# static fields
.field private static a:Lcom/mapbox/mapboxsdk/location/s;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mapbox/mapboxsdk/location/s;
    .locals 1

    .line 1
    sget-object v0, Lcom/mapbox/mapboxsdk/location/s;->a:Lcom/mapbox/mapboxsdk/location/s;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/location/s;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/location/s;-><init>()V

    sput-object v0, Lcom/mapbox/mapboxsdk/location/s;->a:Lcom/mapbox/mapboxsdk/location/s;

    .line 3
    :cond_0
    sget-object v0, Lcom/mapbox/mapboxsdk/location/s;->a:Lcom/mapbox/mapboxsdk/location/s;

    return-object v0
.end method


# virtual methods
.method a(Lcom/mapbox/mapboxsdk/location/r$b;IFFLandroid/view/animation/Interpolator;)Lcom/mapbox/mapboxsdk/location/d0;
    .locals 1

    .line 6
    new-instance v0, Lcom/mapbox/mapboxsdk/location/d0;

    invoke-direct {v0, p1, p2, p4}, Lcom/mapbox/mapboxsdk/location/d0;-><init>(Lcom/mapbox/mapboxsdk/location/r$b;IF)V

    float-to-long p1, p3

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p1, 0x1

    .line 8
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 p1, -0x1

    .line 9
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 10
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method a([Ljava/lang/Float;Lcom/mapbox/mapboxsdk/location/r$b;I)Lcom/mapbox/mapboxsdk/location/u;
    .locals 1

    .line 5
    new-instance v0, Lcom/mapbox/mapboxsdk/location/u;

    invoke-direct {v0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/location/u;-><init>([Ljava/lang/Float;Lcom/mapbox/mapboxsdk/location/r$b;I)V

    return-object v0
.end method

.method a([Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/location/r$b;I)Lcom/mapbox/mapboxsdk/location/v;
    .locals 1

    .line 4
    new-instance v0, Lcom/mapbox/mapboxsdk/location/v;

    invoke-direct {v0, p1, p2, p3}, Lcom/mapbox/mapboxsdk/location/v;-><init>([Lcom/mapbox/mapboxsdk/geometry/LatLng;Lcom/mapbox/mapboxsdk/location/r$b;I)V

    return-object v0
.end method
