.class Lcom/mapbox/mapboxsdk/location/e0;
.super Ljava/lang/Object;
.source "StaleStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/location/e0$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Lcom/mapbox/mapboxsdk/location/b0;

.field private final c:Lcom/mapbox/mapboxsdk/location/e0$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private d:Z

.field private e:J


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/location/b0;Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/e0;->d:Z

    .line 3
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/e0;->b:Lcom/mapbox/mapboxsdk/location/b0;

    .line 4
    new-instance p1, Lcom/mapbox/mapboxsdk/location/e0$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/mapbox/mapboxsdk/location/e0$b;-><init>(Lcom/mapbox/mapboxsdk/location/e0;Lcom/mapbox/mapboxsdk/location/e0$a;)V

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/e0;->c:Lcom/mapbox/mapboxsdk/location/e0$b;

    .line 5
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->o()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/e0;->a:Z

    .line 6
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->J()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/location/e0;->e:J

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/location/e0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/e0;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/e0;->d:Z

    if-eq p1, v0, :cond_0

    .line 3
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/e0;->d:Z

    .line 4
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/e0;->a:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/e0;->b:Lcom/mapbox/mapboxsdk/location/b0;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/location/b0;->a(Z)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/e0;->c:Lcom/mapbox/mapboxsdk/location/e0$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/e0;->c:Lcom/mapbox/mapboxsdk/location/e0$b;

    iget-wide v1, p0, Lcom/mapbox/mapboxsdk/location/e0;->e:J

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/e0;->d:Z

    if-nez v0, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/e0;->d()V

    :cond_0
    return-void
.end method

.method a(J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/location/e0;->e:J

    .line 8
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/e0;->c:Lcom/mapbox/mapboxsdk/location/e0$b;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/e0;->d()V

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/e0;->d:Z

    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/e0;->b(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/e0;->a:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/e0;->b()V

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/e0;->b:Lcom/mapbox/mapboxsdk/location/b0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/location/b0;->a(Z)V

    .line 6
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/e0;->a:Z

    return-void
.end method

.method b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/e0;->c:Lcom/mapbox/mapboxsdk/location/e0$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/mapbox/mapboxsdk/location/e0;->b(Z)V

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/e0;->d()V

    return-void
.end method
