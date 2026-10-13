.class Lcom/mapbox/mapboxsdk/maps/MapView$i;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/n$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/maps/MapView;


# direct methods
.method private constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$i;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/MapView$i;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/mapbox/android/gestures/AndroidGesturesManager;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$i;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$1000(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/l;->b()Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/mapbox/android/gestures/AndroidGesturesManager;ZZ)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$i;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$1000(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/l;

    move-result-object v0

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/MapView$i;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    .line 8
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/mapbox/mapboxsdk/maps/l;->a(Landroid/content/Context;Lcom/mapbox/android/gestures/AndroidGesturesManager;ZZ)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/n$i;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$i;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$1000(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/mapboxsdk/maps/n$i;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/n$o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$i;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$1000(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->b(Lcom/mapbox/mapboxsdk/maps/n$o;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/n$p;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$i;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$1000(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/mapboxsdk/maps/n$p;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/n$r;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$i;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$1000(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/mapboxsdk/maps/n$r;)V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/maps/n$u;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$i;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$1000(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/mapboxsdk/maps/n$u;)V

    return-void
.end method

.method public b(Lcom/mapbox/mapboxsdk/maps/n$o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$i;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$1000(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/mapboxsdk/maps/n$o;)V

    return-void
.end method

.method public b(Lcom/mapbox/mapboxsdk/maps/n$p;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/MapView$i;->a:Lcom/mapbox/mapboxsdk/maps/MapView;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/MapView;->access$1000(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/maps/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->b(Lcom/mapbox/mapboxsdk/maps/n$p;)V

    return-void
.end method
