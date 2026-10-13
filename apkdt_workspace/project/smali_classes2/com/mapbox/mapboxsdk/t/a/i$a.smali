.class Lcom/mapbox/mapboxsdk/t/a/i$a;
.super Ljava/lang/Object;
.source "DraggableAnnotationController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/t/a/i;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/android/gestures/AndroidGesturesManager;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/mapbox/android/gestures/AndroidGesturesManager;

.field final synthetic f:Lcom/mapbox/mapboxsdk/t/a/i;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/t/a/i;Lcom/mapbox/android/gestures/AndroidGesturesManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/i$a;->f:Lcom/mapbox/mapboxsdk/t/a/i;

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/t/a/i$a;->e:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/i$a;->f:Lcom/mapbox/mapboxsdk/t/a/i;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/t/a/i;->a(Lcom/mapbox/mapboxsdk/t/a/i;)Lcom/mapbox/mapboxsdk/t/a/a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/i$a;->e:Lcom/mapbox/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0, p2}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a(Landroid/view/MotionEvent;)Z

    .line 3
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/t/a/i$a;->f:Lcom/mapbox/mapboxsdk/t/a/i;

    invoke-static {p2}, Lcom/mapbox/mapboxsdk/t/a/i;->a(Lcom/mapbox/mapboxsdk/t/a/i;)Lcom/mapbox/mapboxsdk/t/a/a;

    move-result-object p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
